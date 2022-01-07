; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_tx_done_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_tx_done_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esd_usb2_net_priv = type { i32, %struct.esd_tx_urb_context*, %struct.net_device* }
%struct.esd_tx_urb_context = type { i32, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esd_usb2_net_priv*, %struct.esd_usb2_msg*)* @esd_usb2_tx_done_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esd_usb2_tx_done_msg(%struct.esd_usb2_net_priv* %0, %struct.esd_usb2_msg* %1) #0 {
  %3 = alloca %struct.esd_usb2_net_priv*, align 8
  %4 = alloca %struct.esd_usb2_msg*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.esd_tx_urb_context*, align 8
  store %struct.esd_usb2_net_priv* %0, %struct.esd_usb2_net_priv** %3, align 8
  store %struct.esd_usb2_msg* %1, %struct.esd_usb2_msg** %4, align 8
  %8 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %9 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %5, align 8
  %12 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %13 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32 @netif_device_present(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %21 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %20, i32 0, i32 1
  %22 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %21, align 8
  %23 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %24 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_TX_URBS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %22, i64 %31
  store %struct.esd_tx_urb_context* %32, %struct.esd_tx_urb_context** %7, align 8
  %33 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %34 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %19
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %7, align 8
  %45 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %7, align 8
  %55 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @can_get_echo_skb(%struct.net_device* %53, i32 %56)
  br label %68

58:                                               ; preds = %19
  %59 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %60 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %7, align 8
  %65 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @can_free_echo_skb(%struct.net_device* %63, i32 %66)
  br label %68

68:                                               ; preds = %58, %39
  %69 = load i32, i32* @MAX_TX_URBS, align 4
  %70 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %7, align 8
  %71 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %73 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %72, i32 0, i32 0
  %74 = call i32 @atomic_dec(i32* %73)
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i32 @netif_wake_queue(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %68, %18
  ret void
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
