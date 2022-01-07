; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_tx_qdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_tx_qdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.mtk_tx_ring }
%struct.mtk_tx_ring = type { i32, %struct.mtk_tx_dma* }
%struct.mtk_tx_dma = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.mtk_tx_buf = type { i32, %struct.sk_buff* }

@MTK_QTX_CRX_PTR = common dso_local global i32 0, align 4
@MTK_QTX_DRX_PTR = common dso_local global i32 0, align 4
@TX_DMA_OWNER_CPU = common dso_local global i32 0, align 4
@MTK_TX_FLAGS_FPORT1 = common dso_local global i32 0, align 4
@MTK_DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i32, i32*, i32*)* @mtk_poll_tx_qdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_poll_tx_qdma(%struct.mtk_eth* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mtk_eth*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mtk_tx_ring*, align 8
  %10 = alloca %struct.mtk_tx_dma*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.mtk_tx_buf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %17, i32 0, i32 0
  store %struct.mtk_tx_ring* %18, %struct.mtk_tx_ring** %9, align 8
  %19 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %20 = load i32, i32* @MTK_QTX_CRX_PTR, align 4
  %21 = call i64 @mtk_r32(%struct.mtk_eth* %19, i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %23 = load i32, i32* @MTK_QTX_DRX_PTR, align 4
  %24 = call i64 @mtk_r32(%struct.mtk_eth* %22, i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call %struct.mtk_tx_dma* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring* %25, i64 %26)
  store %struct.mtk_tx_dma* %27, %struct.mtk_tx_dma** %10, align 8
  br label %28

28:                                               ; preds = %96, %4
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %107

37:                                               ; preds = %35
  %38 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %10, align 8
  %39 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %41 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %42 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %10, align 8
  %43 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.mtk_tx_dma* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring* %41, i64 %44)
  store %struct.mtk_tx_dma* %45, %struct.mtk_tx_dma** %10, align 8
  %46 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %10, align 8
  %47 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TX_DMA_OWNER_CPU, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %107

53:                                               ; preds = %37
  %54 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %55 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %10, align 8
  %56 = call %struct.mtk_tx_buf* @mtk_desc_to_tx_buf(%struct.mtk_tx_ring* %54, %struct.mtk_tx_dma* %55)
  store %struct.mtk_tx_buf* %56, %struct.mtk_tx_buf** %12, align 8
  %57 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %12, align 8
  %58 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MTK_TX_FLAGS_FPORT1, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 1, i32* %16, align 4
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %12, align 8
  %66 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %65, i32 0, i32 1
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %11, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %107

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load i64, i64* @MTK_DMA_DUMMY_DESC, align 8
  %74 = inttoptr i64 %73 to %struct.sk_buff*
  %75 = icmp ne %struct.sk_buff* %72, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %85, %79
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %76, %71
  %97 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %98 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %12, align 8
  %99 = call i32 @mtk_tx_unmap(%struct.mtk_eth* %97, %struct.mtk_tx_buf* %98)
  %100 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %10, align 8
  %101 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %102 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %101, i32 0, i32 1
  store %struct.mtk_tx_dma* %100, %struct.mtk_tx_dma** %102, align 8
  %103 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %104 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %103, i32 0, i32 0
  %105 = call i32 @atomic_inc(i32* %104)
  %106 = load i64, i64* %15, align 8
  store i64 %106, i64* %13, align 8
  br label %28

107:                                              ; preds = %70, %52, %35
  %108 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i32, i32* @MTK_QTX_CRX_PTR, align 4
  %111 = call i32 @mtk_w32(%struct.mtk_eth* %108, i64 %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local %struct.mtk_tx_dma* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring*, i64) #1

declare dso_local %struct.mtk_tx_buf* @mtk_desc_to_tx_buf(%struct.mtk_tx_ring*, %struct.mtk_tx_dma*) #1

declare dso_local i32 @mtk_tx_unmap(%struct.mtk_eth*, %struct.mtk_tx_buf*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
