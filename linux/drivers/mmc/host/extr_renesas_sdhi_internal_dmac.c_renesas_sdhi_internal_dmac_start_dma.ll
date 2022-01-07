; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_internal_dmac.c_renesas_sdhi_internal_dmac_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32, %struct.TYPE_2__*, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_data = type { i32 }

@DTRAN_MODE_BUS_WIDTH = common dso_local global i32 0, align 4
@SDHI_INTERNAL_DMAC_ADDR_MODE_FIXED_ONLY = common dso_local global i32 0, align 4
@global_flags = common dso_local global i32 0, align 4
@DTRAN_MODE_ADDR_MODE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DTRAN_MODE_CH_NUM_CH1 = common dso_local global i32 0, align 4
@SDHI_INTERNAL_DMAC_ONE_RX_ONLY = common dso_local global i32 0, align 4
@SDHI_INTERNAL_DMAC_RX_IN_USE = common dso_local global i32 0, align 4
@DTRAN_MODE_CH_NUM_CH0 = common dso_local global i32 0, align 4
@DM_CM_DTRAN_MODE = common dso_local global i32 0, align 4
@DM_DTRAN_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.mmc_data*)* @renesas_sdhi_internal_dmac_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_internal_dmac_start_dma(%struct.tmio_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %7, i32 0, i32 3
  %9 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %9, %struct.scatterlist** %5, align 8
  %10 = load i32, i32* @DTRAN_MODE_BUS_WIDTH, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @SDHI_INTERNAL_DMAC_ADDR_MODE_FIXED_ONLY, align 4
  %12 = call i64 @test_bit(i32 %11, i32* @global_flags)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @DTRAN_MODE_ADDR_MODE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %28 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %27)
  %29 = call i32 @dma_map_sg(i32* %22, %struct.scatterlist* %23, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %88

32:                                               ; preds = %18
  %33 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %34 = call i32 @sg_dma_address(%struct.scatterlist* %33)
  %35 = call i32 @IS_ALIGNED(i32 %34, i32 8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %76

38:                                               ; preds = %32
  %39 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MMC_DATA_READ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load i32, i32* @DTRAN_MODE_CH_NUM_CH1, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @SDHI_INTERNAL_DMAC_ONE_RX_ONLY, align 4
  %50 = call i64 @test_bit(i32 %49, i32* @global_flags)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @SDHI_INTERNAL_DMAC_RX_IN_USE, align 4
  %54 = call i64 @test_and_set_bit(i32 %53, i32* @global_flags)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %76

57:                                               ; preds = %52, %45
  br label %62

58:                                               ; preds = %38
  %59 = load i32, i32* @DTRAN_MODE_CH_NUM_CH0, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %64 = call i32 @renesas_sdhi_internal_dmac_enable_dma(%struct.tmio_mmc_host* %63, i32 1)
  %65 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %66 = load i32, i32* @DM_CM_DTRAN_MODE, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host* %65, i32 %66, i32 %67)
  %69 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %70 = load i32, i32* @DM_DTRAN_ADDR, align 4
  %71 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %72 = call i32 @sg_dma_address(%struct.scatterlist* %71)
  %73 = call i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host* %69, i32 %70, i32 %72)
  %74 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %75 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %91

76:                                               ; preds = %56, %37
  %77 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %78 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %82 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %86 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %85)
  %87 = call i32 @dma_unmap_sg(i32* %80, %struct.scatterlist* %81, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %76, %31
  %89 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %90 = call i32 @renesas_sdhi_internal_dmac_enable_dma(%struct.tmio_mmc_host* %89, i32 0)
  br label %91

91:                                               ; preds = %88, %62
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dma_map_sg(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @renesas_sdhi_internal_dmac_enable_dma(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @renesas_sdhi_internal_dmac_dm_write(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
