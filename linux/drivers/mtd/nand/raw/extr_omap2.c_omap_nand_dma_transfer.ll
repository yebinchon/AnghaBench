; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { %struct.TYPE_10__, %struct.TYPE_11__*, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dma_async_tx_descriptor = type { i32*, i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Couldn't DMA map a %d byte buffer\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@omap_nand_dma_callback = common dso_local global i32 0, align 4
@PREFETCH_FIFOTHRESHOLD_MAX = common dso_local global i32 0, align 4
@loops_per_jiffy = common dso_local global i64 0, align 8
@OMAP_NAND_TIMEOUT_MS = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i8*, i32, i32)* @omap_nand_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_nand_dma_transfer(%struct.mtd_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_nand_info*, align 8
  %11 = alloca %struct.dma_async_tx_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %20 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %19)
  store %struct.omap_nand_info* %20, %struct.omap_nand_info** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @virt_addr_valid(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %155

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @sg_init_one(%struct.scatterlist* %13, i8* %34, i32 %35)
  %37 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %38 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dma_map_sg(i32 %43, %struct.scatterlist* %13, i32 1, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %33
  %49 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %50 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %49, i32 0, i32 5
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %155

55:                                               ; preds = %33
  %56 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %57 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %69 = load i32, i32* @DMA_CTRL_ACK, align 4
  %70 = or i32 %68, %69
  %71 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.TYPE_11__* %58, %struct.scatterlist* %13, i32 %59, i32 %67, i32 %70)
  store %struct.dma_async_tx_descriptor* %71, %struct.dma_async_tx_descriptor** %11, align 8
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %73 = icmp ne %struct.dma_async_tx_descriptor* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %145

75:                                               ; preds = %66
  %76 = load i32, i32* @omap_nand_dma_callback, align 4
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %80 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %79, i32 0, i32 4
  %81 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %82 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %84 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %83)
  %85 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %86 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %85, i32 0, i32 4
  %87 = call i32 @init_completion(i32* %86)
  %88 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %89 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @dma_async_issue_pending(%struct.TYPE_11__* %90)
  %92 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %93 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PREFETCH_FIFOTHRESHOLD_MAX, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %99 = call i32 @omap_prefetch_enable(i32 %94, i32 %95, i32 1, i32 %96, i32 %97, %struct.omap_nand_info* %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %75
  br label %145

103:                                              ; preds = %75
  %104 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %105 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %104, i32 0, i32 4
  %106 = call i32 @wait_for_completion(i32* %105)
  store i64 0, i64* %14, align 8
  %107 = load i64, i64* @loops_per_jiffy, align 8
  %108 = load i32, i32* @OMAP_NAND_TIMEOUT_MS, align 4
  %109 = call i64 @msecs_to_jiffies(i32 %108)
  %110 = mul i64 %107, %109
  store i64 %110, i64* %15, align 8
  br label %111

111:                                              ; preds = %128, %103
  %112 = call i32 (...) @cpu_relax()
  %113 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %114 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @readl(i32 %116)
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = call i64 @PREFETCH_STATUS_COUNT(i64 %118)
  store i64 %119, i64* %18, align 8
  br label %120

120:                                              ; preds = %111
  %121 = load i64, i64* %18, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %15, align 8
  %127 = icmp ult i64 %124, %126
  br label %128

128:                                              ; preds = %123, %120
  %129 = phi i1 [ false, %120 ], [ %127, %123 ]
  br i1 %129, label %111, label %130

130:                                              ; preds = %128
  %131 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %132 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %135 = call i32 @omap_prefetch_reset(i32 %133, %struct.omap_nand_info* %134)
  %136 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %137 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @dma_unmap_sg(i32 %142, %struct.scatterlist* %13, i32 1, i32 %143)
  store i32 0, i32* %5, align 4
  br label %198

145:                                              ; preds = %102, %74
  %146 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %147 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @dma_unmap_sg(i32 %152, %struct.scatterlist* %13, i32 1, i32 %153)
  br label %155

155:                                              ; preds = %145, %48, %32
  %156 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %157 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %155
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @omap_read_buf16(%struct.mtd_info* %167, i32* %169, i32 %170)
  br label %178

172:                                              ; preds = %163
  %173 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @omap_write_buf16(%struct.mtd_info* %173, i32* %175, i32 %176)
  br label %178

178:                                              ; preds = %172, %166
  %179 = phi i32 [ %171, %166 ], [ %177, %172 ]
  br label %197

180:                                              ; preds = %155
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @omap_read_buf8(%struct.mtd_info* %184, i32* %186, i32 %187)
  br label %195

189:                                              ; preds = %180
  %190 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @omap_write_buf8(%struct.mtd_info* %190, i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %189, %183
  %196 = phi i32 [ %188, %183 ], [ %194, %189 ]
  br label %197

197:                                              ; preds = %195, %178
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %130
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.TYPE_11__*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_11__*) #1

declare dso_local i32 @omap_prefetch_enable(i32, i32, i32, i32, i32, %struct.omap_nand_info*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @PREFETCH_STATUS_COUNT(i64) #1

declare dso_local i32 @omap_prefetch_reset(i32, %struct.omap_nand_info*) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @omap_read_buf16(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_write_buf16(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_read_buf8(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_write_buf8(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
