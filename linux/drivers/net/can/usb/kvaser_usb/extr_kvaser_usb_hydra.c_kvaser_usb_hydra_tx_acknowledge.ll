; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_tx_acknowledge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_tx_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i64 }
%struct.kvaser_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.kvaser_usb_tx_urb_context = type { i64, i32 }
%struct.kvaser_usb_net_priv = type { i32, %struct.TYPE_8__*, i32, %struct.kvaser_usb_tx_urb_context* }
%struct.TYPE_8__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.kvaser_cmd_ext = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CMD_EXTENDED = common dso_local global i64 0, align 8
@KVASER_USB_HYDRA_CF_FLAG_OSM_NACK = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CF_FLAG_ABL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_tx_acknowledge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_tx_acknowledge(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_tx_urb_context*, align 8
  %6 = alloca %struct.kvaser_usb_net_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvaser_cmd_ext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device_stats*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %14 = call i64 @kvaser_usb_hydra_get_cmd_transid(%struct.kvaser_cmd* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %16 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %17 = call %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb* %15, %struct.kvaser_cmd* %16)
  store %struct.kvaser_usb_net_priv* %17, %struct.kvaser_usb_net_priv** %6, align 8
  %18 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %19 = icmp ne %struct.kvaser_usb_net_priv* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %23 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @netif_device_present(%struct.TYPE_8__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %114

28:                                               ; preds = %21
  %29 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CMD_EXTENDED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %37 = bitcast %struct.kvaser_cmd* %36 to %struct.kvaser_cmd_ext*
  store %struct.kvaser_cmd_ext* %37, %struct.kvaser_cmd_ext** %10, align 8
  %38 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %10, align 8
  %39 = getelementptr inbounds %struct.kvaser_cmd_ext, %struct.kvaser_cmd_ext* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @KVASER_USB_HYDRA_CF_FLAG_OSM_NACK, align 4
  %45 = load i32, i32* @KVASER_USB_HYDRA_CF_FLAG_ABL, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %51 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %10, align 8
  %52 = call i32 @kvaser_usb_hydra_one_shot_fail(%struct.kvaser_usb_net_priv* %50, %struct.kvaser_cmd_ext* %51)
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %35
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %56 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %55, i32 0, i32 3
  %57 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %60 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = urem i64 %58, %61
  %63 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %57, i64 %62
  store %struct.kvaser_usb_tx_urb_context* %63, %struct.kvaser_usb_tx_urb_context** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %54
  %67 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %68 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store %struct.net_device_stats* %70, %struct.net_device_stats** %12, align 8
  %71 = load %struct.net_device_stats*, %struct.net_device_stats** %12, align 8
  %72 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %5, align 8
  %76 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @can_dlc2len(i32 %77)
  %79 = load %struct.net_device_stats*, %struct.net_device_stats** %12, align 8
  %80 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  br label %85

85:                                               ; preds = %66, %54
  %86 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %87 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %86, i32 0, i32 0
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %91 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %5, align 8
  %94 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @can_get_echo_skb(%struct.TYPE_8__* %92, i64 %95)
  %97 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %98 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %5, align 8
  %101 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %103 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %107 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @netif_wake_queue(%struct.TYPE_8__* %108)
  %110 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %6, align 8
  %111 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  br label %114

114:                                              ; preds = %85, %27, %20
  ret void
}

declare dso_local i64 @kvaser_usb_hydra_get_cmd_transid(%struct.kvaser_cmd*) #1

declare dso_local %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @netif_device_present(%struct.TYPE_8__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kvaser_usb_hydra_one_shot_fail(%struct.kvaser_usb_net_priv*, %struct.kvaser_cmd_ext*) #1

declare dso_local i64 @can_dlc2len(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_get_echo_skb(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
