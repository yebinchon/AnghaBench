; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_dma_cleanup(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %4 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %4, i32 0, i32 3
  %6 = call i32 @netif_napi_del(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mt76_dma_tx_cleanup(%struct.mt76_dev* %15, i32 %16, i32 1)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %7

21:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %25 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @netif_napi_del(i32* %35)
  %37 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %38 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @mt76_dma_rx_cleanup(%struct.mt76_dev* %37, i32* %43)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %22

48:                                               ; preds = %22
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt76_dma_tx_cleanup(%struct.mt76_dev*, i32, i32) #1

declare dso_local i32 @mt76_dma_rx_cleanup(%struct.mt76_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
