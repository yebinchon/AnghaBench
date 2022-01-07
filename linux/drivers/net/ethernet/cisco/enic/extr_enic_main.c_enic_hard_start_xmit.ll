; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.enic = type { i32, i32*, %struct.vnic_wq* }
%struct.vnic_wq = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ENIC_NON_TSO_MAX_DESC = common dso_local global i64 0, align 8
@ENIC_DESC_MAX_SPLITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @enic_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.enic*, align 8
  %7 = alloca %struct.vnic_wq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netdev_queue*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.enic* @netdev_priv(%struct.net_device* %10)
  store %struct.enic* %11, %struct.enic** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %17)
  %19 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %21)
  %23 = load %struct.enic*, %struct.enic** %6, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = urem i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.enic*, %struct.enic** %6, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 2
  %29 = load %struct.vnic_wq*, %struct.vnic_wq** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %29, i64 %31
  store %struct.vnic_wq* %32, %struct.vnic_wq** %7, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %33, i32 %34)
  store %struct.netdev_queue* %35, %struct.netdev_queue** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %20
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* @ENIC_NON_TSO_MAX_DESC, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i64 @skb_linearize(%struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %122

57:                                               ; preds = %49, %41, %20
  %58 = load %struct.enic*, %struct.enic** %6, align 8
  %59 = getelementptr inbounds %struct.enic, %struct.enic* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %66 = call i64 @vnic_wq_desc_avail(%struct.vnic_wq* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ENIC_DESC_MAX_SPLITS, align 8
  %72 = add nsw i64 %70, %71
  %73 = icmp slt i64 %66, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %57
  %75 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %76 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %75)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i32 @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.enic*, %struct.enic** %6, align 8
  %80 = getelementptr inbounds %struct.enic, %struct.enic* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %86, i32* %3, align 4
  br label %122

87:                                               ; preds = %57
  %88 = load %struct.enic*, %struct.enic** %6, align 8
  %89 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @enic_queue_wq_skb(%struct.enic* %88, %struct.vnic_wq* %89, %struct.sk_buff* %90)
  %92 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %93 = call i64 @vnic_wq_desc_avail(%struct.vnic_wq* %92)
  %94 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %95 = load i64, i64* @ENIC_DESC_MAX_SPLITS, align 8
  %96 = add nsw i64 %94, %95
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %100 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %99)
  br label %101

101:                                              ; preds = %98, %87
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @skb_tx_timestamp(%struct.sk_buff* %102)
  %104 = call i32 (...) @netdev_xmit_more()
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %108 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106, %101
  %111 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %112 = call i32 @vnic_wq_doorbell(%struct.vnic_wq* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.enic*, %struct.enic** %6, align 8
  %115 = getelementptr inbounds %struct.enic, %struct.enic* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %113, %74, %53, %16
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vnic_wq_desc_avail(%struct.vnic_wq*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @enic_queue_wq_skb(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i64 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @vnic_wq_doorbell(%struct.vnic_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
