; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_buf_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_buf_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.ispstat*, i32 }
%struct.dma_slave_config = type { i32, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"hist: invalid DMA buffer address\0A\00", align 1
@OMAP3_ISP_IOMEM_HIST = common dso_local global i32 0, align 4
@ISPHIST_ADDR = common dso_local global i32 0, align 4
@ISPHIST_CNT = common dso_local global i32 0, align 4
@ISPHIST_CNT_CLEAR = common dso_local global i32 0, align 4
@ISPHIST_DATA = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"hist: DMA slave configuration failed\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"hist: DMA slave preparation failed\0A\00", align 1
@hist_dma_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"hist: DMA submission failed\0A\00", align 1
@STAT_BUF_WAITING_DMA = common dso_local global i32 0, align 4
@STAT_NO_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*)* @hist_buf_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_buf_dma(%struct.ispstat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  %9 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %122

27:                                               ; preds = %1
  %28 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %29 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %32 = load i32, i32* @ISPHIST_ADDR, align 4
  %33 = call i32 @isp_reg_writel(%struct.TYPE_6__* %30, i32 0, i32 %31, i32 %32)
  %34 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %35 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %38 = load i32, i32* @ISPHIST_CNT, align 4
  %39 = load i32, i32* @ISPHIST_CNT_CLEAR, align 4
  %40 = call i32 @isp_reg_set(%struct.TYPE_6__* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %42 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @omap3isp_flush(%struct.TYPE_6__* %43)
  %45 = call i32 @memset(%struct.dma_slave_config* %6, i32 0, i32 16)
  %46 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %47 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ISPHIST_DATA, align 8
  %52 = add nsw i64 %50, %51
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %57 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 4
  %60 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %62 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dmaengine_slave_config(i32 %63, %struct.dma_slave_config* %6)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %27
  %68 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %69 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %122

74:                                               ; preds = %27
  %75 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %76 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %80 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %83 = load i32, i32* @DMA_CTRL_ACK, align 4
  %84 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %77, i32 %78, i32 %81, i32 %82, i32 %83)
  store %struct.dma_async_tx_descriptor* %84, %struct.dma_async_tx_descriptor** %5, align 8
  %85 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %86 = icmp eq %struct.dma_async_tx_descriptor* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %89 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %122

94:                                               ; preds = %74
  %95 = load i32, i32* @hist_dma_cb, align 4
  %96 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %97 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %99 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %100 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %99, i32 0, i32 1
  store %struct.ispstat* %98, %struct.ispstat** %100, align 8
  %101 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %101, i32 0, i32 0
  %103 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %102, align 8
  %104 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %105 = call i32 %103(%struct.dma_async_tx_descriptor* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i64 @dma_submit_error(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %94
  %110 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %111 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %122

116:                                              ; preds = %94
  %117 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %118 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dma_async_issue_pending(i32 %119)
  %121 = load i32, i32* @STAT_BUF_WAITING_DMA, align 4
  store i32 %121, i32* %2, align 4
  br label %126

122:                                              ; preds = %109, %87, %67, %20
  %123 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %124 = call i32 @hist_reset_mem(%struct.ispstat* %123)
  %125 = load i32, i32* @STAT_NO_BUF, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @isp_reg_writel(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_set(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @omap3isp_flush(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @hist_reset_mem(%struct.ispstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
