; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_setup_freeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_setup_freeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet = type { i32, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.gmac_queue_page*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.gmac_queue_page = type { i32 }
%union.queue_threshold = type { i32 }
%union.dma_skb_size = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_Q_BASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"queue ring base is not aligned\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"allocate %d pages for queue\0A\00", align 1
@GLOBAL_QUEUE_THRESHOLD_REG = common dso_local global i64 0, align 8
@GLOBAL_DMA_SKB_SIZE_REG = common dso_local global i64 0, align 8
@GLOBAL_SW_FREEQ_BASE_SIZE_REG = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gemini_ethernet*)* @geth_setup_freeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geth_setup_freeq(%struct.gemini_ethernet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gemini_ethernet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.queue_threshold, align 4
  %9 = alloca %union.dma_skb_size, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gmac_queue_page*, align 8
  %13 = alloca i32, align 4
  store %struct.gemini_ethernet* %0, %struct.gemini_ethernet** %3, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %16 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %20 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %24 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %31 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %34 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %40 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %39, i32 0, i32 2
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_9__* @dma_alloc_coherent(i32 %32, i32 %38, i32* %40, i32 %41)
  %43 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %44 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %43, i32 0, i32 4
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %46 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %1
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %211

52:                                               ; preds = %1
  %53 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %54 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DMA_Q_BASE_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %62 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_warn(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %190

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.gmac_queue_page* @kcalloc(i32 %66, i32 4, i32 %67)
  %69 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %70 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %69, i32 0, i32 6
  store %struct.gmac_queue_page* %68, %struct.gmac_queue_page** %70, align 8
  %71 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %72 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %71, i32 0, i32 6
  %73 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %72, align 8
  %74 = icmp ne %struct.gmac_queue_page* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %190

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %79 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %81 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dev_info(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %96, %76
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @geth_freeq_alloc_map_page(%struct.gemini_ethernet* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %150

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %101 = call i32 @geth_fill_freeq(%struct.gemini_ethernet* %100, i32 0)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %150

105:                                              ; preds = %99
  %106 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %107 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @GLOBAL_QUEUE_THRESHOLD_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl(i64 %110)
  %112 = bitcast %union.queue_threshold* %8 to i32*
  store i32 %111, i32* %112, align 4
  %113 = bitcast %union.queue_threshold* %8 to %struct.TYPE_6__*
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 32, i32* %114, align 4
  %115 = bitcast %union.queue_threshold* %8 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %118 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @GLOBAL_QUEUE_THRESHOLD_REG, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %124 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 1, %125
  %127 = bitcast %union.dma_skb_size* %9 to %struct.TYPE_7__*
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = bitcast %union.dma_skb_size* %9 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %132 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GLOBAL_DMA_SKB_SIZE_REG, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %138 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %141 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %139, %142
  %144 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %145 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @GLOBAL_SW_FREEQ_BASE_SIZE_REG, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  store i32 0, i32* %2, align 4
  br label %211

150:                                              ; preds = %104, %94
  br label %151

151:                                              ; preds = %154, %150
  %152 = load i32, i32* %11, align 4
  %153 = icmp ugt i32 %152, 0
  br i1 %153, label %154, label %185

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = add i32 %155, -1
  store i32 %156, i32* %11, align 4
  %157 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %158 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %157, i32 0, i32 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %4, align 4
  %162 = shl i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %169 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %174 = call i32 @dma_unmap_single(i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %176 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %175, i32 0, i32 6
  %177 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %177, i64 %179
  store %struct.gmac_queue_page* %180, %struct.gmac_queue_page** %12, align 8
  %181 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %12, align 8
  %182 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @put_page(i32 %183)
  br label %151

185:                                              ; preds = %151
  %186 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %187 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %186, i32 0, i32 6
  %188 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %187, align 8
  %189 = call i32 @kfree(%struct.gmac_queue_page* %188)
  br label %190

190:                                              ; preds = %185, %75, %60
  %191 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %192 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %195 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  %198 = shl i64 4, %197
  %199 = trunc i64 %198 to i32
  %200 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %201 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %200, i32 0, i32 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %204 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @dma_free_coherent(i32 %193, i32 %199, %struct.TYPE_9__* %202, i32 %205)
  %207 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %208 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %207, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %208, align 8
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %190, %105, %49
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_9__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.gmac_queue_page* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @geth_freeq_alloc_map_page(%struct.gemini_ethernet*, i32) #1

declare dso_local i32 @geth_fill_freeq(%struct.gemini_ethernet*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.gmac_queue_page*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
