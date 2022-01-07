; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_xmit_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_xmit_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nand_chip = type { i32 }
%struct.lpc32xx_nand_host = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.dma_async_tx_descriptor = type { i32*, i32 }

@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to setup DMA slave\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to map sg list\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to prepare slave sg\0A\00", align 1
@lpc32xx_dma_complete_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i8*, i8*, i32, i32)* @lpc32xx_xmit_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_xmit_dma(%struct.mtd_info* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nand_chip*, align 8
  %13 = alloca %struct.lpc32xx_nand_host*, align 8
  %14 = alloca %struct.dma_async_tx_descriptor*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %17)
  store %struct.nand_chip* %18, %struct.nand_chip** %12, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %20 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %19)
  store %struct.lpc32xx_nand_host* %20, %struct.lpc32xx_nand_host** %13, align 8
  %21 = load i32, i32* @DMA_CTRL_ACK, align 4
  %22 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 7
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 6
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %37 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %41 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 4, i32* %46, align 4
  %47 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %48 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 4, i32* %49, align 8
  %50 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %51 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %57 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %56, i32 0, i32 3
  %58 = call i64 @dmaengine_slave_config(%struct.TYPE_9__* %55, %struct.TYPE_10__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %5
  %61 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %158

68:                                               ; preds = %5
  %69 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %70 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %69, i32 0, i32 0
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @sg_init_one(i32* %70, i8* %71, i32 %72)
  %74 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %75 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %81, i32 0, i32 0
  %83 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %84 = call i32 @dma_map_sg(i32 %80, i32* %82, i32 1, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %68
  %88 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENXIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %158

95:                                               ; preds = %68
  %96 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %97 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %100 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %99, i32 0, i32 0
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.TYPE_9__* %98, i32* %100, i32 1, i32 %101, i32 %102)
  store %struct.dma_async_tx_descriptor* %103, %struct.dma_async_tx_descriptor** %14, align 8
  %104 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %105 = icmp ne %struct.dma_async_tx_descriptor* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %95
  %107 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %108 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %144

112:                                              ; preds = %95
  %113 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %114 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %113, i32 0, i32 2
  %115 = call i32 @init_completion(i32* %114)
  %116 = load i32, i32* @lpc32xx_dma_complete_func, align 4
  %117 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %118 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %120 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %119, i32 0, i32 2
  %121 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %122 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  %123 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %124 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %123)
  %125 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %126 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = call i32 @dma_async_issue_pending(%struct.TYPE_9__* %127)
  %129 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %130 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %129, i32 0, i32 2
  %131 = call i32 @msecs_to_jiffies(i32 1000)
  %132 = call i32 @wait_for_completion_timeout(i32* %130, i32 %131)
  %133 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %134 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %141 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %140, i32 0, i32 0
  %142 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %143 = call i32 @dma_unmap_sg(i32 %139, i32* %141, i32 1, i32 %142)
  store i32 0, i32* %6, align 4
  br label %158

144:                                              ; preds = %106
  %145 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %146 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %13, align 8
  %153 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %152, i32 0, i32 0
  %154 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %155 = call i32 @dma_unmap_sg(i32 %151, i32* %153, i32 1, i32 %154)
  %156 = load i32, i32* @ENXIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %144, %112, %87, %60
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i64 @dmaengine_slave_config(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sg_init_one(i32*, i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_9__*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
