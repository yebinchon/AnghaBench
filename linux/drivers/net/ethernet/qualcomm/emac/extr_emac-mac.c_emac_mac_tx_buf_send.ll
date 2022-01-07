; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_tx_buf_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_tx_buf_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i64, i32 }
%struct.emac_tx_queue = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.emac_tpd = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_mac_tx_buf_send(%struct.emac_adapter* %0, %struct.emac_tx_queue* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.emac_tx_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.emac_tpd, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %5, align 8
  store %struct.emac_tx_queue* %1, %struct.emac_tx_queue** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = call i32 @memset(%struct.emac_tpd* %8, i32 0, i32 4)
  %12 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %13 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i64 @emac_tso_csum(%struct.emac_adapter* %12, %struct.emac_tx_queue* %13, %struct.sk_buff* %14, %struct.emac_tpd* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %18)
  %20 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %88

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @EMAC_VLAN_TO_TAG(i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @TPD_CVLAN_TAG_SET(%struct.emac_tpd* %8, i32 %30)
  %32 = call i32 @TPD_INSTC_SET(%struct.emac_tpd* %8, i32 1)
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i64 @skb_network_offset(%struct.sk_buff* %34)
  %36 = load i64, i64* @ETH_HLEN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @TPD_TYP_SET(%struct.emac_tpd* %8, i32 1)
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %42 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @emac_tx_fill_tpd(%struct.emac_adapter* %41, %struct.emac_tx_queue* %42, %struct.sk_buff* %43, %struct.emac_tpd* %8)
  %45 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_sent_queue(i32 %47, i32 %50)
  %52 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %53 = call i64 @emac_tpd_num_free_descs(%struct.emac_tx_queue* %52)
  %54 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %55 = add nsw i64 %54, 3
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @netif_stop_queue(i32 %60)
  br label %62

62:                                               ; preds = %57, %40
  %63 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %64 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %68 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %66, %69
  %71 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %72 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %76 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %79 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %83 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @emac_reg_update32(i64 %81, i32 %84, i32 %85)
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %62, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.emac_tpd*, i32, i32) #1

declare dso_local i64 @emac_tso_csum(%struct.emac_adapter*, %struct.emac_tx_queue*, %struct.sk_buff*, %struct.emac_tpd*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @EMAC_VLAN_TO_TAG(i32, i32) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @TPD_CVLAN_TAG_SET(%struct.emac_tpd*, i32) #1

declare dso_local i32 @TPD_INSTC_SET(%struct.emac_tpd*, i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @TPD_TYP_SET(%struct.emac_tpd*, i32) #1

declare dso_local i32 @emac_tx_fill_tpd(%struct.emac_adapter*, %struct.emac_tx_queue*, %struct.sk_buff*, %struct.emac_tpd*) #1

declare dso_local i32 @netdev_sent_queue(i32, i32) #1

declare dso_local i64 @emac_tpd_num_free_descs(%struct.emac_tx_queue*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @emac_reg_update32(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
