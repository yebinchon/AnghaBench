; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_prepare_dma_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_prepare_dma_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64, i64, i32 }
%struct.mmc_data = type { i32, i32*, i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MIO_EMM_DMA_CFG_EN = common dso_local global i32 0, align 4
@MIO_EMM_DMA_CFG_RW = common dso_local global i32 0, align 4
@MIO_EMM_DMA_CFG_SIZE = common dso_local global i32 0, align 4
@MIO_EMM_DMA_CFG_ADR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[%s] sg_dma_len: %u  total sg_elem: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@MIO_EMM_DMA_CFG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvm_mmc_host*, %struct.mmc_data*)* @prepare_dma_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_dma_single(%struct.cvm_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cvm_mmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %10 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %20 = call i32 @get_dma_dir(%struct.mmc_data* %19)
  %21 = call i32 @dma_map_sg(i32 %12, i32* %15, i32 %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MMC_DATA_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @MIO_EMM_DMA_CFG_EN, align 4
  %35 = call i32 @FIELD_PREP(i32 %34, i32 1)
  %36 = load i32, i32* @MIO_EMM_DMA_CFG_RW, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @FIELD_PREP(i32 %36, i32 %37)
  %39 = or i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @MIO_EMM_DMA_CFG_SIZE, align 4
  %41 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = call i32 @sg_dma_len(i32* %44)
  %46 = sdiv i32 %45, 8
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @FIELD_PREP(i32 %40, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @sg_dma_address(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %57 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %25
  %61 = load i32, i32* @MIO_EMM_DMA_CFG_ADR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @FIELD_PREP(i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %25
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %69 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %72 = call i64 @MIO_EMM_DMA_CFG(%struct.cvm_mmc_host* %71)
  %73 = add nsw i64 %70, %72
  %74 = call i32 @writeq(i32 %67, i64 %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %79 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %80 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i32 @sg_dma_len(i32* %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %83, i32 %84)
  %86 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %87 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %66
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %93 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %96 = call i64 @MIO_EMM_DMA_ADR(%struct.cvm_mmc_host* %95)
  %97 = add nsw i64 %94, %96
  %98 = call i32 @writeq(i32 %91, i64 %97)
  br label %99

99:                                               ; preds = %90, %66
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %24
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @sg_dma_len(i32*) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_DMA_CFG(%struct.cvm_mmc_host*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

declare dso_local i64 @MIO_EMM_DMA_ADR(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
