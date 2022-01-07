; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32*, %struct.TYPE_2__*, %struct.mtk_tx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_tx_ring = type { i64, i32 }

@MTK_MAX_DEVS = common dso_local global i32 0, align 4
@MTK_QDMA = common dso_local global i32 0, align 4
@MTK_MAC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i32)* @mtk_poll_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_poll_tx(%struct.mtk_eth* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_tx_ring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %11, i32 0, i32 2
  store %struct.mtk_tx_ring* %12, %struct.mtk_tx_ring** %5, align 8
  %13 = load i32, i32* @MTK_MAX_DEVS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MTK_MAX_DEVS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %20 = mul nuw i64 4, %14
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %16, i32 0, i32 %21)
  %23 = mul nuw i64 4, %18
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i32* %19, i32 0, i32 %24)
  %26 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MTK_QDMA, align 4
  %32 = call i64 @MTK_HAS_CAPS(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mtk_poll_tx_qdma(%struct.mtk_eth* %35, i32 %36, i32* %16, i32* %19)
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @mtk_poll_tx_pdma(%struct.mtk_eth* %39, i32 %40, i32* %16, i32* %19)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %34
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %86, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MTK_MAC_COUNT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %43
  %48 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %16, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %47
  br label %86

63:                                               ; preds = %56
  %64 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %65 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %16, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %19, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netdev_completed_queue(i32 %70, i32 %74, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %16, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %63, %62
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %43

89:                                               ; preds = %43
  %90 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %91 = call i64 @mtk_queue_stopped(%struct.mtk_eth* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %5, align 8
  %95 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %94, i32 0, i32 1
  %96 = call i64 @atomic_read(i32* %95)
  %97 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %5, align 8
  %98 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %103 = call i32 @mtk_wake_queue(%struct.mtk_eth* %102)
  br label %104

104:                                              ; preds = %101, %93, %89
  %105 = load i32, i32* %9, align 4
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #2

declare dso_local i32 @mtk_poll_tx_qdma(%struct.mtk_eth*, i32, i32*, i32*) #2

declare dso_local i32 @mtk_poll_tx_pdma(%struct.mtk_eth*, i32, i32*, i32*) #2

declare dso_local i32 @netdev_completed_queue(i32, i32, i32) #2

declare dso_local i64 @mtk_queue_stopped(%struct.mtk_eth*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @mtk_wake_queue(%struct.mtk_eth*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
