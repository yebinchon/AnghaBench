; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_start_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_start_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { i32, %struct.cx18_stream* }
%struct.cx18_stream = type { i64, i32, i32, i32 }

@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CX18_F_S_STREAMOFF = common dso_local global i32 0, align 4
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@CX18_F_S_APPL_IO = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX18_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IDX capture start failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"IDX capture started\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"VBI capture start failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"VBI insertion started\0A\00", align 1
@CX18_F_I_ENC_PAUSED = common dso_local global i32 0, align 4
@CX18_CPU_CAPTURE_PAUSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to start capturing for stream %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_start_capture(%struct.cx18_open_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18_open_id*, align 8
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.cx18_stream*, align 8
  %6 = alloca %struct.cx18_stream*, align 8
  %7 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_open_id* %0, %struct.cx18_open_id** %3, align 8
  %8 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %9 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %8, i32 0, i32 1
  %10 = load %struct.cx18*, %struct.cx18** %9, align 8
  store %struct.cx18* %10, %struct.cx18** %4, align 8
  %11 = load %struct.cx18*, %struct.cx18** %4, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 1
  %13 = load %struct.cx18_stream*, %struct.cx18_stream** %12, align 8
  %14 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %15 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %13, i64 %16
  store %struct.cx18_stream* %17, %struct.cx18_stream** %5, align 8
  %18 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %19 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %193

26:                                               ; preds = %1
  %27 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %29 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @cx18_claim_stream(%struct.cx18_open_id* %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %193

36:                                               ; preds = %26
  %37 = load i32, i32* @CX18_F_S_STREAMOFF, align 4
  %38 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %39 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %38, i32 0, i32 1
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %44 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %45 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %44, i32 0, i32 1
  %46 = call i64 @test_and_set_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @CX18_F_S_APPL_IO, align 4
  %50 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %51 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  store i32 0, i32* %2, align 4
  br label %193

53:                                               ; preds = %42
  %54 = load %struct.cx18*, %struct.cx18** %4, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 1
  %56 = load %struct.cx18_stream*, %struct.cx18_stream** %55, align 8
  %57 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %58 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %56, i64 %57
  store %struct.cx18_stream* %58, %struct.cx18_stream** %6, align 8
  %59 = load %struct.cx18*, %struct.cx18** %4, align 8
  %60 = getelementptr inbounds %struct.cx18, %struct.cx18* %59, i32 0, i32 1
  %61 = load %struct.cx18_stream*, %struct.cx18_stream** %60, align 8
  %62 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %63 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %61, i64 %62
  store %struct.cx18_stream* %63, %struct.cx18_stream** %7, align 8
  %64 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %65 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %53
  %70 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %71 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %72 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %77 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %78 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %77, i32 0, i32 1
  %79 = call i64 @test_and_set_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %83 = call i64 @cx18_start_v4l2_encode_stream(%struct.cx18_stream* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @CX18_DEBUG_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %89 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %88, i32 0, i32 1
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  br label %141

91:                                               ; preds = %81
  %92 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %75, %69
  %94 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %95 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %96 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %95, i32 0, i32 1
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %93
  %100 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %101 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %102 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %101, i32 0, i32 1
  %103 = call i64 @test_and_set_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %107 = call i64 @cx18_start_v4l2_encode_stream(%struct.cx18_stream* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @CX18_DEBUG_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %112 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %113 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %112, i32 0, i32 1
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  br label %141

115:                                              ; preds = %105
  %116 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %99, %93
  br label %118

118:                                              ; preds = %117, %53
  %119 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %120 = call i64 @cx18_start_v4l2_encode_stream(%struct.cx18_stream* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @CX18_F_S_APPL_IO, align 4
  %124 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %125 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %124, i32 0, i32 1
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  %127 = load i32, i32* @CX18_F_I_ENC_PAUSED, align 4
  %128 = load %struct.cx18*, %struct.cx18** %4, align 8
  %129 = getelementptr inbounds %struct.cx18, %struct.cx18* %128, i32 0, i32 0
  %130 = call i64 @test_and_clear_bit(i32 %127, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.cx18*, %struct.cx18** %4, align 8
  %134 = load i32, i32* @CX18_CPU_CAPTURE_PAUSE, align 4
  %135 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %136 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @cx18_vapi(%struct.cx18* %133, i32 %134, i32 1, i32 %137)
  br label %139

139:                                              ; preds = %132, %122
  store i32 0, i32* %2, align 4
  br label %193

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140, %109, %85
  %142 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %143 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @CX18_DEBUG_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %147 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %184

151:                                              ; preds = %141
  %152 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %153 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %154 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %153, i32 0, i32 1
  %155 = call i64 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %159 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %158, i32 0)
  %160 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %161 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %162 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %161, i32 0, i32 1
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  br label %164

164:                                              ; preds = %157, %151
  %165 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %166 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %167 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %166, i32 0, i32 1
  %168 = call i64 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load i32, i32* @CX18_F_S_APPL_IO, align 4
  %172 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %173 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %172, i32 0, i32 1
  %174 = call i64 @test_bit(i32 %171, i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %170
  %177 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %178 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %177, i32 0)
  %179 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %180 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %181 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %180, i32 0, i32 1
  %182 = call i32 @clear_bit(i32 %179, i32* %181)
  br label %183

183:                                              ; preds = %176, %170, %164
  br label %184

184:                                              ; preds = %183, %141
  %185 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %186 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %187 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %186, i32 0, i32 1
  %188 = call i32 @clear_bit(i32 %185, i32* %187)
  %189 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %190 = call i32 @cx18_release_stream(%struct.cx18_stream* %189)
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %184, %139, %48, %33, %23
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i64 @cx18_claim_stream(%struct.cx18_open_id*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cx18_start_v4l2_encode_stream(%struct.cx18_stream*) #1

declare dso_local i32 @CX18_DEBUG_WARN(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream*, i32) #1

declare dso_local i32 @cx18_release_stream(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
