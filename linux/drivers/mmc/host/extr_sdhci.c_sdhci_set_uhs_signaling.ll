; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS200 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_TIMING_SD_HS = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i32 0, align 4
@SDHCI_CTRL_HS400 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %8 = call i32 @sdhci_readw(%struct.sdhci_host* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MMC_TIMING_MMC_HS200, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MMC_TIMING_UHS_SDR104, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @SDHCI_CTRL_UHS_SDR104, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MMC_TIMING_UHS_SDR12, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @SDHCI_CTRL_UHS_SDR12, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %80

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MMC_TIMING_SD_HS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MMC_TIMING_MMC_HS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MMC_TIMING_UHS_SDR25, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %36, %32
  %45 = load i32, i32* @SDHCI_CTRL_UHS_SDR25, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %79

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MMC_TIMING_UHS_SDR50, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @SDHCI_CTRL_UHS_SDR50, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %78

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MMC_TIMING_MMC_DDR52, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @SDHCI_CTRL_UHS_DDR50, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @MMC_TIMING_MMC_HS400, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @SDHCI_CTRL_HS400, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %28
  br label %81

81:                                               ; preds = %80, %20
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %85 = call i32 @sdhci_writew(%struct.sdhci_host* %82, i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
