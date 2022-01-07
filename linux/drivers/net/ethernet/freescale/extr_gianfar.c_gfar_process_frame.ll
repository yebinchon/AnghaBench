; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_process_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.gfar_private = type { i64, i64, i64 }
%struct.rxfcb = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@GMAC_FCB_LEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RXFCB_VLN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @gfar_process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_process_frame(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca %struct.rxfcb*, align 8
  %7 = alloca %struct.skb_shared_hwtstamps*, align 8
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %9)
  store %struct.gfar_private* %10, %struct.gfar_private** %5, align 8
  store %struct.rxfcb* null, %struct.rxfcb** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rxfcb*
  store %struct.rxfcb* %14, %struct.rxfcb** %6, align 8
  %15 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %16 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i64, i64* @GMAC_FCB_LEN, align 8
  %22 = call i32 @skb_pull(%struct.sk_buff* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %25 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %29)
  store %struct.skb_shared_hwtstamps* %30, %struct.skb_shared_hwtstamps** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %7, align 8
  %36 = call i32 @memset(%struct.skb_shared_hwtstamps* %35, i32 0, i32 4)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = call i32 @ns_to_ktime(i32 %39)
  %41 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %7, align 8
  %42 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %28, %23
  %44 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %51 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @skb_pull(%struct.sk_buff* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETH_FCS_LEN, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i32 @pskb_trim(%struct.sk_buff* %55, i64 %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.rxfcb*, %struct.rxfcb** %6, align 8
  %71 = call i32 @gfar_rx_checksum(%struct.sk_buff* %69, %struct.rxfcb* %70)
  br label %72

72:                                               ; preds = %68, %54
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.rxfcb*, %struct.rxfcb** %6, align 8
  %81 = getelementptr inbounds %struct.rxfcb, %struct.rxfcb* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be16_to_cpu(i32 %82)
  %84 = load i32, i32* @RXFCB_VLN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load i32, i32* @ETH_P_8021Q, align 4
  %90 = call i32 @htons(i32 %89)
  %91 = load %struct.rxfcb*, %struct.rxfcb** %6, align 8
  %92 = getelementptr inbounds %struct.rxfcb, %struct.rxfcb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be16_to_cpu(i32 %93)
  %95 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %88, i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %87, %79, %72
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @gfar_rx_checksum(%struct.sk_buff*, %struct.rxfcb*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
