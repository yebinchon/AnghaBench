; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_xmit_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_xmit_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hix5hd2_desc = type { i32 }
%struct.hix5hd2_priv = type { i32, i64, %struct.sk_buff**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hix5hd2_desc* }
%struct.TYPE_4__ = type { i64 }

@TX_RQ_RD_ADDR = common dso_local global i64 0, align 8
@TX_RQ_WR_ADDR = common dso_local global i64 0, align 8
@TX_DESC_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"inconsistent tx_skb\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hix5hd2_xmit_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_xmit_reclaim(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hix5hd2_desc*, align 8
  %5 = alloca %struct.hix5hd2_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.hix5hd2_priv* %15, %struct.hix5hd2_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_tx_lock(%struct.net_device* %16)
  %18 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %19 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TX_RQ_RD_ADDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  %24 = call i64 @dma_cnt(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %26 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TX_RQ_WR_ADDR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl_relaxed(i64 %29)
  %31 = call i64 @dma_cnt(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @TX_DESC_NUM, align 4
  %35 = call i64 @CIRC_CNT(i64 %32, i64 %33, i32 %34)
  store i64 %35, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %108, %1
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %111

41:                                               ; preds = %37
  %42 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %43 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %42, i32 0, i32 2
  %44 = load %struct.sk_buff**, %struct.sk_buff*** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %44, i64 %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %3, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %111

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %68 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %70, i64 %71
  store %struct.hix5hd2_desc* %72, %struct.hix5hd2_desc** %4, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %57
  %79 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @hix5hd2_clean_sg_desc(%struct.hix5hd2_priv* %79, %struct.sk_buff* %80, i64 %81)
  br label %97

83:                                               ; preds = %57
  %84 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %4, align 8
  %85 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %89 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @DMA_TO_DEVICE, align 4
  %96 = call i32 @dma_unmap_single(i32 %90, i32 %91, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %83, %78
  %98 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %99 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %98, i32 0, i32 2
  %100 = load %struct.sk_buff**, %struct.sk_buff*** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %100, i64 %101
  store %struct.sk_buff* null, %struct.sk_buff** %102, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = call i32 @dev_consume_skb_any(%struct.sk_buff* %103)
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* @TX_DESC_NUM, align 4
  %107 = call i64 @dma_ring_incr(i64 %105, i32 %106)
  store i64 %107, i64* %11, align 8
  br label %108

108:                                              ; preds = %97
  %109 = load i64, i64* %12, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %12, align 8
  br label %37

111:                                              ; preds = %54, %37
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @dma_byte(i64 %116)
  %118 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %119 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TX_RQ_RD_ADDR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel_relaxed(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %115, %111
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = call i32 @netif_tx_unlock(%struct.net_device* %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129, %124
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @netdev_completed_queue(%struct.net_device* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %139 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @netif_queue_stopped(i32 %140)
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %149 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @netif_wake_queue(i32 %150)
  br label %152

152:                                              ; preds = %147, %144, %137
  ret void
}

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i64 @dma_cnt(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CIRC_CNT(i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @hix5hd2_clean_sg_desc(%struct.hix5hd2_priv*, %struct.sk_buff*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @dma_ring_incr(i64, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dma_byte(i64) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
