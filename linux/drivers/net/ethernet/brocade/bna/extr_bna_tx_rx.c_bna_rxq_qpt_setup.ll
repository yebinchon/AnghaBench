; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxq_qpt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxq_qpt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxq = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8**, i8* }
%struct.bna_rxp = type { i32 }
%struct.bna_mem_descr = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.bna_dma_addr = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxq*, %struct.bna_rxp*, i8*, i8*, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*)* @bna_rxq_qpt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxq_qpt_setup(%struct.bna_rxq* %0, %struct.bna_rxp* %1, i8* %2, i8* %3, %struct.bna_mem_descr* %4, %struct.bna_mem_descr* %5, %struct.bna_mem_descr* %6) #0 {
  %8 = alloca %struct.bna_rxq*, align 8
  %9 = alloca %struct.bna_rxp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bna_mem_descr*, align 8
  %13 = alloca %struct.bna_mem_descr*, align 8
  %14 = alloca %struct.bna_mem_descr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bna_dma_addr, align 4
  %18 = alloca i32, align 4
  store %struct.bna_rxq* %0, %struct.bna_rxq** %8, align 8
  store %struct.bna_rxp* %1, %struct.bna_rxp** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.bna_mem_descr* %4, %struct.bna_mem_descr** %12, align 8
  store %struct.bna_mem_descr* %5, %struct.bna_mem_descr** %13, align 8
  store %struct.bna_mem_descr* %6, %struct.bna_mem_descr** %14, align 8
  %19 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %20 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %24 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %28 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %32 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %36 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %39 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %44 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %48 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %13, align 8
  %51 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to i8**
  %54 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %55 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8** %53, i8*** %57, align 8
  %58 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %14, align 8
  %59 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %62 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  %65 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %14, align 8
  %66 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %15, align 8
  %68 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %14, align 8
  %69 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %68, i32 0, i32 1
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @BNA_GET_DMA_ADDR(%struct.TYPE_8__* %69, i32 %70)
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %121, %7
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %75 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %72
  %80 = load i8*, i8** %15, align 8
  %81 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %82 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %80, i8** %88, align 8
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr i8, i8* %90, i64 %89
  store i8* %91, i8** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @BNA_SET_DMA_ADDR(i32 %92, %struct.bna_dma_addr* %17)
  %94 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %17, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %97 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = bitcast i8* %99 to %struct.bna_dma_addr*
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %100, i64 %102
  %104 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %103, i32 0, i32 1
  store i32 %95, i32* %104, align 4
  %105 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %17, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bna_rxq*, %struct.bna_rxq** %8, align 8
  %108 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to %struct.bna_dma_addr*
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %111, i64 %113
  %115 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %114, i32 0, i32 0
  store i32 %106, i32* %115, align 4
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %79
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  br label %72

124:                                              ; preds = %72
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
