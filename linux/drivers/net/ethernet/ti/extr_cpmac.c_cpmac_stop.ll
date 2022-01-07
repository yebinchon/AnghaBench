; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.cpmac_priv = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.resource = type { i32 }

@CPMAC_MBP = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@CPMAC_QUEUES = common dso_local global i64 0, align 8
@CPMAC_SKB_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cpmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %8)
  %10 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %10, i32 0, i32 7
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %14 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %13, i32 0, i32 6
  %15 = call i32 @napi_disable(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @phy_stop(i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @cpmac_hw_stop(%struct.net_device* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %32, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CPMAC_TX_PTR(i32 %29)
  %31 = call i32 @cpmac_write(i32 %28, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %37 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CPMAC_RX_PTR(i32 0)
  %40 = call i32 @cpmac_write(i32 %38, i32 %39, i32 0)
  %41 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %42 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CPMAC_MBP, align 4
  %45 = call i32 @cpmac_write(i32 %43, i32 %44, i32 0)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.net_device* %49)
  %51 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %52 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iounmap(i32 %53)
  %55 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %56 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource_byname(i32 %57, i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %59, %struct.resource** %5, align 8
  %60 = load %struct.resource*, %struct.resource** %5, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = call i32 @resource_size(%struct.resource* %63)
  %65 = call i32 @release_mem_region(i32 %62, i32 %64)
  %66 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %67 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @CPMAC_QUEUES, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %72 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %71, i32 0, i32 3
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %72, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %113, %35
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %76 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %73
  %80 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %81 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %79
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %93 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i32 @dma_unmap_single(i32* %91, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %104 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @kfree_skb(i64 %110)
  br label %112

112:                                              ; preds = %89, %79
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %73

116:                                              ; preds = %73
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i64, i64* @CPMAC_QUEUES, align 8
  %120 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %121 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add i64 %119, %123
  %125 = mul i64 4, %124
  %126 = trunc i64 %125 to i32
  %127 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %128 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %131 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dma_free_coherent(i32* %118, i32 %126, %struct.TYPE_2__* %129, i32 %132)
  ret i32 0
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @cpmac_hw_stop(%struct.net_device*) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @CPMAC_TX_PTR(i32) #1

declare dso_local i32 @CPMAC_RX_PTR(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(i32, i32, i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
