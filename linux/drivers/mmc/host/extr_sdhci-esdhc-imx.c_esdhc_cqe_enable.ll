; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_cqe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_cqe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32 }
%struct.sdhci_host = type { i32, i32, i32 }

@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_DATA_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"CQE may get stuck because the Buffer Read Enable bit is set\0A\00", align 1
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_TRNS_DMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_SUPPORT_SINGLE = common dso_local global i32 0, align 4
@SDHCI_TRNS_BLK_CNT_EN = common dso_local global i32 0, align 4
@CQHCI_CTL = common dso_local global i32 0, align 4
@CQHCI_HALT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to exit halt state when enable CQE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @esdhc_cqe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_cqe_enable(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.cqhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %3, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = load %struct.cqhci_host*, %struct.cqhci_host** %11, align 8
  store %struct.cqhci_host* %12, %struct.cqhci_host** %4, align 8
  store i32 10, i32* %7, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %15 = call i32 @sdhci_readl(%struct.sdhci_host* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %37, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SDHCI_DATA_AVAILABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = load i32, i32* @SDHCI_BUFFER, align 4
  %24 = call i32 @sdhci_readl(%struct.sdhci_host* %22, i32 %23)
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %27 = call i32 @sdhci_readl(%struct.sdhci_host* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mmc_dev(i32 %34)
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %39

37:                                               ; preds = %21
  %38 = call i32 @mdelay(i32 1)
  br label %16

39:                                               ; preds = %31, %16
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %41 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %42 = call i32 @sdhci_readw(%struct.sdhci_host* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @SDHCI_TRNS_DMA, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SDHCI_QUIRK2_SUPPORT_SINGLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @SDHCI_TRNS_BLK_CNT_EN, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %68 = call i32 @sdhci_writew(%struct.sdhci_host* %65, i32 %66, i32 %67)
  %69 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %70 = load i32, i32* @CQHCI_CTL, align 4
  %71 = call i32 @cqhci_writel(%struct.cqhci_host* %69, i32 0, i32 %70)
  %72 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %73 = load i32, i32* @CQHCI_CTL, align 4
  %74 = call i64 @cqhci_readl(%struct.cqhci_host* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load i64, i64* @CQHCI_HALT, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mmc_dev(i32 %82)
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %76, %64
  %86 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %87 = call i32 @sdhci_cqe_enable(%struct.mmc_host* %86)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i64 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sdhci_cqe_enable(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
