; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_configure_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_configure_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i64 }
%struct.usb_usbvision = type { i32, double, i32, i64, i32, i32, i64, i32 }

@usbvision_v4l2_format = common dso_local global i32* null, align 8
@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_usbvision*)* @usbvision_configure_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvision_configure_video(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %4 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %5 = icmp ne %struct.usb_usbvision* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %77

7:                                                ; preds = %1
  %8 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %9 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** @usbvision_v4l2_format, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %15 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %17 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %18 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %27 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %28 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %35 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %34, i32 0, i32 6
  store i64 %33, i64* %35, align 8
  br label %39

36:                                               ; preds = %7
  %37 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %38 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %47 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %59 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %58, i32 0, i32 1
  store double 1.400000e+06, double* %59, align 8
  %60 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %61 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %60, i32 0, i32 2
  store i32 6400, i32* %61, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %71 = call i32 @usbvision_audio_off(%struct.usb_usbvision* %70)
  br label %72

72:                                               ; preds = %69, %39
  %73 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %74 = call i32 @usbvision_power_on(%struct.usb_usbvision* %73)
  %75 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %76 = call i32 @usbvision_i2c_register(%struct.usb_usbvision* %75)
  br label %77

77:                                               ; preds = %72, %6
  ret void
}

declare dso_local i32 @usbvision_audio_off(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_power_on(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_i2c_register(%struct.usb_usbvision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
