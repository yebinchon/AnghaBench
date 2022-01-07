; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_reset_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_reset_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.wmt_mci_priv = type { i32, i64 }

@SDMMC_BUSMODE = common dso_local global i64 0, align 8
@BM_SOFT_RESET = common dso_local global i32 0, align 4
@SDMMC_CTLR = common dso_local global i64 0, align 8
@CTLR_FIFO_RESET = common dso_local global i32 0, align 4
@BLKL_INT_ENABLE = common dso_local global i32 0, align 4
@BLKL_GPI_CD = common dso_local global i32 0, align 4
@SDMMC_BLKLEN = common dso_local global i64 0, align 8
@SDMMC_STS0 = common dso_local global i64 0, align 8
@SDMMC_STS1 = common dso_local global i64 0, align 8
@INT0_CD_INT_EN = common dso_local global i32 0, align 4
@INT0_DI_INT_EN = common dso_local global i32 0, align 4
@SDMMC_INTMASK0 = common dso_local global i64 0, align 8
@INT1_DATA_TOUT_INT_EN = common dso_local global i32 0, align 4
@INT1_CMD_RES_TRAN_DONE_INT_EN = common dso_local global i32 0, align 4
@INT1_CMD_RES_TOUT_INT_EN = common dso_local global i32 0, align 4
@SDMMC_INTMASK1 = common dso_local global i64 0, align 8
@SDMMC_DMATIMEOUT = common dso_local global i64 0, align 8
@SDMMC_STS2 = common dso_local global i64 0, align 8
@STS2_DIS_FORCECLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @wmt_reset_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_reset_hardware(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.wmt_mci_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %5)
  store %struct.wmt_mci_priv* %6, %struct.wmt_mci_priv** %3, align 8
  %7 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %8 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SDMMC_BUSMODE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BM_SOFT_RESET, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %17 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SDMMC_BUSMODE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writeb(i32 %15, i64 %20)
  %22 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %23 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SDMMC_CTLR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readb(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CTLR_FIFO_RESET, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %32 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SDMMC_CTLR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writeb(i32 %30, i64 %35)
  %37 = load i32, i32* @BLKL_INT_ENABLE, align 4
  %38 = load i32, i32* @BLKL_GPI_CD, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SDMMC_BLKLEN, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writew(i32 %39, i64 %44)
  %46 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %47 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SDMMC_STS0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 255, i64 %50)
  %52 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDMMC_STS1, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writeb(i32 255, i64 %56)
  %58 = load i32, i32* @INT0_CD_INT_EN, align 4
  %59 = load i32, i32* @INT0_DI_INT_EN, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %62 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SDMMC_INTMASK0, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writeb(i32 %60, i64 %65)
  %67 = load i32, i32* @INT1_DATA_TOUT_INT_EN, align 4
  %68 = load i32, i32* @INT1_CMD_RES_TRAN_DONE_INT_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @INT1_CMD_RES_TOUT_INT_EN, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %73 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SDMMC_INTMASK1, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writeb(i32 %71, i64 %76)
  %78 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %79 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SDMMC_DMATIMEOUT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writew(i32 8191, i64 %82)
  %84 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %85 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SDMMC_STS2, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readb(i64 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @STS2_DIS_FORCECLK, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %94 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SDMMC_STS2, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writeb(i32 %92, i64 %97)
  %99 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %100 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @clk_set_rate(i32 %101, i32 400000)
  ret void
}

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
