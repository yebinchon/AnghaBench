; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32, %struct.enetc_bdr** }
%struct.enetc_bdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENETC_MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ENETC_TXBDS_MAX_NEEDED = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.enetc_ndev_priv*, align 8
  %7 = alloca %struct.enetc_bdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.enetc_ndev_priv* %10, %struct.enetc_ndev_priv** %6, align 8
  %11 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %12 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %11, i32 0, i32 1
  %13 = load %struct.enetc_bdr**, %struct.enetc_bdr*** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.enetc_bdr*, %struct.enetc_bdr** %13, i64 %16
  %18 = load %struct.enetc_bdr*, %struct.enetc_bdr** %17, align 8
  store %struct.enetc_bdr* %18, %struct.enetc_bdr** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ENETC_MAX_SKB_FRAGS, align 4
  %24 = icmp sgt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_linearize(%struct.sk_buff* %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %80

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load %struct.enetc_bdr*, %struct.enetc_bdr** %7, align 8
  %42 = call i64 @enetc_bd_unused(%struct.enetc_bdr* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ENETC_TXBDS_NEEDED(i32 %43)
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load %struct.enetc_bdr*, %struct.enetc_bdr** %7, align 8
  %49 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netif_stop_subqueue(%struct.net_device* %47, i32 %50)
  %52 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %52, i32* %3, align 4
  br label %84

53:                                               ; preds = %35
  %54 = load %struct.enetc_bdr*, %struct.enetc_bdr** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %57 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @enetc_map_tx_buffs(%struct.enetc_bdr* %54, %struct.sk_buff* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %80

67:                                               ; preds = %53
  %68 = load %struct.enetc_bdr*, %struct.enetc_bdr** %7, align 8
  %69 = call i64 @enetc_bd_unused(%struct.enetc_bdr* %68)
  %70 = load i64, i64* @ENETC_TXBDS_MAX_NEEDED, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load %struct.enetc_bdr*, %struct.enetc_bdr** %7, align 8
  %75 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @netif_stop_subqueue(%struct.net_device* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %66, %33
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %81)
  %83 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %78, %46
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @enetc_bd_unused(%struct.enetc_bdr*) #1

declare dso_local i64 @ENETC_TXBDS_NEEDED(i32) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @enetc_map_tx_buffs(%struct.enetc_bdr*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
