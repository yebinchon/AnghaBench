; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_unlink_all_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_unlink_all_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.urb* }
%struct.urb = type { i32 }

@PCAN_USB_MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.peak_usb_device*)* @peak_usb_unlink_all_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peak_usb_unlink_all_urbs(%struct.peak_usb_device* %0) #0 {
  %2 = alloca %struct.peak_usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %2, align 8
  %5 = load %struct.peak_usb_device*, %struct.peak_usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %5, i32 0, i32 3
  %7 = call i32 @usb_kill_anchored_urbs(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %45, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PCAN_USB_MAX_TX_URBS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.peak_usb_device*, %struct.peak_usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.urb*, %struct.urb** %19, align 8
  store %struct.urb* %20, %struct.urb** %4, align 8
  %21 = load %struct.urb*, %struct.urb** %4, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.peak_usb_device*, %struct.peak_usb_device** %2, align 8
  %25 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCAN_USB_MAX_TX_URBS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23, %12
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = call i32 @usb_free_urb(%struct.urb* %36)
  %38 = load %struct.peak_usb_device*, %struct.peak_usb_device** %2, align 8
  %39 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.urb* null, %struct.urb** %44, align 8
  br label %45

45:                                               ; preds = %35, %34
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %8

48:                                               ; preds = %8
  %49 = load %struct.peak_usb_device*, %struct.peak_usb_device** %2, align 8
  %50 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %49, i32 0, i32 1
  %51 = call i32 @usb_kill_anchored_urbs(i32* %50)
  %52 = load %struct.peak_usb_device*, %struct.peak_usb_device** %2, align 8
  %53 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %52, i32 0, i32 0
  %54 = call i32 @atomic_set(i32* %53, i32 0)
  ret void
}

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
