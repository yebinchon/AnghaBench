; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_tx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_CTRL = common dso_local global i32 0, align 4
@DMA_EN = common dso_local global i32 0, align 4
@DMA_ARBITER_SP = common dso_local global i32 0, align 4
@DMA_ARB_CTRL = common dso_local global i32 0, align 4
@DMA_RING_BUF_EN_SHIFT = common dso_local global i32 0, align 4
@GENET_Q0_PRIORITY = common dso_local global i32 0, align 4
@DESC_INDEX = common dso_local global i32 0, align 4
@GENET_Q16_TX_BD_CNT = common dso_local global i32 0, align 4
@TOTAL_DESC = common dso_local global i32 0, align 4
@DMA_PRIORITY_0 = common dso_local global i32 0, align 4
@DMA_PRIORITY_1 = common dso_local global i32 0, align 4
@DMA_PRIORITY_2 = common dso_local global i32 0, align 4
@DMA_RING_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcmgenet_init_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_init_tx_queues(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcmgenet_priv* %10, %struct.bcmgenet_priv** %3, align 8
  %11 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %13 = load i32, i32* @DMA_CTRL, align 4
  %14 = call i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DMA_EN, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @DMA_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DMA_CTRL, align 4
  %25 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %22, i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %26 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %27 = load i32, i32* @DMA_ARBITER_SP, align 4
  %28 = load i32, i32* @DMA_ARB_CTRL, align 4
  %29 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %26, i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %83, %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %30
  %39 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %48 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %46, %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %56 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = call i32 @bcmgenet_init_tx_ring(%struct.bcmgenet_priv* %39, i32 %40, i32 %45, i32 %52, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %68 = add nsw i32 %66, %67
  %69 = shl i32 1, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @GENET_Q0_PRIORITY, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @DMA_PRIO_REG_SHIFT(i32 %75)
  %77 = shl i32 %74, %76
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @DMA_PRIO_REG_INDEX(i32 %78)
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %38
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %30

86:                                               ; preds = %30
  %87 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %88 = load i32, i32* @DESC_INDEX, align 4
  %89 = load i32, i32* @GENET_Q16_TX_BD_CNT, align 4
  %90 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %91 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %96 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %94, %99
  %101 = load i32, i32* @TOTAL_DESC, align 4
  %102 = call i32 @bcmgenet_init_tx_ring(%struct.bcmgenet_priv* %87, i32 %88, i32 %89, i32 %100, i32 %101)
  %103 = load i32, i32* @DESC_INDEX, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @DESC_INDEX, align 4
  %108 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %109 = add nsw i32 %107, %108
  %110 = shl i32 1, %109
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @GENET_Q0_PRIORITY, align 4
  %114 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %115 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %113, %118
  %120 = load i32, i32* @DESC_INDEX, align 4
  %121 = call i32 @DMA_PRIO_REG_SHIFT(i32 %120)
  %122 = shl i32 %119, %121
  %123 = load i32, i32* @DESC_INDEX, align 4
  %124 = call i64 @DMA_PRIO_REG_INDEX(i32 %123)
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 4
  %128 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DMA_PRIORITY_0, align 4
  %132 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %128, i32 %130, i32 %131)
  %133 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DMA_PRIORITY_1, align 4
  %137 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %133, i32 %135, i32 %136)
  %138 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DMA_PRIORITY_2, align 4
  %142 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %138, i32 %140, i32 %141)
  %143 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @DMA_RING_CFG, align 4
  %146 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %86
  %150 = load i32, i32* @DMA_EN, align 4
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %149, %86
  %154 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @DMA_CTRL, align 4
  %157 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %154, i32 %155, i32 %156)
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_init_tx_ring(%struct.bcmgenet_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @DMA_PRIO_REG_SHIFT(i32) #1

declare dso_local i64 @DMA_PRIO_REG_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
