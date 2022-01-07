; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hdpvr_video_info = type { i32, i32, i32, i32 }

@STATUS_STREAMING = common dso_local global i64 0, align 8
@STATUS_IDLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no video signal at input %d\0A\00", align 1
@MSG_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"video signal: %dx%d@%dhz\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"encoder start control request returned %d\0A\00", align 1
@CTRL_START_STREAMING_VALUE = common dso_local global i32 0, align 4
@hdpvr_transmit_buffers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"streaming started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @hdpvr_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_start_streaming(%struct.hdpvr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdpvr_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdpvr_video_info, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %3, align 8
  %6 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %7 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STATUS_STREAMING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

12:                                               ; preds = %1
  %13 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %14 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATUS_IDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %99

21:                                               ; preds = %12
  %22 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %23 = call i32 @get_video_info(%struct.hdpvr_device* %22, %struct.hdpvr_video_info* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %99

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %5, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = call i32 @msleep(i32 250)
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load i32, i32* @hdpvr_debug, align 4
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %37 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %36, i32 0, i32 1
  %38 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %39 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %34, i32 %35, i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %28
  %46 = load i32, i32* @MSG_BUFFER, align 4
  %47 = load i32, i32* @hdpvr_debug, align 4
  %48 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %49 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %46, i32 %47, i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53, i32 %55)
  %57 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %58 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %61 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_sndctrlpipe(i32 %62, i32 0)
  %64 = call i32 @usb_control_msg(i32 %59, i32 %63, i32 184, i32 56, i32 1, i32 0, i32* null, i32 0, i32 8000)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @MSG_BUFFER, align 4
  %66 = load i32, i32* @hdpvr_debug, align 4
  %67 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %68 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %67, i32 0, i32 1
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %65, i32 %66, i32* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %45
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %99

75:                                               ; preds = %45
  %76 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %77 = load i32, i32* @CTRL_START_STREAMING_VALUE, align 4
  %78 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %76, i32 %77, i32 0)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %99

83:                                               ; preds = %75
  %84 = load i64, i64* @STATUS_STREAMING, align 8
  %85 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %86 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %88 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %87, i32 0, i32 2
  %89 = load i32, i32* @hdpvr_transmit_buffers, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %92 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %91, i32 0, i32 2
  %93 = call i32 @schedule_work(i32* %92)
  %94 = load i32, i32* @MSG_BUFFER, align 4
  %95 = load i32, i32* @hdpvr_debug, align 4
  %96 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %97 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %96, i32 0, i32 1
  %98 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %94, i32 %95, i32* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %83, %81, %73, %32, %26, %18, %11
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @get_video_info(%struct.hdpvr_device*, %struct.hdpvr_video_info*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
