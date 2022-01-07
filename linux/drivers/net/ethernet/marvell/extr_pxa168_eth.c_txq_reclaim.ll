; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_txq_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_txq_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pxa168_eth_private = type { i64, i32, i32, %struct.TYPE_4__*, %struct.sk_buff**, %struct.tx_desc*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tx_desc = type { i32, i32, i32 }

@WORK_TX_DONE = common dso_local global i32 0, align 4
@BUF_OWNED_BY_DMA = common dso_local global i32 0, align 4
@TX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Error in TX\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @txq_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_reclaim(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa168_eth_private*, align 8
  %6 = alloca %struct.tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %13)
  store %struct.pxa168_eth_private* %14, %struct.pxa168_eth_private** %5, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netif_tx_lock(%struct.net_device* %15)
  %17 = load i32, i32* @WORK_TX_DONE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %20 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %119, %2
  %24 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %25 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %23
  %29 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %30 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %33 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %32, i32 0, i32 5
  %34 = load %struct.tx_desc*, %struct.tx_desc** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %34, i64 %36
  store %struct.tx_desc* %37, %struct.tx_desc** %6, align 8
  %38 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %39 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BUF_OWNED_BY_DMA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %123

52:                                               ; preds = %48
  store i32 -1, i32* %12, align 4
  br label %123

53:                                               ; preds = %43, %28
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %57 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %55, %58
  %60 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %61 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %63 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %67 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %70 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %73 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %72, i32 0, i32 4
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %53
  %82 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %83 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %82, i32 0, i32 4
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %84, i64 %86
  store %struct.sk_buff* null, %struct.sk_buff** %87, align 8
  br label %88

88:                                               ; preds = %81, %53
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @TX_ERROR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = call i64 (...) @net_ratelimit()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = call i32 @netdev_err(%struct.net_device* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %88
  %106 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %107 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @DMA_TO_DEVICE, align 4
  %113 = call i32 @dma_unmap_single(i32* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %117)
  br label %119

119:                                              ; preds = %116, %105
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %23

122:                                              ; preds = %23
  br label %123

123:                                              ; preds = %122, %52, %51
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = call i32 @netif_tx_unlock(%struct.net_device* %124)
  %126 = load i32, i32* %12, align 4
  ret i32 %126
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
