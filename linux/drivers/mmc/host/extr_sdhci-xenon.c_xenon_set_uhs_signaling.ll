; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS200 = common dso_local global i32 0, align 4
@XENON_CTRL_HS200 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i32 0, align 4
@XENON_CTRL_HS400 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @xenon_set_uhs_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
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
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @XENON_CTRL_HS200, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MMC_TIMING_UHS_SDR104, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @SDHCI_CTRL_UHS_SDR104, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %77

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MMC_TIMING_UHS_SDR12, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @SDHCI_CTRL_UHS_SDR12, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %76

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MMC_TIMING_UHS_SDR25, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @SDHCI_CTRL_UHS_SDR25, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %75

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MMC_TIMING_UHS_SDR50, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @SDHCI_CTRL_UHS_SDR50, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %74

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @MMC_TIMING_MMC_DDR52, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @SDHCI_CTRL_UHS_DDR50, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %73

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @MMC_TIMING_MMC_HS400, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @XENON_CTRL_HS400, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %48
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %32
  br label %77

77:                                               ; preds = %76, %24
  br label %78

78:                                               ; preds = %77, %16
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %82 = call i32 @sdhci_writew(%struct.sdhci_host* %79, i32 %80, i32 %81)
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
