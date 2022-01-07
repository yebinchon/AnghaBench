; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_usbpn_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_usbpn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbpn_dev = type { i32, i32, %struct.urb**, %struct.TYPE_6__* }
%struct.urb = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@rxq_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @usbpn_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpn_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbpn_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.usbpn_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.usbpn_dev* %8, %struct.usbpn_dev** %3, align 8
  %9 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %10 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %45, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @rxq_size, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %25 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %24, i32 0, i32 2
  %26 = load %struct.urb**, %struct.urb*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.urb*, %struct.urb** %26, i64 %28
  %30 = load %struct.urb*, %struct.urb** %29, align 8
  store %struct.urb* %30, %struct.urb** %6, align 8
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = call i32 @usb_kill_urb(%struct.urb* %35)
  %37 = load %struct.urb*, %struct.urb** %6, align 8
  %38 = call i32 @usb_free_urb(%struct.urb* %37)
  %39 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %40 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %39, i32 0, i32 2
  %41 = load %struct.urb**, %struct.urb*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.urb*, %struct.urb** %41, i64 %43
  store %struct.urb* null, %struct.urb** %44, align 8
  br label %45

45:                                               ; preds = %34, %33
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %50 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %54 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @usb_set_interface(i32 %51, i32 %52, i32 %58)
  ret i32 %59
}

declare dso_local %struct.usbpn_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
