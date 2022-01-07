; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_rx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_rx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_CTRL = common dso_local global i32 0, align 4
@DMA_EN = common dso_local global i32 0, align 4
@DMA_RING_BUF_EN_SHIFT = common dso_local global i32 0, align 4
@DESC_INDEX = common dso_local global i32 0, align 4
@GENET_Q16_RX_BD_CNT = common dso_local global i32 0, align 4
@TOTAL_DESC = common dso_local global i32 0, align 4
@DMA_RING_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcmgenet_init_rx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_init_rx_queues(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcmgenet_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.bcmgenet_priv* %11, %struct.bcmgenet_priv** %4, align 8
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %13 = load i32, i32* @DMA_CTRL, align 4
  %14 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DMA_EN, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @DMA_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DMA_CTRL, align 4
  %25 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %22, i32 %23, i32 %24)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %73, %1
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %26
  %35 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %38 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %44 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %42, %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %52 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %50, %55
  %57 = call i32 @bcmgenet_init_rx_ring(%struct.bcmgenet_priv* %35, i32 %36, i32 %41, i32 %48, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %34
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %123

62:                                               ; preds = %34
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %69 = add nsw i32 %67, %68
  %70 = shl i32 1, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %26

76:                                               ; preds = %26
  %77 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %78 = load i32, i32* @DESC_INDEX, align 4
  %79 = load i32, i32* @GENET_Q16_RX_BD_CNT, align 4
  %80 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %81 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %86 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %84, %89
  %91 = load i32, i32* @TOTAL_DESC, align 4
  %92 = call i32 @bcmgenet_init_rx_ring(%struct.bcmgenet_priv* %77, i32 %78, i32 %79, i32 %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %76
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %123

97:                                               ; preds = %76
  %98 = load i32, i32* @DESC_INDEX, align 4
  %99 = shl i32 1, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @DESC_INDEX, align 4
  %103 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %104 = add nsw i32 %102, %103
  %105 = shl i32 1, %104
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @DMA_RING_CFG, align 4
  %111 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %97
  %115 = load i32, i32* @DMA_EN, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %114, %97
  %119 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @DMA_CTRL, align 4
  %122 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %119, i32 %120, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %118, %95, %60
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_init_rx_ring(%struct.bcmgenet_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
