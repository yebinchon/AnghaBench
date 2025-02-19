; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, %struct.usb_usbvision*, i32, i64 }

@DBG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_usbvision*)* @usbvision_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvision_release(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %3 = load i32, i32* @DBG_PROBE, align 4
  %4 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %6 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 4
  %9 = call i32 @usbvision_remove_sysfs(i32* %8)
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %11 = call i32 @usbvision_unregister_video(%struct.usb_usbvision* %10)
  %12 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %13 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %12, i32 0, i32 3
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %13, align 8
  %15 = call i32 @kfree(%struct.usb_usbvision* %14)
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %17 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_free_urb(i32 %18)
  %20 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %21 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %20, i32 0, i32 1
  %22 = call i32 @v4l2_ctrl_handler_free(i32* %21)
  %23 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %24 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %23, i32 0, i32 0
  %25 = call i32 @v4l2_device_unregister(i32* %24)
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %27 = call i32 @kfree(%struct.usb_usbvision* %26)
  %28 = load i32, i32* @DBG_PROBE, align 4
  %29 = call i32 @PDEBUG(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @usbvision_remove_sysfs(i32*) #1

declare dso_local i32 @usbvision_unregister_video(%struct.usb_usbvision*) #1

declare dso_local i32 @kfree(%struct.usb_usbvision*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
