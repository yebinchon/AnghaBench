; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.atl1e_adapter = type { i32 }
%struct.atl1e_tpd_desc = type { i32, i64 }

@__AT_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TPD_INS_VL_TAG_SHIFT = common dso_local global i32 0, align 4
@TPD_VLANTAG_MASK = common dso_local global i64 0, align 8
@TPD_VLAN_SHIFT = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@TPD_VL_TAGGED_SHIFT = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@TPD_ETHTYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @atl1e_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atl1e_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.atl1e_tpd_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl1e_adapter* %12, %struct.atl1e_adapter** %6, align 8
  store i64 1, i64* %7, align 8
  %13 = load i32, i32* @__AT_DOWN, align 4
  %14 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %19)
  %21 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %124

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %31)
  %33 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i64 @atl1e_cal_tdp_req(%struct.sk_buff* %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %38 = call i64 @atl1e_tpd_avail(%struct.atl1e_adapter* %37)
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @netif_stop_queue(%struct.net_device* %42)
  %44 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %44, i32* %3, align 4
  br label %124

45:                                               ; preds = %34
  %46 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %47 = call %struct.atl1e_tpd_desc* @atl1e_get_tpd(%struct.atl1e_adapter* %46)
  store %struct.atl1e_tpd_desc* %47, %struct.atl1e_tpd_desc** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i64 @skb_vlan_tag_get(%struct.sk_buff* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* @TPD_INS_VL_TAG_SHIFT, align 4
  %55 = shl i32 1, %54
  %56 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %57 = getelementptr inbounds %struct.atl1e_tpd_desc, %struct.atl1e_tpd_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @AT_VLAN_TAG_TO_TPD_TAG(i64 %60, i64 %61)
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @TPD_VLANTAG_MASK, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @TPD_VLAN_SHIFT, align 8
  %67 = shl i64 %65, %66
  %68 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %69 = getelementptr inbounds %struct.atl1e_tpd_desc, %struct.atl1e_tpd_desc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %51, %45
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ETH_P_8021Q, align 4
  %77 = call i64 @htons(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i32, i32* @TPD_VL_TAGGED_SHIFT, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %83 = getelementptr inbounds %struct.atl1e_tpd_desc, %struct.atl1e_tpd_desc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %72
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i64 @skb_network_offset(%struct.sk_buff* %87)
  %89 = load i64, i64* @ETH_HLEN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* @TPD_ETHTYPE_SHIFT, align 4
  %93 = shl i32 1, %92
  %94 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %95 = getelementptr inbounds %struct.atl1e_tpd_desc, %struct.atl1e_tpd_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %102 = call i64 @atl1e_tso_csum(%struct.atl1e_adapter* %99, %struct.sk_buff* %100, %struct.atl1e_tpd_desc* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %105)
  %107 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %107, i32* %3, align 4
  br label %124

108:                                              ; preds = %98
  %109 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %112 = call i64 @atl1e_tx_map(%struct.atl1e_adapter* %109, %struct.sk_buff* %110, %struct.atl1e_tpd_desc* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %115)
  br label %122

117:                                              ; preds = %108
  %118 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %8, align 8
  %121 = call i32 @atl1e_tx_queue(%struct.atl1e_adapter* %118, i64 %119, %struct.atl1e_tpd_desc* %120)
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %104, %41, %30, %18
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atl1e_cal_tdp_req(%struct.sk_buff*) #1

declare dso_local i64 @atl1e_tpd_avail(%struct.atl1e_adapter*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local %struct.atl1e_tpd_desc* @atl1e_get_tpd(%struct.atl1e_adapter*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @AT_VLAN_TAG_TO_TPD_TAG(i64, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @atl1e_tso_csum(%struct.atl1e_adapter*, %struct.sk_buff*, %struct.atl1e_tpd_desc*) #1

declare dso_local i64 @atl1e_tx_map(%struct.atl1e_adapter*, %struct.sk_buff*, %struct.atl1e_tpd_desc*) #1

declare dso_local i32 @atl1e_tx_queue(%struct.atl1e_adapter*, i64, %struct.atl1e_tpd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
