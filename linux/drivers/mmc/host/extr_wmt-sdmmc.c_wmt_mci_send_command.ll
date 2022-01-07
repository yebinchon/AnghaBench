; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.wmt_mci_priv = type { i64 }

@SDMMC_CMD = common dso_local global i64 0, align 8
@SDMMC_ARG = common dso_local global i64 0, align 8
@SDMMC_RSPTYPE = common dso_local global i64 0, align 8
@SDMMC_CTLR = common dso_local global i64 0, align 8
@CTLR_FIFO_RESET = common dso_local global i32 0, align 4
@WMT_SD_POWER_ON = common dso_local global i32 0, align 4
@SDMMC_STS0 = common dso_local global i64 0, align 8
@SDMMC_STS1 = common dso_local global i64 0, align 8
@SDMMC_STS2 = common dso_local global i64 0, align 8
@SDMMC_STS3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, i32, i32, i32)* @wmt_mci_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_mci_send_command(%struct.mmc_host* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wmt_mci_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %14 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %13)
  store %struct.wmt_mci_priv* %14, %struct.wmt_mci_priv** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %17 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SDMMC_CMD, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writeb(i32 %15, i64 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %24 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SDMMC_ARG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %31 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDMMC_RSPTYPE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writeb(i32 %29, i64 %34)
  %36 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %37 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SDMMC_CTLR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readb(i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @CTLR_FIFO_RESET, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %46 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SDMMC_CTLR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writeb(i32 %44, i64 %49)
  %51 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %52 = load i32, i32* @WMT_SD_POWER_ON, align 4
  %53 = call i32 @wmt_set_sd_power(%struct.wmt_mci_priv* %51, i32 %52)
  %54 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %55 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SDMMC_STS0, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeb(i32 255, i64 %58)
  %60 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %61 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SDMMC_STS1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i32 255, i64 %64)
  %66 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %67 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SDMMC_STS2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writeb(i32 255, i64 %70)
  %72 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %73 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SDMMC_STS3, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writeb(i32 255, i64 %76)
  %78 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %79 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SDMMC_CTLR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readb(i64 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 15
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 %86, 4
  %88 = or i32 %85, %87
  %89 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %11, align 8
  %90 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SDMMC_CTLR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writeb(i32 %88, i64 %93)
  ret i32 0
}

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @wmt_set_sd_power(%struct.wmt_mci_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
