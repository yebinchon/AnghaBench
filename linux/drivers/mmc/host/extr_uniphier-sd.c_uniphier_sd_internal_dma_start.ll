; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_internal_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_internal_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32, i64, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.mmc_data = type { i32, i32 }
%struct.uniphier_sd_priv = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE_DIR_FROM_DEV = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE_DIR_TO_DEV = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE_DIR_MASK = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE_WIDTH_MASK = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE_WIDTH_64 = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE_ADDR_INC = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_MODE = common dso_local global i64 0, align 8
@UNIPHIER_SD_DMA_ADDR_L = common dso_local global i64 0, align 8
@UNIPHIER_SD_DMA_ADDR_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.mmc_data*)* @uniphier_sd_internal_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_internal_dma_start(%struct.tmio_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.uniphier_sd_priv*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %11)
  store %struct.uniphier_sd_priv* %12, %struct.uniphier_sd_priv** %5, align 8
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 5
  %15 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %15, %struct.scatterlist** %6, align 8
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMC_DATA_READ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %115

28:                                               ; preds = %22, %2
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %115

37:                                               ; preds = %28
  %38 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_ALIGNED(i32 %40, i32 8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %115

44:                                               ; preds = %37
  %45 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MMC_DATA_READ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %54 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @UNIPHIER_SD_DMA_MODE_DIR_FROM_DEV, align 4
  store i32 %55, i32* %8, align 4
  br label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %59 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @UNIPHIER_SD_DMA_MODE_DIR_TO_DEV, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %63 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mmc_dev(i32 %64)
  %66 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %67 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %68 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dma_map_sg(i32 %65, %struct.scatterlist* %66, i32 1, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %115

74:                                               ; preds = %61
  %75 = load i32, i32* @UNIPHIER_SD_DMA_MODE_DIR_MASK, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @FIELD_PREP(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @UNIPHIER_SD_DMA_MODE_WIDTH_MASK, align 4
  %79 = load i32, i32* @UNIPHIER_SD_DMA_MODE_WIDTH_64, align 4
  %80 = call i32 @FIELD_PREP(i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @UNIPHIER_SD_DMA_MODE_ADDR_INC, align 4
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %88 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UNIPHIER_SD_DMA_MODE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sg_dma_address(i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @lower_32_bits(i32 %97)
  %99 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %100 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @UNIPHIER_SD_DMA_ADDR_L, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @upper_32_bits(i32 %105)
  %107 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %108 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UNIPHIER_SD_DMA_ADDR_H, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %114 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %118

115:                                              ; preds = %73, %43, %36, %27
  %116 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %117 = call i32 @uniphier_sd_dma_endisable(%struct.tmio_mmc_host* %116, i32 0)
  br label %118

118:                                              ; preds = %115, %74
  ret void
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @uniphier_sd_dma_endisable(%struct.tmio_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
