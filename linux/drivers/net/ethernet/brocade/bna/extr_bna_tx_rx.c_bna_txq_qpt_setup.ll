; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_txq_qpt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_txq_qpt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_txq = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8**, i8* }
%struct.bna_mem_descr = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.bna_dma_addr = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_txq*, i32, i32, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*)* @bna_txq_qpt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_txq_qpt_setup(%struct.bna_txq* %0, i32 %1, i32 %2, %struct.bna_mem_descr* %3, %struct.bna_mem_descr* %4, %struct.bna_mem_descr* %5) #0 {
  %7 = alloca %struct.bna_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bna_mem_descr*, align 8
  %11 = alloca %struct.bna_mem_descr*, align 8
  %12 = alloca %struct.bna_mem_descr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bna_dma_addr, align 4
  %16 = alloca i32, align 4
  store %struct.bna_txq* %0, %struct.bna_txq** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bna_mem_descr* %3, %struct.bna_mem_descr** %10, align 8
  store %struct.bna_mem_descr* %4, %struct.bna_mem_descr** %11, align 8
  store %struct.bna_mem_descr* %5, %struct.bna_mem_descr** %12, align 8
  %17 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %10, align 8
  %18 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %22 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %10, align 8
  %26 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %30 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %10, align 8
  %34 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %37 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %41 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %45 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %11, align 8
  %48 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to i8**
  %51 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %52 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8** %50, i8*** %54, align 8
  %55 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %56 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %59 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i8* %57, i8** %61, align 8
  %62 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %63 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %13, align 8
  %65 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %66 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %65, i32 0, i32 1
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @BNA_GET_DMA_ADDR(%struct.TYPE_8__* %66, i32 %67)
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %115, %6
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %69
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %76 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %74, i8** %82, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr i8, i8* %84, i64 %83
  store i8* %85, i8** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @BNA_SET_DMA_ADDR(i32 %86, %struct.bna_dma_addr* %15)
  %88 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %15, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %91 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to %struct.bna_dma_addr*
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %94, i64 %96
  %98 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %97, i32 0, i32 1
  store i32 %89, i32* %98, align 4
  %99 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %15, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.bna_txq*, %struct.bna_txq** %7, align 8
  %102 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to %struct.bna_dma_addr*
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %105, i64 %107
  %109 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %108, i32 0, i32 0
  store i32 %100, i32* %109, align 4
  %110 = load i64, i64* @PAGE_SIZE, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %73
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %69

118:                                              ; preds = %69
  ret void
}

declare dso_local i32 @BNA_GET_DMA_ADDR(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, %struct.bna_dma_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
