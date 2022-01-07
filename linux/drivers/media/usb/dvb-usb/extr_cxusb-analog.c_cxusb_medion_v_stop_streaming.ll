; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_4__*, %struct.cxusb_medion_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.cxusb_medion_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i64*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"should stop streaming\0A\00", align 1
@CMD_STREAMING_OFF = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to stop stream (%d)\0A\00", align 1
@CXUSB_VIDEO_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @cxusb_medion_v_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_medion_v_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = call %struct.dvb_usb_device* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 1
  %11 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %10, align 8
  store %struct.cxusb_medion_dev* %11, %struct.cxusb_medion_dev** %4, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %13 = load i32, i32* @OPS, align 4
  %14 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %12, i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %23 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %25 = load i32, i32* @CMD_STREAMING_OFF, align 4
  %26 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %24, i32 %25, i32* null, i32 0, i32* null, i32 0)
  %27 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %28 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @video, align 4
  %31 = load i32, i32* @s_stream, align 4
  %32 = call i32 @v4l2_subdev_call(i32 %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %21
  %43 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %44 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mutex_unlock(i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %72, %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CXUSB_VIDEO_URBS, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %55 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %54, i32 0, i32 4
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %64 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %63, i32 0, i32 4
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @usb_kill_urb(i64 %69)
  br label %71

71:                                               ; preds = %62, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %49

75:                                               ; preds = %49
  %76 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %77 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %76, i32 0, i32 3
  %78 = call i32 @flush_work(i32* %77)
  %79 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %80 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mutex_lock(i32 %83)
  %85 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %86 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vfree(i32 %88)
  %90 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %91 = call i32 @cxusb_medion_urbs_free(%struct.cxusb_medion_dev* %90)
  %92 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %93 = call i32 @cxusb_medion_return_buffers(%struct.cxusb_medion_dev* %92, i32 0)
  %94 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %95 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %75, %20
  ret void
}

declare dso_local %struct.dvb_usb_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @cxusb_medion_urbs_free(%struct.cxusb_medion_dev*) #1

declare dso_local i32 @cxusb_medion_return_buffers(%struct.cxusb_medion_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
