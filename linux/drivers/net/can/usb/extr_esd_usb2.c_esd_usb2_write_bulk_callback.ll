; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, %struct.esd_tx_urb_context* }
%struct.esd_tx_urb_context = type { %struct.esd_usb2_net_priv* }
%struct.esd_usb2_net_priv = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Tx URB aborted (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @esd_usb2_write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esd_usb2_write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.esd_tx_urb_context*, align 8
  %4 = alloca %struct.esd_usb2_net_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 4
  %9 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  store %struct.esd_tx_urb_context* %9, %struct.esd_tx_urb_context** %3, align 8
  store i64 4, i64* %6, align 8
  %10 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %3, align 8
  %11 = icmp ne %struct.esd_tx_urb_context* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %3, align 8
  %16 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %15, i32 0, i32 0
  %17 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %16, align 8
  store %struct.esd_usb2_net_priv* %17, %struct.esd_usb2_net_priv** %4, align 8
  %18 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %19 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_free_coherent(i32 %23, i64 %24, i32 %27, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @netif_device_present(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %50

36:                                               ; preds = %1
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netdev_info(%struct.net_device* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netif_trans_update(%struct.net_device* %48)
  br label %50

50:                                               ; preds = %47, %35
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i64, i32, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
