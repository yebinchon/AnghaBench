; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_dma_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_dma_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CMD_PAGE_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to map buffer for DMA\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FLASH_DMA_ECC_ERROR = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@FLASH_DMA_CORR_ERROR = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_host*, i32, i32*, i32, i32)* @brcmnand_dma_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_dma_trans(%struct.brcmnand_host* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmnand_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.brcmnand_controller*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.brcmnand_host*, %struct.brcmnand_host** %7, align 8
  %16 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %15, i32 0, i32 0
  %17 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %16, align 8
  store %struct.brcmnand_controller* %17, %struct.brcmnand_controller** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @CMD_PAGE_READ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %14, align 4
  %27 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %28 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @dma_map_single(i32 %29, i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %35 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @dma_mapping_error(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %42 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %94

47:                                               ; preds = %25
  %48 = load %struct.brcmnand_host*, %struct.brcmnand_host** %7, align 8
  %49 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %50 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @brcmnand_fill_dma_desc(%struct.brcmnand_host* %48, %struct.TYPE_2__* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 1, i32 1, i32 0)
  %57 = load %struct.brcmnand_host*, %struct.brcmnand_host** %7, align 8
  %58 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %59 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @brcmnand_dma_run(%struct.brcmnand_host* %57, i32 %60)
  %62 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %63 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @dma_unmap_single(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %70 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FLASH_DMA_ECC_ERROR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %47
  %78 = load i32, i32* @EBADMSG, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %94

80:                                               ; preds = %47
  %81 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %82 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FLASH_DMA_CORR_ERROR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @EUCLEAN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %94

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %89, %77, %40
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @brcmnand_fill_dma_desc(%struct.brcmnand_host*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @brcmnand_dma_run(%struct.brcmnand_host*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
