; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { %struct.TYPE_3__, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_3__ = type { i32* }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USBVISION_URB_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_usbvision* (%struct.usb_device*, %struct.usb_interface*)* @usbvision_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_usbvision* @usbvision_alloc(%struct.usb_device* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.usb_usbvision* @kzalloc(i32 32, i32 %7)
  store %struct.usb_usbvision* %8, %struct.usb_usbvision** %6, align 8
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %10 = icmp ne %struct.usb_usbvision* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.usb_usbvision* null, %struct.usb_usbvision** %3, align 8
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %15 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %14, i32 0, i32 4
  store %struct.usb_device* %13, %struct.usb_device** %15, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %19 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %18, i32 0, i32 0
  %20 = call i64 @v4l2_device_register(i32* %17, %struct.TYPE_3__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %57

23:                                               ; preds = %12
  %24 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %25 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %24, i32 0, i32 1
  %26 = call i64 @v4l2_ctrl_handler_init(i32* %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %50

29:                                               ; preds = %23
  %30 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %31 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %30, i32 0, i32 1
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %33 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %36 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load i32, i32* @USBVISION_URB_FRAMES, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @usb_alloc_urb(i32 %38, i32 %39)
  %41 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %42 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %44 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  br label %50

48:                                               ; preds = %29
  %49 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  store %struct.usb_usbvision* %49, %struct.usb_usbvision** %3, align 8
  br label %60

50:                                               ; preds = %47, %28
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 1
  %53 = call i32 @v4l2_ctrl_handler_free(i32* %52)
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 0
  %56 = call i32 @v4l2_device_unregister(%struct.TYPE_3__* %55)
  br label %57

57:                                               ; preds = %50, %22
  %58 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %59 = call i32 @kfree(%struct.usb_usbvision* %58)
  store %struct.usb_usbvision* null, %struct.usb_usbvision** %3, align 8
  br label %60

60:                                               ; preds = %57, %48, %11
  %61 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  ret %struct.usb_usbvision* %61
}

declare dso_local %struct.usb_usbvision* @kzalloc(i32, i32) #1

declare dso_local i64 @v4l2_device_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.usb_usbvision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
