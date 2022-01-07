; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32, i32 }
%struct.atl1c_tpd_desc = type { i32, i32 }

@atl1c_trans_normal = common dso_local global i32 0, align 4
@__AT_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TPD_INS_VTAG_SHIFT = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@TPD_ETH_TYPE_SHIFT = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"tx-skb dropped due to dma error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @atl1c_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.atl1c_tpd_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.atl1c_adapter* %13, %struct.atl1c_adapter** %6, align 8
  %14 = load i32, i32* @atl1c_trans_normal, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @__AT_DOWN, align 4
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %21)
  %23 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %118

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @atl1c_cal_tpd_req(%struct.sk_buff* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @atl1c_tpd_avail(%struct.atl1c_adapter* %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @netif_stop_queue(%struct.net_device* %33)
  %35 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %35, i32* %3, align 4
  br label %118

36:                                               ; preds = %24
  %37 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.atl1c_tpd_desc* @atl1c_get_tpd(%struct.atl1c_adapter* %37, i32 %38)
  store %struct.atl1c_tpd_desc* %39, %struct.atl1c_tpd_desc** %8, align 8
  %40 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @atl1c_tso_csum(%struct.atl1c_adapter* %40, %struct.sk_buff* %41, %struct.atl1c_tpd_desc** %8, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %46)
  %48 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %118

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i64 @skb_vlan_tag_get(%struct.sk_buff* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @cpu_to_le16(i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @AT_VLAN_TO_TAG(i64 %59, i32 %60)
  %62 = load i32, i32* @TPD_INS_VTAG_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %65 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %70 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %54, %49
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i64 @skb_network_offset(%struct.sk_buff* %72)
  %74 = load i64, i64* @ETH_HLEN, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* @TPD_ETH_TYPE_SHIFT, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %80 = getelementptr inbounds %struct.atl1c_tpd_desc, %struct.atl1c_tpd_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @atl1c_tx_map(%struct.atl1c_adapter* %84, %struct.sk_buff* %85, %struct.atl1c_tpd_desc* %86, i32 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %92 = load i32, i32* @tx_done, align 4
  %93 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @netif_info(%struct.atl1c_adapter* %91, i32 %92, i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %98 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @atl1c_tx_rollback(%struct.atl1c_adapter* %97, %struct.atl1c_tpd_desc* %98, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %101)
  br label %116

103:                                              ; preds = %83
  %104 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %105 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @netdev_sent_queue(i32 %106, i32 %109)
  %111 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @atl1c_tx_queue(%struct.atl1c_adapter* %111, %struct.sk_buff* %112, %struct.atl1c_tpd_desc* %113, i32 %114)
  br label %116

116:                                              ; preds = %103, %90
  %117 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %45, %32, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @atl1c_cal_tpd_req(%struct.sk_buff*) #1

declare dso_local i64 @atl1c_tpd_avail(%struct.atl1c_adapter*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local %struct.atl1c_tpd_desc* @atl1c_get_tpd(%struct.atl1c_adapter*, i32) #1

declare dso_local i64 @atl1c_tso_csum(%struct.atl1c_adapter*, %struct.sk_buff*, %struct.atl1c_tpd_desc**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @AT_VLAN_TO_TAG(i64, i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @atl1c_tx_map(%struct.atl1c_adapter*, %struct.sk_buff*, %struct.atl1c_tpd_desc*, i32) #1

declare dso_local i32 @netif_info(%struct.atl1c_adapter*, i32, i32, i8*) #1

declare dso_local i32 @atl1c_tx_rollback(%struct.atl1c_adapter*, %struct.atl1c_tpd_desc*, i32) #1

declare dso_local i32 @netdev_sent_queue(i32, i32) #1

declare dso_local i32 @atl1c_tx_queue(%struct.atl1c_adapter*, %struct.sk_buff*, %struct.atl1c_tpd_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
