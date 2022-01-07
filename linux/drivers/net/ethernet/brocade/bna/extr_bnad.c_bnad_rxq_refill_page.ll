; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_refill_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_refill_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bna_rcb = type { i64, i64, i32, i64, %struct.TYPE_5__*, %struct.bnad_rx_unmap_q* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bnad_rx_unmap_q = type { i64, i64, i64, %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { i64, %struct.TYPE_6__, %struct.page* }
%struct.TYPE_6__ = type { i64 }
%struct.page = type { i32 }
%struct.bna_rxq_entry = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@rxbuf_alloc_failed = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@rxbuf_map_failed = common dso_local global i32 0, align 4
@BNAD_RXQ_POST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, %struct.bna_rcb*, i64)* @bnad_rxq_refill_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_rxq_refill_page(%struct.bnad* %0, %struct.bna_rcb* %1, i64 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_rcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bnad_rx_unmap_q*, align 8
  %11 = alloca %struct.bnad_rx_unmap*, align 8
  %12 = alloca %struct.bnad_rx_unmap*, align 8
  %13 = alloca %struct.bna_rxq_entry*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %19 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %18, i32 0, i32 5
  %20 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %19, align 8
  store %struct.bnad_rx_unmap_q* %20, %struct.bnad_rx_unmap_q** %10, align 8
  %21 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %22 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %25 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %29 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 %27, %30
  store i64 %31, i64* %16, align 8
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %155, %3
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %6, align 8
  %35 = icmp ne i64 %33, 0
  br i1 %35, label %36, label %171

36:                                               ; preds = %32
  %37 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %38 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %37, i32 0, i32 3
  %39 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %39, i64 %40
  store %struct.bnad_rx_unmap* %41, %struct.bnad_rx_unmap** %11, align 8
  %42 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %43 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = load i32, i32* @__GFP_COMP, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %51 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.page* @alloc_pages(i32 %49, i64 %52)
  store %struct.page* %53, %struct.page** %14, align 8
  store i64 0, i64* %15, align 8
  br label %74

54:                                               ; preds = %36
  %55 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %56 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %55, i32 0, i32 3
  %57 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %56, align 8
  %58 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %59 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %57, i64 %60
  store %struct.bnad_rx_unmap* %61, %struct.bnad_rx_unmap** %12, align 8
  %62 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %63 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %62, i32 0, i32 2
  %64 = load %struct.page*, %struct.page** %63, align 8
  store %struct.page* %64, %struct.page** %14, align 8
  %65 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %66 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %69 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  store i64 %71, i64* %15, align 8
  %72 = load %struct.page*, %struct.page** %14, align 8
  %73 = call i32 @get_page(%struct.page* %72)
  br label %74

74:                                               ; preds = %54, %46
  %75 = load %struct.page*, %struct.page** %14, align 8
  %76 = icmp ne %struct.page* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load %struct.bnad*, %struct.bnad** %4, align 8
  %83 = load i32, i32* @rxbuf_alloc_failed, align 4
  %84 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %82, i32 %83)
  %85 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %86 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %85, i32 0, i32 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %172

91:                                               ; preds = %74
  %92 = load %struct.bnad*, %struct.bnad** %4, align 8
  %93 = getelementptr inbounds %struct.bnad, %struct.bnad* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.page*, %struct.page** %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %99 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i32 @dma_map_page(i32* %95, %struct.page* %96, i64 %97, i64 %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.bnad*, %struct.bnad** %4, align 8
  %104 = getelementptr inbounds %struct.bnad, %struct.bnad* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %17, align 4
  %108 = call i64 @dma_mapping_error(i32* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %91
  %111 = load %struct.page*, %struct.page** %14, align 8
  %112 = call i32 @put_page(%struct.page* %111)
  %113 = load %struct.bnad*, %struct.bnad** %4, align 8
  %114 = load i32, i32* @rxbuf_map_failed, align 4
  %115 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %113, i32 %114)
  %116 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %117 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %116, i32 0, i32 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %172

122:                                              ; preds = %91
  %123 = load %struct.page*, %struct.page** %14, align 8
  %124 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %125 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %124, i32 0, i32 2
  store %struct.page* %123, %struct.page** %125, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %128 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %130 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %129, i32 0, i32 1
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @dma_unmap_addr_set(%struct.TYPE_6__* %130, i32 %131, i32 %132)
  %134 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %135 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %138 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i64 %136, i64* %139, align 8
  %140 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %141 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %15, align 8
  %145 = load i64, i64* %15, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %122
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %151 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %155

152:                                              ; preds = %122
  %153 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %154 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %153, i32 0, i32 1
  store i64 -1, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %148
  %156 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %157 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.bna_rxq_entry*
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds %struct.bna_rxq_entry, %struct.bna_rxq_entry* %159, i64 %160
  store %struct.bna_rxq_entry* %161, %struct.bna_rxq_entry** %13, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.bna_rxq_entry*, %struct.bna_rxq_entry** %13, align 8
  %164 = getelementptr inbounds %struct.bna_rxq_entry, %struct.bna_rxq_entry* %163, i32 0, i32 0
  %165 = call i32 @BNA_SET_DMA_ADDR(i32 %162, i32* %164)
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @BNA_QE_INDX_INC(i64 %166, i64 %167)
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %7, align 8
  br label %32

171:                                              ; preds = %32
  br label %172

172:                                              ; preds = %171, %110, %81
  %173 = load i64, i64* %7, align 8
  %174 = call i64 @likely(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = load i64, i64* %8, align 8
  %178 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %179 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = call i32 (...) @smp_mb()
  %181 = load i32, i32* @BNAD_RXQ_POST_OK, align 4
  %182 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %183 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %182, i32 0, i32 2
  %184 = call i64 @test_bit(i32 %181, i32* %183)
  %185 = call i64 @likely(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %189 = call i32 @bna_rxq_prod_indx_doorbell(%struct.bna_rcb* %188)
  br label %190

190:                                              ; preds = %187, %176
  br label %191

191:                                              ; preds = %190, %172
  %192 = load i64, i64* %7, align 8
  ret i64 %192
}

declare dso_local %struct.page* @alloc_pages(i32, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, i32*) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i64) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bna_rxq_prod_indx_doorbell(%struct.bna_rcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
