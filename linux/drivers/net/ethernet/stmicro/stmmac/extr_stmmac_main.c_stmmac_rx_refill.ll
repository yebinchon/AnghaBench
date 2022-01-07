; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i64, i32, i64, i32, i64, i64, i32, %struct.stmmac_rx_queue* }
%struct.stmmac_rx_queue = type { i32, i64, i64, i64, i32, %struct.dma_desc*, i64, %struct.stmmac_rx_buffer* }
%struct.dma_desc = type { i32 }
%struct.stmmac_rx_buffer = type { i8*, i8*, i8*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64)* @stmmac_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_rx_refill(%struct.stmmac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stmmac_rx_buffer*, align 8
  %10 = alloca %struct.dma_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 7
  %14 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %14, i64 %15
  store %struct.stmmac_rx_queue* %16, %struct.stmmac_rx_queue** %5, align 8
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @stmmac_rx_dirty(%struct.stmmac_priv* %17, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %21 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i32 @DIV_ROUND_UP(i32 %25, i32 %26)
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %179, %2
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp sgt i32 %31, 0
  br i1 %33, label %34, label %190

34:                                               ; preds = %30
  %35 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %36 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %35, i32 0, i32 7
  %37 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %37, i64 %39
  store %struct.stmmac_rx_buffer* %40, %struct.stmmac_rx_buffer** %9, align 8
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %47 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = inttoptr i64 %51 to %struct.dma_desc*
  store %struct.dma_desc* %52, %struct.dma_desc** %10, align 8
  br label %60

53:                                               ; preds = %34
  %54 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %55 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %54, i32 0, i32 5
  %56 = load %struct.dma_desc*, %struct.dma_desc** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %56, i64 %58
  store %struct.dma_desc* %59, %struct.dma_desc** %10, align 8
  br label %60

60:                                               ; preds = %53, %45
  %61 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %67 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @page_pool_dev_alloc_pages(i32 %68)
  %70 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %73 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %190

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %60
  %79 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %80 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %85 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %116, label %88

88:                                               ; preds = %83
  %89 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %90 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @page_pool_dev_alloc_pages(i32 %91)
  %93 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %94 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %96 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  br label %190

100:                                              ; preds = %88
  %101 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %102 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @page_pool_get_dma_addr(i8* %103)
  %105 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %106 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %108 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %111 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %115 = call i32 @dma_sync_single_for_device(i32 %109, i8* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %100, %83, %78
  %117 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %118 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @page_pool_get_dma_addr(i8* %119)
  %121 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %122 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %124 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %127 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %131 = call i32 @dma_sync_single_for_device(i32 %125, i8* %128, i32 %129, i32 %130)
  %132 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %133 = load %struct.dma_desc*, %struct.dma_desc** %10, align 8
  %134 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %135 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @stmmac_set_desc_addr(%struct.stmmac_priv* %132, %struct.dma_desc* %133, i8* %136)
  %138 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %139 = load %struct.dma_desc*, %struct.dma_desc** %10, align 8
  %140 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %9, align 8
  %141 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @stmmac_set_desc_sec_addr(%struct.stmmac_priv* %138, %struct.dma_desc* %139, i8* %142)
  %144 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %145 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %146 = load %struct.dma_desc*, %struct.dma_desc** %10, align 8
  %147 = call i32 @stmmac_refill_desc3(%struct.stmmac_priv* %144, %struct.stmmac_rx_queue* %145, %struct.dma_desc* %146)
  %148 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %149 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %153 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %156 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %160 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %163 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %116
  %167 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %168 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %166, %116
  %170 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %171 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %176 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br label %179

179:                                              ; preds = %174, %169
  %180 = phi i1 [ false, %169 ], [ %178, %174 ]
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %11, align 4
  %182 = call i32 (...) @dma_wmb()
  %183 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %184 = load %struct.dma_desc*, %struct.dma_desc** %10, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @stmmac_set_rx_owner(%struct.stmmac_priv* %183, %struct.dma_desc* %184, i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @DMA_RX_SIZE, align 4
  %189 = call i32 @STMMAC_GET_ENTRY(i32 %187, i32 %188)
  store i32 %189, i32* %8, align 4
  br label %30

190:                                              ; preds = %99, %76, %30
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %193 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %195 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %198 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = zext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = add i64 %196, %201
  %203 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %204 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %206 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %207 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %210 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @stmmac_set_rx_tail_ptr(%struct.stmmac_priv* %205, i32 %208, i64 %211, i64 %212)
  ret void
}

declare dso_local i32 @stmmac_rx_dirty(%struct.stmmac_priv*, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @page_pool_dev_alloc_pages(i32) #1

declare dso_local i8* @page_pool_get_dma_addr(i8*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i8*, i32, i32) #1

declare dso_local i32 @stmmac_set_desc_addr(%struct.stmmac_priv*, %struct.dma_desc*, i8*) #1

declare dso_local i32 @stmmac_set_desc_sec_addr(%struct.stmmac_priv*, %struct.dma_desc*, i8*) #1

declare dso_local i32 @stmmac_refill_desc3(%struct.stmmac_priv*, %struct.stmmac_rx_queue*, %struct.dma_desc*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @stmmac_set_rx_owner(%struct.stmmac_priv*, %struct.dma_desc*, i32) #1

declare dso_local i32 @STMMAC_GET_ENTRY(i32, i32) #1

declare dso_local i32 @stmmac_set_rx_tail_ptr(%struct.stmmac_priv*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
