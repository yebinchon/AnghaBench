; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i32 }

@MTK_PDMA_INT_MASK = common dso_local global i32 0, align 4
@MTK_RX_DONE_INT = common dso_local global i32 0, align 4
@MTK_PDMA_INT_STATUS = common dso_local global i32 0, align 4
@MTK_TX_DONE_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_eth*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.mtk_eth*
  store %struct.mtk_eth* %7, %struct.mtk_eth** %5, align 8
  %8 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %9 = load i32, i32* @MTK_PDMA_INT_MASK, align 4
  %10 = call i32 @mtk_r32(%struct.mtk_eth* %8, i32 %9)
  %11 = load i32, i32* @MTK_RX_DONE_INT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %16 = load i32, i32* @MTK_PDMA_INT_STATUS, align 4
  %17 = call i32 @mtk_r32(%struct.mtk_eth* %15, i32 %16)
  %18 = load i32, i32* @MTK_RX_DONE_INT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @mtk_handle_irq_rx(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %14
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %28 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mtk_r32(%struct.mtk_eth* %27, i32 %30)
  %32 = load i32, i32* @MTK_TX_DONE_INT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %37 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %38 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mtk_r32(%struct.mtk_eth* %36, i32 %39)
  %41 = load i32, i32* @MTK_TX_DONE_INT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @mtk_handle_irq_tx(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %35
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i32 @mtk_handle_irq_rx(i32, i8*) #1

declare dso_local i32 @mtk_handle_irq_tx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
