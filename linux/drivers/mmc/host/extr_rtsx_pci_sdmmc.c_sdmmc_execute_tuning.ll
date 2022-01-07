; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.realtek_pci_sdmmc = type { %struct.rtsx_pcr*, i64 }
%struct.rtsx_pcr = type { i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@RTSX_SD_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @sdmmc_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdmmc_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.realtek_pci_sdmmc*, align 8
  %7 = alloca %struct.rtsx_pcr*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host* %9)
  store %struct.realtek_pci_sdmmc* %10, %struct.realtek_pci_sdmmc** %6, align 8
  %11 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %12 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %11, i32 0, i32 0
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %12, align 8
  store %struct.rtsx_pcr* %13, %struct.rtsx_pcr** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %15 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEDIUM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %23 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %22, i32 0, i32 0
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %23, align 8
  %25 = load i32, i32* @RTSX_SD_CARD, align 4
  %26 = call i32 @rtsx_pci_card_exclusive_check(%struct.rtsx_pcr* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %95

31:                                               ; preds = %21
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %33 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %36 = call i32 @rtsx_pci_start_run(%struct.rtsx_pcr* %35)
  %37 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %56 [
    i32 129, label %41
    i32 128, label %46
    i32 130, label %51
  ]

41:                                               ; preds = %31
  %42 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %44 = call i32 @SDR104_TX_PHASE(%struct.rtsx_pcr* %43)
  %45 = call i32 @sd_change_phase(%struct.realtek_pci_sdmmc* %42, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  br label %57

46:                                               ; preds = %31
  %47 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %48 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %49 = call i32 @SDR50_TX_PHASE(%struct.rtsx_pcr* %48)
  %50 = call i32 @sd_change_phase(%struct.realtek_pci_sdmmc* %47, i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %31
  %52 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %53 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %54 = call i32 @DDR50_TX_PHASE(%struct.rtsx_pcr* %53)
  %55 = call i32 @sd_change_phase(%struct.realtek_pci_sdmmc* %52, i32 %54, i32 0)
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %51, %46, %41
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %90

61:                                               ; preds = %57
  %62 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %61
  %74 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @sd_tuning_rx(%struct.realtek_pci_sdmmc* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %89

77:                                               ; preds = %67
  %78 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 130
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %6, align 8
  %85 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %86 = call i32 @DDR50_RX_PHASE(%struct.rtsx_pcr* %85)
  %87 = call i32 @sd_change_phase(%struct.realtek_pci_sdmmc* %84, i32 %86, i32 1)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %92 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %29, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @rtsx_pci_card_exclusive_check(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtsx_pci_start_run(%struct.rtsx_pcr*) #1

declare dso_local i32 @sd_change_phase(%struct.realtek_pci_sdmmc*, i32, i32) #1

declare dso_local i32 @SDR104_TX_PHASE(%struct.rtsx_pcr*) #1

declare dso_local i32 @SDR50_TX_PHASE(%struct.rtsx_pcr*) #1

declare dso_local i32 @DDR50_TX_PHASE(%struct.rtsx_pcr*) #1

declare dso_local i32 @sd_tuning_rx(%struct.realtek_pci_sdmmc*, i32) #1

declare dso_local i32 @DDR50_RX_PHASE(%struct.rtsx_pcr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
