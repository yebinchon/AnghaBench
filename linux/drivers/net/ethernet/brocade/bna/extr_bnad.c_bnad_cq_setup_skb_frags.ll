; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_setup_skb_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_setup_skb_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ccb = type { i64, i32, %struct.bna_rcb**, %struct.bna_cq_entry* }
%struct.bna_rcb = type { i64, i32, %struct.bnad*, %struct.bnad_rx_unmap_q* }
%struct.bnad = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnad_rx_unmap_q = type { %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { %struct.TYPE_6__, i32*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.bna_cq_entry = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@dma_addr = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ccb*, %struct.sk_buff*, i64)* @bnad_cq_setup_skb_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cq_setup_skb_frags(%struct.bna_ccb* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.bna_ccb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bna_rcb*, align 8
  %8 = alloca %struct.bnad*, align 8
  %9 = alloca %struct.bnad_rx_unmap_q*, align 8
  %10 = alloca %struct.bna_cq_entry*, align 8
  %11 = alloca %struct.bna_cq_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bnad_rx_unmap*, align 8
  %16 = alloca i64, align 8
  store %struct.bna_ccb* %0, %struct.bna_ccb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.bna_ccb*, %struct.bna_ccb** %4, align 8
  %18 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %17, i32 0, i32 3
  %19 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %18, align 8
  store %struct.bna_cq_entry* %19, %struct.bna_cq_entry** %10, align 8
  %20 = load %struct.bna_ccb*, %struct.bna_ccb** %4, align 8
  %21 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %10, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %23, i64 %24
  store %struct.bna_cq_entry* %25, %struct.bna_cq_entry** %11, align 8
  %26 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %11, align 8
  %27 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @bna_is_small_rxq(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.bna_ccb*, %struct.bna_ccb** %4, align 8
  %33 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %32, i32 0, i32 2
  %34 = load %struct.bna_rcb**, %struct.bna_rcb*** %33, align 8
  %35 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %34, i64 1
  %36 = load %struct.bna_rcb*, %struct.bna_rcb** %35, align 8
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.bna_ccb*, %struct.bna_ccb** %4, align 8
  %39 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %38, i32 0, i32 2
  %40 = load %struct.bna_rcb**, %struct.bna_rcb*** %39, align 8
  %41 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %40, i64 0
  %42 = load %struct.bna_rcb*, %struct.bna_rcb** %41, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi %struct.bna_rcb* [ %36, %31 ], [ %42, %37 ]
  store %struct.bna_rcb* %44, %struct.bna_rcb** %7, align 8
  %45 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %46 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %45, i32 0, i32 3
  %47 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %46, align 8
  store %struct.bnad_rx_unmap_q* %47, %struct.bnad_rx_unmap_q** %9, align 8
  %48 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %49 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %48, i32 0, i32 2
  %50 = load %struct.bnad*, %struct.bnad** %49, align 8
  store %struct.bnad* %50, %struct.bnad** %8, align 8
  %51 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %52 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  %55 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %54, i32 0, i32 0
  %56 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %56, i64 %57
  %59 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @page_address(i32* %60)
  %62 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  %63 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %62, i32 0, i32 0
  %64 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %64, i64 %65
  %67 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %61, %68
  %70 = call i32 @prefetch(i64 %69)
  br label %71

71:                                               ; preds = %75, %43
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %6, align 8
  %74 = icmp ne i64 %72, 0
  br i1 %74, label %75, label %143

75:                                               ; preds = %71
  %76 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  %77 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %76, i32 0, i32 0
  %78 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %78, i64 %79
  store %struct.bnad_rx_unmap* %80, %struct.bnad_rx_unmap** %15, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.bna_rcb*, %struct.bna_rcb** %7, align 8
  %83 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @BNA_QE_INDX_INC(i64 %81, i32 %84)
  %86 = load %struct.bnad*, %struct.bnad** %8, align 8
  %87 = getelementptr inbounds %struct.bnad, %struct.bnad* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %91 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %90, i32 0, i32 0
  %92 = load i32, i32* @dma_addr, align 4
  %93 = call i32 @dma_unmap_addr(%struct.TYPE_6__* %91, i32 %92)
  %94 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %95 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %99 = call i32 @dma_unmap_page(i32* %89, i32 %93, i64 %97, i32 %98)
  %100 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %11, align 8
  %101 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ntohs(i32 %102)
  store i64 %103, i64* %16, align 8
  %104 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %105 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %14, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %123 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %126 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i32 @skb_fill_page_desc(%struct.sk_buff* %117, i32 %121, i32* %124, i64 %127, i64 %128)
  %130 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %131 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  %132 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %15, align 8
  %133 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.bna_ccb*, %struct.bna_ccb** %4, align 8
  %137 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @BNA_QE_INDX_INC(i64 %135, i32 %138)
  %140 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %10, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %140, i64 %141
  store %struct.bna_cq_entry* %142, %struct.bna_cq_entry** %11, align 8
  br label %71

143:                                              ; preds = %71
  %144 = load i64, i64* %14, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %148, %144
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  %151 = load i64, i64* %14, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  ret void
}

declare dso_local i64 @bna_is_small_rxq(i32) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i64 @page_address(i32*) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i64, i64) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
