; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.bcm_enet_priv = type { i32, i64, i32, i32, i32, %struct.bcm_enet_desc*, i32, i32, %struct.bcm_enet_desc*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.bcm_enet_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENET_IRMASK_REG = common dso_local global i32 0, align 4
@ENETDMAC_IRMASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enet_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_stop(%struct.net_device* %0) #0 {
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
  %10 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %9, i32 0, i32 18
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_stop_queue(%struct.net_device* %13)
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %15, i32 0, i32 17
  %17 = call i32 @napi_disable(i32* %16)
  %18 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @phy_stop(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %28, i32 0, i32 16
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %32 = load i32, i32* @ENET_IRMASK_REG, align 4
  %33 = call i32 @enet_writel(%struct.bcm_enet_priv* %31, i32 0, i32 %32)
  %34 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %35 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %36 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %34, i32 0, i32 %35, i32 %38)
  %40 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %41 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %42 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %43 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %40, i32 0, i32 %41, i32 %44)
  %46 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %47 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %46, i32 0, i32 15
  %48 = call i32 @cancel_work_sync(i32* %47)
  %49 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %50 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %51 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv* %49, i32 %52)
  %54 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %55 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %56 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv* %54, i32 %57)
  %59 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %60 = call i32 @bcm_enet_disable_mac(%struct.bcm_enet_priv* %59)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @bcm_enet_tx_reclaim(%struct.net_device* %61, i32 1)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %103, %27
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %66 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %63
  %70 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %71 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %70, i32 0, i32 11
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %103

79:                                               ; preds = %69
  %80 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %81 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %80, i32 0, i32 8
  %82 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %82, i64 %84
  store %struct.bcm_enet_desc* %85, %struct.bcm_enet_desc** %6, align 8
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %88 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %91 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %94 = call i32 @dma_unmap_single(%struct.device* %86, i32 %89, i32 %92, i32 %93)
  %95 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %96 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %95, i32 0, i32 11
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kfree_skb(i32 %101)
  br label %103

103:                                              ; preds = %79, %78
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %63

106:                                              ; preds = %63
  %107 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %108 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %107, i32 0, i32 11
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %112 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %117 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %120 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %119, i32 0, i32 8
  %121 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %120, align 8
  %122 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %123 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dma_free_coherent(%struct.device* %115, i32 %118, %struct.bcm_enet_desc* %121, i32 %124)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %128 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %131 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %130, i32 0, i32 5
  %132 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %131, align 8
  %133 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %134 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dma_free_coherent(%struct.device* %126, i32 %129, %struct.bcm_enet_desc* %132, i32 %135)
  %137 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %138 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = call i32 @free_irq(i32 %139, %struct.net_device* %140)
  %142 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %143 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = call i32 @free_irq(i32 %144, %struct.net_device* %145)
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = call i32 @free_irq(i32 %149, %struct.net_device* %150)
  %152 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %153 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %106
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @phy_disconnect(i32 %159)
  br label %161

161:                                              ; preds = %156, %106
  ret i32 0
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @bcm_enet_disable_mac(%struct.bcm_enet_priv*) #1

declare dso_local i32 @bcm_enet_tx_reclaim(%struct.net_device*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.bcm_enet_desc*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
