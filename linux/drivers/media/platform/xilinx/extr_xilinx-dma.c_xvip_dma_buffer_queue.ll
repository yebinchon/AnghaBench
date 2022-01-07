; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.xvip_dma = type { i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_11__*, %struct.TYPE_14__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.xvip_dma_buffer = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.xvip_dma_buffer*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to prepare DMA transfer\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@xvip_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @xvip_dma_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvip_dma_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.xvip_dma*, align 8
  %5 = alloca %struct.xvip_dma_buffer*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %3, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.xvip_dma* @vb2_get_drv_priv(i32 %13)
  store %struct.xvip_dma* %14, %struct.xvip_dma** %4, align 8
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %16 = call %struct.xvip_dma_buffer* @to_xvip_dma_buffer(%struct.vb2_v4l2_buffer* %15)
  store %struct.xvip_dma_buffer* %16, %struct.xvip_dma_buffer** %5, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %18 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %17, i32 0)
  store i8* %18, i8** %7, align 8
  %19 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %20 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %27 = load i32, i32* @DMA_CTRL_ACK, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %30 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %31 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 8
  %33 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %34 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %37 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %41 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 6
  store i8* %39, i8** %42, align 8
  br label %61

43:                                               ; preds = %1
  %44 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %45 = load i32, i32* @DMA_CTRL_ACK, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %48 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %49 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %52 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %55 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %59 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 4
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %43, %25
  %62 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %63 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %66 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %70 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %69, i32 0, i32 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %68, %73
  %75 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %76 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %75, i32 0, i32 7
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 8
  %80 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %81 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %85 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %84, i32 0, i32 7
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %83, %90
  %92 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %93 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %92, i32 0, i32 7
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i64 %91, i64* %96, align 8
  %97 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %98 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %102 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %105 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %108 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %107, i32 0, i32 5
  %109 = load i32, i32* %8, align 4
  %110 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_interleaved_dma(i32 %106, %struct.TYPE_14__* %108, i32 %109)
  store %struct.dma_async_tx_descriptor* %110, %struct.dma_async_tx_descriptor** %6, align 8
  %111 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %112 = icmp ne %struct.dma_async_tx_descriptor* %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %61
  %114 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %115 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %114, i32 0, i32 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %5, align 8
  %121 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %124 = call i32 @vb2_buffer_done(i32* %122, i32 %123)
  br label %154

125:                                              ; preds = %61
  %126 = load i32, i32* @xvip_dma_complete, align 4
  %127 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %128 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %5, align 8
  %130 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %131 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %130, i32 0, i32 0
  store %struct.xvip_dma_buffer* %129, %struct.xvip_dma_buffer** %131, align 8
  %132 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %133 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %132, i32 0, i32 2
  %134 = call i32 @spin_lock_irq(i32* %133)
  %135 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %5, align 8
  %136 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %135, i32 0, i32 0
  %137 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %138 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %137, i32 0, i32 3
  %139 = call i32 @list_add_tail(i32* %136, i32* %138)
  %140 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %141 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %140, i32 0, i32 2
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %144 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %143)
  %145 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %146 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %145, i32 0, i32 1
  %147 = call i64 @vb2_is_streaming(%struct.TYPE_13__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %125
  %150 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %151 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @dma_async_issue_pending(i32 %152)
  br label %154

154:                                              ; preds = %113, %149, %125
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.xvip_dma* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.xvip_dma_buffer* @to_xvip_dma_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_interleaved_dma(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @vb2_is_streaming(%struct.TYPE_13__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
