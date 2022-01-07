; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.peak_usb_device*, %struct.urb*, i32*)* }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCAN_USB_MAX_CMD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*)* @peak_usb_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peak_usb_restart(%struct.peak_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  %7 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.peak_usb_device*, %struct.urb*, i32*)*, i32 (%struct.peak_usb_device*, %struct.urb*, i32*)** %10, align 8
  %12 = icmp ne i32 (%struct.peak_usb_device*, %struct.urb*, i32*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %15 = call i32 @peak_usb_restart_complete(%struct.peak_usb_device* %14)
  store i32 0, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %4, align 8
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %16
  %25 = load i32, i32* @PCAN_USB_MAX_CMD_LEN, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32* @kmalloc(i32 %25, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.urb*, %struct.urb** %4, align 8
  %32 = call i32 @usb_free_urb(%struct.urb* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %24
  %36 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %37 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.peak_usb_device*, %struct.urb*, i32*)*, i32 (%struct.peak_usb_device*, %struct.urb*, i32*)** %39, align 8
  %41 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %42 = load %struct.urb*, %struct.urb** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 %40(%struct.peak_usb_device* %41, %struct.urb* %42, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %54

48:                                               ; preds = %35
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.urb*, %struct.urb** %4, align 8
  %52 = call i32 @usb_free_urb(%struct.urb* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %47, %30, %21, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @peak_usb_restart_complete(%struct.peak_usb_device*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
