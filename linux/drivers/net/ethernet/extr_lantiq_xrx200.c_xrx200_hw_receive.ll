; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_hw_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_hw_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrx200_chan = type { %struct.TYPE_3__, %struct.sk_buff**, %struct.xrx200_priv* }
%struct.TYPE_3__ = type { i64, %struct.ltq_dma_desc* }
%struct.ltq_dma_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xrx200_priv = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LTQ_DMA_SIZE_MASK = common dso_local global i32 0, align 4
@LTQ_DESC_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate new rx buffer\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xrx200_chan*)* @xrx200_hw_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_hw_receive(%struct.xrx200_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xrx200_chan*, align 8
  %4 = alloca %struct.xrx200_priv*, align 8
  %5 = alloca %struct.ltq_dma_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.xrx200_chan* %0, %struct.xrx200_chan** %3, align 8
  %10 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %11 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %10, i32 0, i32 2
  %12 = load %struct.xrx200_priv*, %struct.xrx200_priv** %11, align 8
  store %struct.xrx200_priv* %12, %struct.xrx200_priv** %4, align 8
  %13 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %14 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %15, align 8
  %17 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %18 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %16, i64 %20
  store %struct.ltq_dma_desc* %21, %struct.ltq_dma_desc** %5, align 8
  %22 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %23 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %22, i32 0, i32 1
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %23, align 8
  %25 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %26 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %6, align 8
  %31 = load %struct.ltq_dma_desc*, %struct.ltq_dma_desc** %5, align 8
  %32 = getelementptr inbounds %struct.ltq_dma_desc, %struct.ltq_dma_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LTQ_DMA_SIZE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.xrx200_priv*, %struct.xrx200_priv** %4, align 8
  %37 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  store %struct.net_device* %38, %struct.net_device** %8, align 8
  %39 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %40 = call i32 @xrx200_alloc_skb(%struct.xrx200_chan* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %42 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* @LTQ_DESC_NUM, align 8
  %47 = load %struct.xrx200_chan*, %struct.xrx200_chan** %3, align 8
  %48 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = urem i64 %50, %46
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %1
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %82

58:                                               ; preds = %1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @skb_put(%struct.sk_buff* %59, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = call i32 @eth_type_trans(%struct.sk_buff* %62, %struct.net_device* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @netif_receive_skb(%struct.sk_buff* %67)
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ETH_FCS_LEN, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %76
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %58, %54
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @xrx200_alloc_skb(%struct.xrx200_chan*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
