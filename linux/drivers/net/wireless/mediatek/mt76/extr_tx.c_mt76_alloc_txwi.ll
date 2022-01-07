; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_alloc_txwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_alloc_txwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_txwi_cache = type { i32 }
%struct.mt76_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt76_txwi_cache* (%struct.mt76_dev*)* @mt76_alloc_txwi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt76_txwi_cache* @mt76_alloc_txwi(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_txwi_cache*, align 8
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_txwi_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @L1_CACHE_ALIGN(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i32* @devm_kzalloc(i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store %struct.mt76_txwi_cache* null, %struct.mt76_txwi_cache** %2, align 8
  br label %51

26:                                               ; preds = %1
  %27 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_map_single(i32 %29, i32* %30, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = bitcast i32* %45 to %struct.mt76_txwi_cache*
  store %struct.mt76_txwi_cache* %46, %struct.mt76_txwi_cache** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %4, align 8
  %49 = getelementptr inbounds %struct.mt76_txwi_cache, %struct.mt76_txwi_cache* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %4, align 8
  store %struct.mt76_txwi_cache* %50, %struct.mt76_txwi_cache** %2, align 8
  br label %51

51:                                               ; preds = %26, %25
  %52 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %2, align 8
  ret %struct.mt76_txwi_cache* %52
}

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i32* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
