; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_unmap_partial_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_unmap_partial_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.happy_meal = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.happy_meal_txd* }
%struct.happy_meal_txd = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TXFLAG_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.happy_meal*, i64, i64, i64, i64)* @unmap_partial_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_partial_tx_skb(%struct.happy_meal* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.happy_meal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.happy_meal_txd*, align 8
  %12 = alloca %struct.happy_meal_txd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.happy_meal* %0, %struct.happy_meal** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %16 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %18, align 8
  %20 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %19, i64 0
  store %struct.happy_meal_txd* %20, %struct.happy_meal_txd** %11, align 8
  %21 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %22 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(i32 %23, i64 %24, i64 %25, i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @NEXT_TX(i64 %28)
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %34, %5
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %35, i64 %36
  store %struct.happy_meal_txd* %37, %struct.happy_meal_txd** %12, align 8
  %38 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %39 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %12, align 8
  %40 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %39, i32 0, i32 1
  %41 = call i64 @hme_read_desc32(%struct.happy_meal* %38, i32* %40)
  store i64 %41, i64* %13, align 8
  %42 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %43 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %12, align 8
  %44 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %43, i32 0, i32 0
  %45 = call i64 @hme_read_desc32(%struct.happy_meal* %42, i32* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* @TXFLAG_SIZE, align 8
  %47 = load i64, i64* %14, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %14, align 8
  %49 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %50 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_unmap_page(i32 %51, i64 %52, i64 %53, i32 %54)
  br label %30

56:                                               ; preds = %30
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i64 @hme_read_desc32(%struct.happy_meal*, i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
