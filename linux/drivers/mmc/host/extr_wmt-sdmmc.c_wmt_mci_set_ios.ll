; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i32 }
%struct.wmt_mci_priv = type { i64, i32 }

@MMC_POWER_UP = common dso_local global i64 0, align 8
@WMT_SD_POWER_ON = common dso_local global i32 0, align 4
@MMC_POWER_OFF = common dso_local global i64 0, align 8
@WMT_SD_POWER_OFF = common dso_local global i32 0, align 4
@SDMMC_BUSMODE = common dso_local global i64 0, align 8
@SDMMC_EXTCTRL = common dso_local global i64 0, align 8
@BM_EIGHTBIT_MODE = common dso_local global i32 0, align 4
@BM_FOURBIT_MODE = common dso_local global i32 0, align 4
@EXT_EIGHTBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @wmt_mci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_mci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.wmt_mci_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %8)
  store %struct.wmt_mci_priv* %9, %struct.wmt_mci_priv** %5, align 8
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_POWER_UP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = call i32 @wmt_reset_hardware(%struct.mmc_host* %16)
  %18 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %19 = load i32, i32* @WMT_SD_POWER_ON, align 4
  %20 = call i32 @wmt_set_sd_power(%struct.wmt_mci_priv* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMC_POWER_OFF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %29 = load i32, i32* @WMT_SD_POWER_OFF, align 4
  %30 = call i32 @wmt_set_sd_power(%struct.wmt_mci_priv* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %38 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_set_rate(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %46 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SDMMC_BUSMODE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readb(i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %52 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SDMMC_EXTCTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readb(i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @BM_EIGHTBIT_MODE, align 4
  %58 = load i32, i32* @BM_FOURBIT_MODE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @EXT_EIGHTBIT, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %82 [
    i32 128, label %70
    i32 129, label %77
    i32 130, label %81
  ]

70:                                               ; preds = %44
  %71 = load i32, i32* @BM_EIGHTBIT_MODE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @EXT_EIGHTBIT, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %82

77:                                               ; preds = %44
  %78 = load i32, i32* @BM_FOURBIT_MODE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %82

81:                                               ; preds = %44
  br label %82

82:                                               ; preds = %44, %81, %77, %70
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %85 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SDMMC_BUSMODE, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writeb(i32 %83, i64 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %92 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SDMMC_EXTCTRL, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writeb(i32 %90, i64 %95)
  ret void
}

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @wmt_reset_hardware(%struct.mmc_host*) #1

declare dso_local i32 @wmt_set_sd_power(%struct.wmt_mci_priv*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
