; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_rx_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_rx_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32 }

@MTK_LRO_RING_RELINQUISH_REQ = common dso_local global i32 0, align 4
@MTK_PDMA_LRO_CTRL_DW0 = common dso_local global i32 0, align 4
@MTK_LRO_RING_RELINQUISH_DONE = common dso_local global i32 0, align 4
@MTK_MAX_RX_RING_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*)* @mtk_hwlro_rx_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hwlro_rx_uninit(%struct.mtk_eth* %0) #0 {
  %2 = alloca %struct.mtk_eth*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %2, align 8
  %5 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %6 = load i32, i32* @MTK_LRO_RING_RELINQUISH_REQ, align 4
  %7 = load i32, i32* @MTK_PDMA_LRO_CTRL_DW0, align 4
  %8 = call i32 @mtk_w32(%struct.mtk_eth* %5, i32 %6, i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %14 = load i32, i32* @MTK_PDMA_LRO_CTRL_DW0, align 4
  %15 = call i32 @mtk_r32(%struct.mtk_eth* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MTK_LRO_RING_RELINQUISH_DONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @msleep(i32 20)
  br label %23

22:                                               ; preds = %12
  br label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %22, %9
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MTK_MAX_RX_RING_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @MTK_LRO_CTRL_DW2_CFG(i32 %33)
  %35 = call i32 @mtk_w32(%struct.mtk_eth* %32, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %41 = load i32, i32* @MTK_PDMA_LRO_CTRL_DW0, align 4
  %42 = call i32 @mtk_w32(%struct.mtk_eth* %40, i32 0, i32 %41)
  ret void
}

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MTK_LRO_CTRL_DW2_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
