; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, %struct.bcm_enet_desc*, i32, i32, %struct.bcm_enet_desc*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.bcm_enet_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENETDMAC_IRMASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enetsw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enetsw_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_enet_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_enet_priv* %8, %struct.bcm_enet_priv** %3, align 8
  %9 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %9, i32 0, i32 17
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %13, i32 0, i32 16
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %18, i32 0, i32 15
  %20 = call i32 @napi_disable(i32* %19)
  %21 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %22 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %21, i32 0, i32 14
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %25 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %26 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %27 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %24, i32 0, i32 %25, i32 %28)
  %30 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %31 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %32 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %33 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %30, i32 0, i32 %31, i32 %34)
  %36 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %37 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %38 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv* %36, i32 %39)
  %41 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %42 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %43 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv* %41, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @bcm_enet_tx_reclaim(%struct.net_device* %46, i32 1)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %88, %1
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %51 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %48
  %55 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %56 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %55, i32 0, i32 10
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %88

64:                                               ; preds = %54
  %65 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %66 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %65, i32 0, i32 7
  %67 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %67, i64 %69
  store %struct.bcm_enet_desc* %70, %struct.bcm_enet_desc** %6, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %73 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %76 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %79 = call i32 @dma_unmap_single(%struct.device* %71, i32 %74, i32 %77, i32 %78)
  %80 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %81 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %80, i32 0, i32 10
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kfree_skb(i32 %86)
  br label %88

88:                                               ; preds = %64, %63
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %48

91:                                               ; preds = %48
  %92 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %93 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %92, i32 0, i32 10
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %97 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %102 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %105 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %104, i32 0, i32 7
  %106 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %105, align 8
  %107 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %108 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dma_free_coherent(%struct.device* %100, i32 %103, %struct.bcm_enet_desc* %106, i32 %109)
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %113 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %116 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %115, i32 0, i32 4
  %117 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %116, align 8
  %118 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %119 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dma_free_coherent(%struct.device* %111, i32 %114, %struct.bcm_enet_desc* %117, i32 %120)
  %122 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %123 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %91
  %127 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %128 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = call i32 @free_irq(i32 %129, %struct.net_device* %130)
  br label %132

132:                                              ; preds = %126, %91
  %133 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %134 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = call i32 @free_irq(i32 %135, %struct.net_device* %136)
  ret i32 0
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @bcm_enet_tx_reclaim(%struct.net_device*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.bcm_enet_desc*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
