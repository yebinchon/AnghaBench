; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_start_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_start_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i64, i32, i32 }

@IVTV_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_VOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_F_S_APPL_IO = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"VBI capture start failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"VBI insertion started\0A\00", align 1
@IVTV_F_I_ENC_PAUSED = common dso_local global i32 0, align 4
@CX2341X_ENC_PAUSE_ENCODER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to start capturing for stream %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_start_capture(%struct.ivtv_open_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv_open_id*, align 8
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca %struct.ivtv_stream*, align 8
  %6 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv_open_id* %0, %struct.ivtv_open_id** %3, align 8
  %7 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %8 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %7, i32 0, i32 1
  %9 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  store %struct.ivtv* %9, %struct.ivtv** %4, align 8
  %10 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 1
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %12, i64 %15
  store %struct.ivtv_stream* %16, %struct.ivtv_stream** %5, align 8
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IVTV_ENC_STREAM_TYPE_RAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %1
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %30 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VOUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28, %22, %1
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %175

43:                                               ; preds = %34
  %44 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %45 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %46 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @ivtv_claim_stream(%struct.ivtv_open_id* %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %175

53:                                               ; preds = %43
  %54 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %55 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %61 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %62 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  store i32 0, i32* %2, align 4
  br label %175

64:                                               ; preds = %53
  %65 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 1
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %72 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %73 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %72, i32 0, i32 1
  %74 = call i64 @test_and_set_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70, %64
  %77 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %78 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %79 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %78, i32 0, i32 1
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  store i32 0, i32* %2, align 4
  br label %175

81:                                               ; preds = %70
  %82 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %83 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %82, i32 0, i32 1
  %84 = load %struct.ivtv_stream*, %struct.ivtv_stream** %83, align 8
  %85 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %86 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %84, i64 %85
  store %struct.ivtv_stream* %86, %struct.ivtv_stream** %6, align 8
  %87 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %88 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %81
  %93 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %94 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %95 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %94, i32 0, i32 1
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %92
  %99 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %100 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %100, i32 0, i32 1
  %102 = call i64 @test_and_set_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %98
  %105 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %106 = call i64 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %111 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %112 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %111, i32 0, i32 1
  %113 = call i32 @clear_bit(i32 %110, i32* %112)
  %114 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %115 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %116 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %115, i32 0, i32 1
  %117 = call i32 @clear_bit(i32 %114, i32* %116)
  %118 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %119 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %175

122:                                              ; preds = %104
  %123 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %98, %92, %81
  %125 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %126 = call i64 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %130 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %131 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %130, i32 0, i32 1
  %132 = call i32 @set_bit(i32 %129, i32* %131)
  %133 = load i32, i32* @IVTV_F_I_ENC_PAUSED, align 4
  %134 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %135 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %134, i32 0, i32 0
  %136 = call i64 @test_and_clear_bit(i32 %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %140 = load i32, i32* @CX2341X_ENC_PAUSE_ENCODER, align 4
  %141 = call i32 @ivtv_vapi(%struct.ivtv* %139, i32 %140, i32 1, i32 1)
  br label %142

142:                                              ; preds = %138, %128
  store i32 0, i32* %2, align 4
  br label %175

143:                                              ; preds = %124
  %144 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %145 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %149 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %143
  %154 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %155 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %156 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %155, i32 0, i32 1
  %157 = call i64 @test_bit(i32 %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %161 = call i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream* %160, i32 0)
  %162 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %163 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %164 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %163, i32 0, i32 1
  %165 = call i32 @clear_bit(i32 %162, i32* %164)
  br label %166

166:                                              ; preds = %159, %153, %143
  %167 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %168 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %169 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %168, i32 0, i32 1
  %170 = call i32 @clear_bit(i32 %167, i32* %169)
  %171 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %172 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %166, %142, %108, %76, %59, %50, %40
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i64 @ivtv_claim_stream(%struct.ivtv_open_id*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_release_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
