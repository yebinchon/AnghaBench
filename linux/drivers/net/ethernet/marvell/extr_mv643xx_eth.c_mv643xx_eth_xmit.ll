; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mv643xx_eth_private = type { %struct.tx_queue* }
%struct.tx_queue = type { i32, i64, i64, i32, i32 }
%struct.netdev_queue = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"failed to linearize skb with tiny unaligned fragment\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mv643xx_eth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tx_queue*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %12)
  store %struct.mv643xx_eth_private* %13, %struct.mv643xx_eth_private** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %17 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %16, i32 0, i32 0
  %18 = load %struct.tx_queue*, %struct.tx_queue** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %18, i64 %20
  store %struct.tx_queue* %21, %struct.tx_queue** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %22, i32 %23)
  store %struct.netdev_queue* %24, %struct.netdev_queue** %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @has_tiny_unaligned_frags(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i64 @__skb_linearize(%struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @KERN_DEBUG, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @netdev_printk(i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %36, i32* %3, align 4
  br label %87

37:                                               ; preds = %28, %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i64 @skb_is_gso(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @txq_submit_tso(%struct.tx_queue* %45, %struct.sk_buff* %46, %struct.net_device* %47)
  store i32 %48, i32* %9, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @txq_submit_skb(%struct.tx_queue* %50, %struct.sk_buff* %51, %struct.net_device* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %60 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %64 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %68 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %71 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %57
  %75 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %76 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %75)
  br label %77

77:                                               ; preds = %74, %57
  br label %85

78:                                               ; preds = %54
  %79 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %80 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %78, %77
  %86 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %32
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @has_tiny_unaligned_frags(%struct.sk_buff*) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @netdev_printk(i32, %struct.net_device*, i8*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @txq_submit_tso(%struct.tx_queue*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @txq_submit_skb(%struct.tx_queue*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
