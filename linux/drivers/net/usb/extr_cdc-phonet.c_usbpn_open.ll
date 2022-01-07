; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_usbpn_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_usbpn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbpn_dev = type { %struct.urb**, i32, i32, %struct.TYPE_6__* }
%struct.urb = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@rxq_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @usbpn_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpn_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usbpn_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.usbpn_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.usbpn_dev* %10, %struct.usbpn_dev** %4, align 8
  %11 = load %struct.usbpn_dev*, %struct.usbpn_dev** %4, align 8
  %12 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.usbpn_dev*, %struct.usbpn_dev** %4, align 8
  %20 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.usbpn_dev*, %struct.usbpn_dev** %4, align 8
  %24 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_set_interface(i32 %21, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %62, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @rxq_size, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %37)
  store %struct.urb* %38, %struct.urb** %8, align 8
  %39 = load %struct.urb*, %struct.urb** %8, align 8
  %40 = icmp ne %struct.urb* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.usbpn_dev*, %struct.usbpn_dev** %4, align 8
  %43 = load %struct.urb*, %struct.urb** %8, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i64 @rx_submit(%struct.usbpn_dev* %42, %struct.urb* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %36
  %48 = load %struct.urb*, %struct.urb** %8, align 8
  %49 = call i32 @usb_free_urb(%struct.urb* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @usbpn_close(%struct.net_device* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %68

54:                                               ; preds = %41
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = load %struct.usbpn_dev*, %struct.usbpn_dev** %4, align 8
  %57 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %56, i32 0, i32 0
  %58 = load %struct.urb**, %struct.urb*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.urb*, %struct.urb** %58, i64 %60
  store %struct.urb* %55, %struct.urb** %61, align 8
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_wake_queue(%struct.net_device* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %47, %29
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.usbpn_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @rx_submit(%struct.usbpn_dev*, %struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usbpn_close(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
