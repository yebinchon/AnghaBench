; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_hw_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_hw_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltq_etop_chan = type { i32, %struct.TYPE_2__, %struct.sk_buff** }
%struct.TYPE_2__ = type { i64, %struct.ltq_dma_desc* }
%struct.ltq_dma_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ltq_etop_priv = type { i32 }

@LTQ_DMA_SIZE_MASK = common dso_local global i32 0, align 4
@MAX_DMA_CRC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to allocate new rx buffer, stopping DMA\0A\00", align 1
@LTQ_DESC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ltq_etop_chan*)* @ltq_etop_hw_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_etop_hw_receive(%struct.ltq_etop_chan* %0) #0 {
  %2 = alloca %struct.ltq_etop_chan*, align 8
  %3 = alloca %struct.ltq_etop_priv*, align 8
  %4 = alloca %struct.ltq_dma_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ltq_etop_chan* %0, %struct.ltq_etop_chan** %2, align 8
  %8 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %9 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ltq_etop_priv* @netdev_priv(i32 %10)
  store %struct.ltq_etop_priv* %11, %struct.ltq_etop_priv** %3, align 8
  %12 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %13 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %14, align 8
  %16 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %17 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %15, i64 %19
  store %struct.ltq_dma_desc* %20, %struct.ltq_dma_desc** %4, align 8
  %21 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %22 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %21, i32 0, i32 2
  %23 = load %struct.sk_buff**, %struct.sk_buff*** %22, align 8
  %24 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %25 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %23, i64 %27
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %4, align 8
  %31 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LTQ_DMA_SIZE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @MAX_DMA_CRC_LEN, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %42 = call i64 @ltq_etop_alloc_skb(%struct.ltq_etop_chan* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %1
  %45 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %46 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %50 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %49, i32 0, i32 1
  %51 = call i32 @ltq_dma_close(%struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %44, %1
  %53 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %54 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* @LTQ_DESC_NUM, align 8
  %59 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %60 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = urem i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @skb_put(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %2, align 8
  %73 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @eth_type_trans(%struct.sk_buff* %71, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @netif_receive_skb(%struct.sk_buff* %78)
  ret void
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ltq_etop_alloc_skb(%struct.ltq_etop_chan*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ltq_dma_close(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
