; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_dma_fifo0_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_dma_fifo0_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_flctl = type { %struct.TYPE_3__*, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.sh_flctl*, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DREQ0EN = common dso_local global i32 0, align 4
@flctl_dma_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DMA submit failed, falling back to PIO\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"DMA failed, falling back to PIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"wait_for_completion_timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_flctl*, i64*, i32, i32)* @flctl_dma_fifo0_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flctl_dma_fifo0_transfer(%struct.sh_flctl* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sh_flctl* %0, %struct.sh_flctl** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %21 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %20, i32 0, i32 3
  %22 = load %struct.dma_chan*, %struct.dma_chan** %21, align 8
  store %struct.dma_chan* %22, %struct.dma_chan** %10, align 8
  %23 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %23, i32* %11, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %26 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %25, i32 0, i32 2
  %27 = load %struct.dma_chan*, %struct.dma_chan** %26, align 8
  store %struct.dma_chan* %27, %struct.dma_chan** %10, align 8
  %28 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64*, i64** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dma_map_single(i32 %34, i64* %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %40 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dma_mapping_error(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %29
  %48 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %53 = load i32, i32* @DMA_CTRL_ACK, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.dma_chan* %48, i32 %49, i32 %50, i32 %51, i32 %54)
  store %struct.dma_async_tx_descriptor* %55, %struct.dma_async_tx_descriptor** %9, align 8
  br label %56

56:                                               ; preds = %47, %29
  %57 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %58 = icmp ne %struct.dma_async_tx_descriptor* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %61 = call i32 @FLINTDMACR(%struct.sh_flctl* %60)
  %62 = call i32 @readl(i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* @DREQ0EN, align 4
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %68 = call i32 @FLINTDMACR(%struct.sh_flctl* %67)
  %69 = call i32 @writel(i32 %66, i32 %68)
  %70 = load i32, i32* @flctl_dma_complete, align 4
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %72 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %74, i32 0, i32 0
  store %struct.sh_flctl* %73, %struct.sh_flctl** %75, align 8
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %77 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @dma_submit_error(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %59
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @dma_submit_error(i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %85 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %118

89:                                               ; preds = %59
  %90 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %91 = call i32 @dma_async_issue_pending(%struct.dma_chan* %90)
  br label %102

92:                                               ; preds = %56
  %93 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %94 = call i32 @flctl_release_dma(%struct.sh_flctl* %93)
  %95 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %96 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @dev_warn(i32* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %15, align 4
  br label %118

102:                                              ; preds = %89
  %103 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %104 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %103, i32 0, i32 1
  %105 = call i32 @msecs_to_jiffies(i32 3000)
  %106 = call i32 @wait_for_completion_timeout(i32* %104, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %111 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %110)
  %112 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %113 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %109, %102
  br label %118

118:                                              ; preds = %117, %92, %81
  %119 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %120 = call i32 @FLINTDMACR(%struct.sh_flctl* %119)
  %121 = call i32 @readl(i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* @DREQ0EN, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %128 = call i32 @FLINTDMACR(%struct.sh_flctl* %127)
  %129 = call i32 @writel(i32 %126, i32 %128)
  %130 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %131 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @dma_unmap_single(i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %15, align 4
  ret i32 %139
}

declare dso_local i32 @dma_map_single(i32, i64*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.dma_chan*, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FLINTDMACR(%struct.sh_flctl*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @flctl_release_dma(%struct.sh_flctl*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
