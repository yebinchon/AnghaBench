; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_mmc_host = type { i64, %struct.mxs_ssp }
%struct.mxs_ssp = type { i64 }

@BM_SSP_CTRL0_IGNORE_CRC = common dso_local global i32 0, align 4
@CTRL1_SSP_MODE = common dso_local global i32 0, align 4
@CTRL1_WORD_LENGTH = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_DMA_ENABLE = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_POLARITY = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_RECV_TIMEOUT_IRQ_EN = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_DATA_CRC_IRQ_EN = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_DATA_TIMEOUT_IRQ_EN = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_RESP_TIMEOUT_IRQ_EN = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_RESP_ERR_IRQ_EN = common dso_local global i32 0, align 4
@TIMING_TIMEOUT = common dso_local global i32 0, align 4
@TIMING_CLOCK_DIVIDE = common dso_local global i32 0, align 4
@TIMING_CLOCK_RATE = common dso_local global i32 0, align 4
@BM_SSP_CTRL0_SDIO_IRQ_CHECK = common dso_local global i32 0, align 4
@BM_SSP_CTRL1_SDIO_IRQ_EN = common dso_local global i32 0, align 4
@HW_SSP_CTRL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_mmc_host*)* @mxs_mmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_mmc_reset(%struct.mxs_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_mmc_host*, align 8
  %4 = alloca %struct.mxs_ssp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxs_mmc_host* %0, %struct.mxs_mmc_host** %3, align 8
  %8 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %8, i32 0, i32 1
  store %struct.mxs_ssp* %9, %struct.mxs_ssp** %4, align 8
  %10 = load %struct.mxs_ssp*, %struct.mxs_ssp** %4, align 8
  %11 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @stmp_reset_block(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load i32, i32* @BM_SSP_CTRL0_IGNORE_CRC, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @CTRL1_SSP_MODE, align 4
  %21 = call i32 @BF_SSP(i32 3, i32 %20)
  %22 = load i32, i32* @CTRL1_WORD_LENGTH, align 4
  %23 = call i32 @BF_SSP(i32 7, i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @BM_SSP_CTRL1_DMA_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BM_SSP_CTRL1_POLARITY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BM_SSP_CTRL1_RECV_TIMEOUT_IRQ_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BM_SSP_CTRL1_DATA_CRC_IRQ_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BM_SSP_CTRL1_DATA_TIMEOUT_IRQ_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BM_SSP_CTRL1_RESP_TIMEOUT_IRQ_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BM_SSP_CTRL1_RESP_ERR_IRQ_EN, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @TIMING_TIMEOUT, align 4
  %40 = call i32 @BF_SSP(i32 65535, i32 %39)
  %41 = load i32, i32* @TIMING_CLOCK_DIVIDE, align 4
  %42 = call i32 @BF_SSP(i32 2, i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @TIMING_CLOCK_RATE, align 4
  %45 = call i32 @BF_SSP(i32 0, i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.mxs_ssp*, %struct.mxs_ssp** %4, align 8
  %48 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mxs_ssp*, %struct.mxs_ssp** %4, align 8
  %51 = call i64 @HW_SSP_TIMING(%struct.mxs_ssp* %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel(i32 %46, i64 %52)
  %54 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %18
  %59 = load i32, i32* @BM_SSP_CTRL0_SDIO_IRQ_CHECK, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @BM_SSP_CTRL1_SDIO_IRQ_EN, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %18
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.mxs_ssp*, %struct.mxs_ssp** %4, align 8
  %68 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HW_SSP_CTRL0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.mxs_ssp*, %struct.mxs_ssp** %4, align 8
  %75 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mxs_ssp*, %struct.mxs_ssp** %4, align 8
  %78 = call i64 @HW_SSP_CTRL1(%struct.mxs_ssp* %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @writel(i32 %73, i64 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %65, %16
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @stmp_reset_block(i64) #1

declare dso_local i32 @BF_SSP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @HW_SSP_TIMING(%struct.mxs_ssp*) #1

declare dso_local i64 @HW_SSP_CTRL1(%struct.mxs_ssp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
