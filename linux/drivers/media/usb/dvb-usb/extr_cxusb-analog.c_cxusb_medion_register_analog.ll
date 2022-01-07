; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_register_analog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_register_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_4__*, %struct.cxusb_medion_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.cxusb_medion_dev = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@cxusb_medion_v4l2_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"V4L2 device registration failed, ret = %d\0A\00", align 1
@cxusb_medion_v_complete_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxusb_medion_register_analog(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %6, i32 0, i32 1
  %8 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  store %struct.cxusb_medion_dev* %8, %struct.cxusb_medion_dev** %4, align 8
  %9 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %9, i32 0, i32 7
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %12, i32 0, i32 2
  %14 = call i32 @init_completion(i32* %13)
  %15 = load i32, i32* @cxusb_medion_v4l2_release, align 4
  %16 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %17 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %24 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %23, i32 0, i32 3
  %25 = call i32 @v4l2_device_register(i32* %22, %struct.TYPE_5__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %35, i32 0, i32 7
  %37 = call i32 @mutex_destroy(i32* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %82

39:                                               ; preds = %1
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %41 = call i32 @cxusb_medion_register_analog_subdevs(%struct.dvb_usb_device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %74

45:                                               ; preds = %39
  %46 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %47 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %46, i32 0, i32 6
  %48 = load i32, i32* @cxusb_medion_v_complete_work, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %51 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %54 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %53, i32 0, i32 0
  store i32 320, i32* %54, align 4
  %55 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %56 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %55, i32 0, i32 1
  store i32 240, i32* %56, align 4
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %58 = call i32 @cxusb_medion_register_analog_video(%struct.dvb_usb_device* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %74

62:                                               ; preds = %45
  %63 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %64 = call i32 @cxusb_medion_register_analog_radio(%struct.dvb_usb_device* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %82

69:                                               ; preds = %67
  %70 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %71 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @video_unregister_device(i32 %72)
  br label %74

74:                                               ; preds = %69, %61, %44
  %75 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %76 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %75, i32 0, i32 3
  %77 = call i32 @v4l2_device_put(%struct.TYPE_5__* %76)
  %78 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %79 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %78, i32 0, i32 2
  %80 = call i32 @wait_for_completion(i32* %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %74, %68, %28
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @cxusb_medion_register_analog_subdevs(%struct.dvb_usb_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cxusb_medion_register_analog_video(%struct.dvb_usb_device*) #1

declare dso_local i32 @cxusb_medion_register_analog_radio(%struct.dvb_usb_device*) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @v4l2_device_put(%struct.TYPE_5__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
