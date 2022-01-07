; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_passthrough_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_passthrough_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, i32, i32, i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@IVTV_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ivtv ioctl: Select passthrough mode\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IVTV_F_S_PASSTHROUGH = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@CX2341X_DEC_START_PLAYBACK = common dso_local global i32 0, align 4
@CX2341X_ENC_START_CAPTURE = common dso_local global i32 0, align 4
@CX2341X_ENC_STOP_CAPTURE = common dso_local global i32 0, align 4
@CX2341X_DEC_STOP_PLAYBACK = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_passthrough_mode(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 4
  %10 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %11 = load i64, i64* @IVTV_ENC_STREAM_TYPE_YUV, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %10, i64 %11
  store %struct.ivtv_stream* %12, %struct.ivtv_stream** %6, align 8
  %13 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 4
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %16 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i64 %16
  store %struct.ivtv_stream* %17, %struct.ivtv_stream** %7, align 8
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %127

32:                                               ; preds = %23
  %33 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %127

43:                                               ; preds = %36
  %44 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %45 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %46 = call i64 @ivtv_set_output_mode(%struct.ivtv* %44, i64 %45)
  %47 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %127

52:                                               ; preds = %43
  %53 = load i32, i32* @IVTV_F_S_PASSTHROUGH, align 4
  %54 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %55 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %58 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %59 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %62 = call i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream* %61)
  %63 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %64 = load i32, i32* @CX2341X_DEC_START_PLAYBACK, align 4
  %65 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %63, i32 %64, i32 2, i32 0, i32 1)
  %66 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 3
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 2
  %71 = call i64 @atomic_read(i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %52
  %74 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 1
  %76 = call i32 @cx2341x_handler_setup(i32* %75)
  %77 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %78 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %77, i32 0, i32 1
  %79 = call i32 @cx2341x_handler_set_busy(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %73, %52
  %81 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %82 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %83 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %81, i32 %82, i32 2, i32 2, i32 11)
  %84 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %85 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %84, i32 0, i32 2
  %86 = call i32 @atomic_inc(i32* %85)
  store i32 0, i32* %3, align 4
  br label %127

87:                                               ; preds = %32
  %88 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %89 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %127

94:                                               ; preds = %87
  %95 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %96 = load i32, i32* @CX2341X_ENC_STOP_CAPTURE, align 4
  %97 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %95, i32 %96, i32 3, i32 1, i32 2, i32 11)
  %98 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %99 = load i32, i32* @CX2341X_DEC_STOP_PLAYBACK, align 4
  %100 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %98, i32 %99, i32 3, i32 1, i32 0, i32 0)
  %101 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %102 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %101, i32 0, i32 2
  %103 = call i32 @atomic_dec(i32* %102)
  %104 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 3
  %106 = call i32 @atomic_dec(i32* %105)
  %107 = load i32, i32* @IVTV_F_S_PASSTHROUGH, align 4
  %108 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %109 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %108, i32 0, i32 0
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  %111 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %112 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %113 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %112, i32 0, i32 0
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  %115 = load i64, i64* @OUT_NONE, align 8
  %116 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %117 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %119 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %118, i32 0, i32 2
  %120 = call i64 @atomic_read(i32* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %94
  %123 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %124 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %123, i32 0, i32 1
  %125 = call i32 @cx2341x_handler_set_busy(i32* %124, i32 0)
  br label %126

126:                                              ; preds = %122, %94
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %93, %80, %49, %42, %29
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i64 @ivtv_set_output_mode(%struct.ivtv*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx2341x_handler_setup(i32*) #1

declare dso_local i32 @cx2341x_handler_set_busy(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
