; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_compl_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_compl_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_adapter* }
%struct.be_adapter = type { %struct.be_rx_obj*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.napi_struct = type { i32 }
%struct.be_rx_compl_info = type { i32, i64, i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BE_RX_SKB_ALLOC_SIZE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.napi_struct*, %struct.be_rx_compl_info*)* @be_rx_compl_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_compl_process(%struct.be_rx_obj* %0, %struct.napi_struct* %1, %struct.be_rx_compl_info* %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.be_rx_compl_info*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store %struct.be_rx_compl_info* %2, %struct.be_rx_compl_info** %6, align 8
  %10 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %11 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %10, i32 0, i32 0
  %12 = load %struct.be_adapter*, %struct.be_adapter** %11, align 8
  store %struct.be_adapter* %12, %struct.be_adapter** %7, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = load i32, i32* @BE_RX_SKB_ALLOC_SIZE, align 4
  %18 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %27 = call %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %32 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %33 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %31, %struct.be_rx_compl_info* %32)
  br label %116

34:                                               ; preds = %3
  %35 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %38 = call i32 @skb_fill_rx_data(%struct.be_rx_obj* %35, %struct.sk_buff* %36, %struct.be_rx_compl_info* %37)
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %47 = call i64 @csum_passed(%struct.be_rx_compl_info* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi i1 [ false, %34 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = call i32 @eth_type_trans(%struct.sk_buff* %62, %struct.net_device* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %69 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %70 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %69, i32 0, i32 0
  %71 = load %struct.be_rx_obj*, %struct.be_rx_obj** %70, align 8
  %72 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %71, i64 0
  %73 = ptrtoint %struct.be_rx_obj* %68 to i64
  %74 = ptrtoint %struct.be_rx_obj* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @skb_record_rx_queue(%struct.sk_buff* %67, i32 %77)
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NETIF_F_RXHASH, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %61
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %88 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %91 = call i32 @skb_set_hash(%struct.sk_buff* %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %61
  %93 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %94 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %100 = call i32 @skb_mark_napi_id(%struct.sk_buff* %98, %struct.napi_struct* %99)
  %101 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %102 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %92
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = load i32, i32* @ETH_P_8021Q, align 4
  %108 = call i32 @htons(i32 %107)
  %109 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %110 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %106, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %105, %92
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = call i32 @netif_receive_skb(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %113, %25
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj*) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local i32 @skb_fill_rx_data(%struct.be_rx_obj*, %struct.sk_buff*, %struct.be_rx_compl_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @csum_passed(%struct.be_rx_compl_info*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_mark_napi_id(%struct.sk_buff*, %struct.napi_struct*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
