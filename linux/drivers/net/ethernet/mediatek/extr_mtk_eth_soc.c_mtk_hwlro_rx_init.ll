; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32 }

@MTK_RING_AUTO_LERAN_MODE = common dso_local global i32 0, align 4
@MTK_RING_VLD = common dso_local global i32 0, align 4
@MTK_RING_AGE_TIME_H = common dso_local global i32 0, align 4
@MTK_RING_AGE_TIME_L = common dso_local global i32 0, align 4
@MTK_RING_MAX_AGG_TIME = common dso_local global i32 0, align 4
@MTK_RING_MAX_AGG_CNT_L = common dso_local global i32 0, align 4
@MTK_RING_MAX_AGG_CNT_H = common dso_local global i32 0, align 4
@MTK_MAX_RX_RING_NUM = common dso_local global i32 0, align 4
@MTK_L3_CKS_UPD_EN = common dso_local global i32 0, align 4
@MTK_LRO_ALT_PKT_CNT_MODE = common dso_local global i32 0, align 4
@MTK_HW_LRO_BW_THRE = common dso_local global i32 0, align 4
@MTK_PDMA_LRO_CTRL_DW2 = common dso_local global i32 0, align 4
@MTK_HW_LRO_REPLACE_DELTA = common dso_local global i32 0, align 4
@MTK_PDMA_LRO_ALT_SCORE_DELTA = common dso_local global i32 0, align 4
@MTK_HW_LRO_TIMER_UNIT = common dso_local global i32 0, align 4
@MTK_HW_LRO_REFRESH_TIME = common dso_local global i32 0, align 4
@MTK_PDMA_LRO_ALT_REFRESH_TIMER = common dso_local global i32 0, align 4
@MTK_ADMA_MODE = common dso_local global i32 0, align 4
@MTK_HW_LRO_MAX_AGG_CNT = common dso_local global i32 0, align 4
@MTK_LRO_MIN_RXD_SDL = common dso_local global i32 0, align 4
@MTK_LRO_EN = common dso_local global i32 0, align 4
@MTK_PDMA_LRO_CTRL_DW3 = common dso_local global i32 0, align 4
@MTK_PDMA_LRO_CTRL_DW0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_hwlro_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hwlro_rx_init(%struct.mtk_eth* %0) #0 {
  %2 = alloca %struct.mtk_eth*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @MTK_RING_AUTO_LERAN_MODE, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MTK_RING_VLD, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @MTK_RING_AGE_TIME_H, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MTK_RING_AGE_TIME_L, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MTK_RING_MAX_AGG_TIME, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @MTK_RING_MAX_AGG_CNT_L, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @MTK_RING_MAX_AGG_CNT_H, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %50, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MTK_MAX_RX_RING_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @MTK_LRO_CTRL_DW1_CFG(i32 %37)
  %39 = call i32 @mtk_w32(%struct.mtk_eth* %35, i32 %36, i32 %38)
  %40 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @MTK_LRO_CTRL_DW2_CFG(i32 %42)
  %44 = call i32 @mtk_w32(%struct.mtk_eth* %40, i32 %41, i32 %43)
  %45 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @MTK_LRO_CTRL_DW3_CFG(i32 %47)
  %49 = call i32 @mtk_w32(%struct.mtk_eth* %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32, i32* @MTK_L3_CKS_UPD_EN, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @MTK_LRO_ALT_PKT_CNT_MODE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %61 = load i32, i32* @MTK_HW_LRO_BW_THRE, align 4
  %62 = load i32, i32* @MTK_PDMA_LRO_CTRL_DW2, align 4
  %63 = call i32 @mtk_w32(%struct.mtk_eth* %60, i32 %61, i32 %62)
  %64 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %65 = load i32, i32* @MTK_HW_LRO_REPLACE_DELTA, align 4
  %66 = load i32, i32* @MTK_PDMA_LRO_ALT_SCORE_DELTA, align 4
  %67 = call i32 @mtk_w32(%struct.mtk_eth* %64, i32 %65, i32 %66)
  %68 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %69 = load i32, i32* @MTK_HW_LRO_TIMER_UNIT, align 4
  %70 = shl i32 %69, 16
  %71 = load i32, i32* @MTK_HW_LRO_REFRESH_TIME, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MTK_PDMA_LRO_ALT_REFRESH_TIMER, align 4
  %74 = call i32 @mtk_w32(%struct.mtk_eth* %68, i32 %72, i32 %73)
  %75 = load i32, i32* @MTK_ADMA_MODE, align 4
  %76 = load i32, i32* @MTK_HW_LRO_MAX_AGG_CNT, align 4
  %77 = and i32 %76, 255
  %78 = or i32 %75, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @MTK_LRO_MIN_RXD_SDL, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @MTK_LRO_EN, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @MTK_PDMA_LRO_CTRL_DW3, align 4
  %90 = call i32 @mtk_w32(%struct.mtk_eth* %87, i32 %88, i32 %89)
  %91 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MTK_PDMA_LRO_CTRL_DW0, align 4
  %94 = call i32 @mtk_w32(%struct.mtk_eth* %91, i32 %92, i32 %93)
  ret i32 0
}

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @MTK_LRO_CTRL_DW1_CFG(i32) #1

declare dso_local i32 @MTK_LRO_CTRL_DW2_CFG(i32) #1

declare dso_local i32 @MTK_LRO_CTRL_DW3_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
