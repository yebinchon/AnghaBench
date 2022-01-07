; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { %struct.xgbe_channel**, %struct.xgbe_desc_if, %struct.xgbe_hw_if }
%struct.xgbe_channel = type { %struct.xgbe_ring*, i32 }
%struct.xgbe_ring = type { %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i32, i32 }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_channel.0*, %struct.sk_buff.1*)* }
%struct.xgbe_channel.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_channel.2*)* }
%struct.xgbe_channel.2 = type opaque
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"-->xgbe_xmit: skb->len = %d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i64 0, align 8
@tx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"empty skb received from stack\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error processing TSO packet\0A\00", align 1
@XGBE_TX_MAX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.net_device*)* @xgbe_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xgbe_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_hw_if*, align 8
  %7 = alloca %struct.xgbe_desc_if*, align 8
  %8 = alloca %struct.xgbe_channel*, align 8
  %9 = alloca %struct.xgbe_ring*, align 8
  %10 = alloca %struct.xgbe_packet_data*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %13)
  store %struct.xgbe_prv_data* %14, %struct.xgbe_prv_data** %5, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 2
  store %struct.xgbe_hw_if* %16, %struct.xgbe_hw_if** %6, align 8
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 1
  store %struct.xgbe_desc_if* %18, %struct.xgbe_desc_if** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @DBGPR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %25, i64 %28
  %30 = load %struct.xgbe_channel*, %struct.xgbe_channel** %29, align 8
  store %struct.xgbe_channel* %30, %struct.xgbe_channel** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  %33 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %31, i32 %34)
  store %struct.netdev_queue* %35, %struct.netdev_queue** %11, align 8
  %36 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  %37 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %36, i32 0, i32 0
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %37, align 8
  store %struct.xgbe_ring* %38, %struct.xgbe_ring** %9, align 8
  %39 = load %struct.xgbe_ring*, %struct.xgbe_ring** %9, align 8
  %40 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %39, i32 0, i32 0
  store %struct.xgbe_packet_data* %40, %struct.xgbe_packet_data** %10, align 8
  %41 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %48 = load i32, i32* @tx_err, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @netif_err(%struct.xgbe_prv_data* %47, i32 %48, %struct.net_device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %51)
  br label %128

53:                                               ; preds = %2
  %54 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %55 = call i32 @memset(%struct.xgbe_packet_data* %54, i32 0, i32 8)
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %57 = load %struct.xgbe_ring*, %struct.xgbe_ring** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %60 = call i32 @xgbe_packet_info(%struct.xgbe_prv_data* %56, %struct.xgbe_ring* %57, %struct.sk_buff* %58, %struct.xgbe_packet_data* %59)
  %61 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  %62 = load %struct.xgbe_ring*, %struct.xgbe_ring** %9, align 8
  %63 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %64 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @xgbe_maybe_stop_tx_queue(%struct.xgbe_channel* %61, %struct.xgbe_ring* %62, i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %128

70:                                               ; preds = %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %73 = call i64 @xgbe_prep_tso(%struct.sk_buff* %71, %struct.xgbe_packet_data* %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %78 = load i32, i32* @tx_err, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @netif_err(%struct.xgbe_prv_data* %77, i32 %78, %struct.net_device* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %81)
  br label %128

83:                                               ; preds = %70
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %86 = call i32 @xgbe_prep_vlan(%struct.sk_buff* %84, %struct.xgbe_packet_data* %85)
  %87 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %7, align 8
  %88 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %87, i32 0, i32 0
  %89 = load i32 (%struct.xgbe_channel.0*, %struct.sk_buff.1*)*, i32 (%struct.xgbe_channel.0*, %struct.sk_buff.1*)** %88, align 8
  %90 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  %91 = bitcast %struct.xgbe_channel* %90 to %struct.xgbe_channel.0*
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = bitcast %struct.sk_buff* %92 to %struct.sk_buff.1*
  %94 = call i32 %89(%struct.xgbe_channel.0* %91, %struct.sk_buff.1* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %83
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %97)
  br label %128

99:                                               ; preds = %83
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %103 = call i32 @xgbe_prep_tx_tstamp(%struct.xgbe_prv_data* %100, %struct.sk_buff* %101, %struct.xgbe_packet_data* %102)
  %104 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %105 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %106 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netdev_tx_sent_queue(%struct.netdev_queue* %104, i32 %107)
  %109 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %6, align 8
  %110 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %109, i32 0, i32 0
  %111 = load i32 (%struct.xgbe_channel.2*)*, i32 (%struct.xgbe_channel.2*)** %110, align 8
  %112 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  %113 = bitcast %struct.xgbe_channel* %112 to %struct.xgbe_channel.2*
  %114 = call i32 %111(%struct.xgbe_channel.2* %113)
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %116 = call i64 @netif_msg_pktdata(%struct.xgbe_prv_data* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %99
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = call i32 @xgbe_print_pkt(%struct.net_device* %119, %struct.sk_buff* %120, i32 1)
  br label %122

122:                                              ; preds = %118, %99
  %123 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  %124 = load %struct.xgbe_ring*, %struct.xgbe_ring** %9, align 8
  %125 = load i32, i32* @XGBE_TX_MAX_DESCS, align 4
  %126 = call i64 @xgbe_maybe_stop_tx_queue(%struct.xgbe_channel* %123, %struct.xgbe_ring* %124, i32 %125)
  %127 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %122, %96, %76, %69, %46
  %129 = load i64, i64* %12, align 8
  ret i64 %129
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBGPR(i8*, i64) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_err(%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.xgbe_packet_data*, i32, i32) #1

declare dso_local i32 @xgbe_packet_info(%struct.xgbe_prv_data*, %struct.xgbe_ring*, %struct.sk_buff*, %struct.xgbe_packet_data*) #1

declare dso_local i64 @xgbe_maybe_stop_tx_queue(%struct.xgbe_channel*, %struct.xgbe_ring*, i32) #1

declare dso_local i64 @xgbe_prep_tso(%struct.sk_buff*, %struct.xgbe_packet_data*) #1

declare dso_local i32 @xgbe_prep_vlan(%struct.sk_buff*, %struct.xgbe_packet_data*) #1

declare dso_local i32 @xgbe_prep_tx_tstamp(%struct.xgbe_prv_data*, %struct.sk_buff*, %struct.xgbe_packet_data*) #1

declare dso_local i32 @netdev_tx_sent_queue(%struct.netdev_queue*, i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_print_pkt(%struct.net_device*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
