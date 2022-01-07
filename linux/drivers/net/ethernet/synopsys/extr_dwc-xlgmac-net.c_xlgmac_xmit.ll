; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.xlgmac_pdata = type { %struct.xlgmac_channel*, %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops }
%struct.xlgmac_channel = type { %struct.xlgmac_ring*, i32 }
%struct.xlgmac_ring = type { %struct.xlgmac_pkt_info }
%struct.xlgmac_pkt_info = type { i32, i32 }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_channel.0*)* }
%struct.xlgmac_channel.0 = type opaque
%struct.xlgmac_desc_ops = type { i32 (%struct.xlgmac_channel.1*, %struct.sk_buff.2*)* }
%struct.xlgmac_channel.1 = type opaque
%struct.sk_buff.2 = type opaque
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"skb->len = %d\0A\00", align 1
@tx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"empty skb received from stack\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error processing TSO packet\0A\00", align 1
@XLGMAC_TX_MAX_DESC_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xlgmac_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.xlgmac_pkt_info*, align 8
  %8 = alloca %struct.xlgmac_desc_ops*, align 8
  %9 = alloca %struct.xlgmac_channel*, align 8
  %10 = alloca %struct.xlgmac_hw_ops*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca %struct.xlgmac_ring*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %14)
  store %struct.xlgmac_pdata* %15, %struct.xlgmac_pdata** %6, align 8
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 2
  store %struct.xlgmac_desc_ops* %17, %struct.xlgmac_desc_ops** %8, align 8
  %18 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %19 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %18, i32 0, i32 1
  store %struct.xlgmac_hw_ops* %19, %struct.xlgmac_hw_ops** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @XLGMAC_PR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %24, i32 0, i32 0
  %26 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %26, i64 %30
  store %struct.xlgmac_channel* %31, %struct.xlgmac_channel** %9, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %9, align 8
  %34 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %32, i32 %35)
  store %struct.netdev_queue* %36, %struct.netdev_queue** %11, align 8
  %37 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %9, align 8
  %38 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %37, i32 0, i32 0
  %39 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %38, align 8
  store %struct.xlgmac_ring* %39, %struct.xlgmac_ring** %12, align 8
  %40 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %12, align 8
  %41 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %40, i32 0, i32 0
  store %struct.xlgmac_pkt_info* %41, %struct.xlgmac_pkt_info** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %2
  %47 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %48 = load i32, i32* @tx_err, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_err(%struct.xlgmac_pdata* %47, i32 %48, %struct.net_device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %51)
  %53 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %128

54:                                               ; preds = %2
  %55 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %7, align 8
  %56 = call i32 @memset(%struct.xlgmac_pkt_info* %55, i32 0, i32 8)
  %57 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %58 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %12, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %7, align 8
  %61 = call i32 @xlgmac_prep_tx_pkt(%struct.xlgmac_pdata* %57, %struct.xlgmac_ring* %58, %struct.sk_buff* %59, %struct.xlgmac_pkt_info* %60)
  %62 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %9, align 8
  %63 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %12, align 8
  %64 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %7, align 8
  %65 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xlgmac_maybe_stop_tx_queue(%struct.xlgmac_channel* %62, %struct.xlgmac_ring* %63, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %3, align 4
  br label %128

72:                                               ; preds = %54
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %7, align 8
  %75 = call i32 @xlgmac_prep_tso(%struct.sk_buff* %73, %struct.xlgmac_pkt_info* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %80 = load i32, i32* @tx_err, align 4
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @netif_err(%struct.xlgmac_pdata* %79, i32 %80, %struct.net_device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %3, align 4
  br label %128

86:                                               ; preds = %72
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %7, align 8
  %89 = call i32 @xlgmac_prep_vlan(%struct.sk_buff* %87, %struct.xlgmac_pkt_info* %88)
  %90 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %8, align 8
  %91 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %90, i32 0, i32 0
  %92 = load i32 (%struct.xlgmac_channel.1*, %struct.sk_buff.2*)*, i32 (%struct.xlgmac_channel.1*, %struct.sk_buff.2*)** %91, align 8
  %93 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %9, align 8
  %94 = bitcast %struct.xlgmac_channel* %93 to %struct.xlgmac_channel.1*
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = bitcast %struct.sk_buff* %95 to %struct.sk_buff.2*
  %97 = call i32 %92(%struct.xlgmac_channel.1* %94, %struct.sk_buff.2* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %86
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  %102 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %128

103:                                              ; preds = %86
  %104 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %105 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %7, align 8
  %106 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netdev_tx_sent_queue(%struct.netdev_queue* %104, i32 %107)
  %109 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %10, align 8
  %110 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %109, i32 0, i32 0
  %111 = load i32 (%struct.xlgmac_channel.0*)*, i32 (%struct.xlgmac_channel.0*)** %110, align 8
  %112 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %9, align 8
  %113 = bitcast %struct.xlgmac_channel* %112 to %struct.xlgmac_channel.0*
  %114 = call i32 %111(%struct.xlgmac_channel.0* %113)
  %115 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %116 = call i64 @netif_msg_pktdata(%struct.xlgmac_pdata* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %103
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @xlgmac_print_pkt(%struct.net_device* %119, %struct.sk_buff* %120, i32 1)
  br label %122

122:                                              ; preds = %118, %103
  %123 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %9, align 8
  %124 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %12, align 8
  %125 = load i32, i32* @XLGMAC_TX_MAX_DESC_NR, align 4
  %126 = call i32 @xlgmac_maybe_stop_tx_queue(%struct.xlgmac_channel* %123, %struct.xlgmac_ring* %124, i32 %125)
  %127 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %122, %99, %78, %70, %46
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @XLGMAC_PR(i8*, i64) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_err(%struct.xlgmac_pdata*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.xlgmac_pkt_info*, i32, i32) #1

declare dso_local i32 @xlgmac_prep_tx_pkt(%struct.xlgmac_pdata*, %struct.xlgmac_ring*, %struct.sk_buff*, %struct.xlgmac_pkt_info*) #1

declare dso_local i32 @xlgmac_maybe_stop_tx_queue(%struct.xlgmac_channel*, %struct.xlgmac_ring*, i32) #1

declare dso_local i32 @xlgmac_prep_tso(%struct.sk_buff*, %struct.xlgmac_pkt_info*) #1

declare dso_local i32 @xlgmac_prep_vlan(%struct.sk_buff*, %struct.xlgmac_pkt_info*) #1

declare dso_local i32 @netdev_tx_sent_queue(%struct.netdev_queue*, i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_print_pkt(%struct.net_device*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
