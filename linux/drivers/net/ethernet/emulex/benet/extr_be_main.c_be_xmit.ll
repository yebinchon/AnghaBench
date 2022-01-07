; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.be_adapter = type { %struct.be_tx_obj* }
%struct.be_tx_obj = type { i64 }
%struct.be_wrb_params = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OS2BMC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @be_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.be_tx_obj*, align 8
  %9 = alloca %struct.be_wrb_params, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.be_adapter* %13, %struct.be_adapter** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = load %struct.be_tx_obj*, %struct.be_tx_obj** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %18, i64 %19
  store %struct.be_tx_obj* %20, %struct.be_tx_obj** %8, align 8
  %21 = bitcast %struct.be_wrb_params* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = call i32 (...) @netdev_xmit_more()
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.sk_buff* @be_xmit_workarounds(%struct.be_adapter* %26, %struct.sk_buff* %27, %struct.be_wrb_params* %9)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %104

36:                                               ; preds = %2
  %37 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @be_get_wrb_params_from_skb(%struct.be_adapter* %37, %struct.sk_buff* %38, %struct.be_wrb_params* %9)
  %40 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %41 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i64 @be_xmit_enqueue(%struct.be_adapter* %40, %struct.be_tx_obj* %41, %struct.sk_buff* %42, %struct.be_wrb_params* %9)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %51)
  br label %104

53:                                               ; preds = %36
  %54 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %55 = call i64 @be_send_pkt_to_bmc(%struct.be_adapter* %54, %struct.sk_buff** %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OS2BMC, align 4
  %61 = call i32 @BE_WRB_F_SET(i32 %59, i32 %60, i32 1)
  %62 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %63 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i64 @be_xmit_enqueue(%struct.be_adapter* %62, %struct.be_tx_obj* %63, %struct.sk_buff* %64, %struct.be_wrb_params* %9)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %104

73:                                               ; preds = %57
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @skb_get(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %53
  %78 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %79 = call i64 @be_is_txq_full(%struct.be_tx_obj* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @netif_stop_subqueue(%struct.net_device* %82, i64 %83)
  %85 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %86 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %77
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @__netif_subqueue_stopped(%struct.net_device* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %90
  %99 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %100 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %101 = call i32 @be_xmit_flush(%struct.be_adapter* %99, %struct.be_tx_obj* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %103, i32* %3, align 4
  br label %123

104:                                              ; preds = %72, %50, %35
  %105 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %106 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %114 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %119 = load %struct.be_tx_obj*, %struct.be_tx_obj** %8, align 8
  %120 = call i32 @be_xmit_flush(%struct.be_adapter* %118, %struct.be_tx_obj* %119)
  br label %121

121:                                              ; preds = %117, %112, %104
  %122 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %102
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local %struct.sk_buff* @be_xmit_workarounds(%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be_get_wrb_params_from_skb(%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*) #1

declare dso_local i64 @be_xmit_enqueue(%struct.be_adapter*, %struct.be_tx_obj*, %struct.sk_buff*, %struct.be_wrb_params*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @be_send_pkt_to_bmc(%struct.be_adapter*, %struct.sk_buff**) #1

declare dso_local i32 @BE_WRB_F_SET(i32, i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i64 @be_is_txq_full(%struct.be_tx_obj*) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i64) #1

declare dso_local %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj*) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.net_device*, i64) #1

declare dso_local i32 @be_xmit_flush(%struct.be_adapter*, %struct.be_tx_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
