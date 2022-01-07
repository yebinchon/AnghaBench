; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_sprd_host = type { i32* }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_DDR50 = common dso_local global i32 0, align 4
@SDHCI_SPRD_CTRL_HS200 = common dso_local global i32 0, align 4
@SDHCI_SPRD_CTRL_HS400 = common dso_local global i32 0, align 4
@SDHCI_SPRD_REG_32_DLL_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_sprd_set_uhs_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_sprd_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_sprd_host*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host* %9)
  store %struct.sdhci_sprd_host* %10, %struct.sdhci_sprd_host** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %6, align 8
  %14 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %15 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %80

23:                                               ; preds = %2
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %26 = call i32 @sdhci_readw(%struct.sdhci_host* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %60 [
    i32 130, label %32
    i32 136, label %36
    i32 133, label %36
    i32 129, label %36
    i32 128, label %40
    i32 131, label %44
    i32 132, label %48
    i32 137, label %48
    i32 135, label %52
    i32 134, label %56
  ]

32:                                               ; preds = %23
  %33 = load i32, i32* @SDHCI_CTRL_UHS_SDR12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %61

36:                                               ; preds = %23, %23, %23
  %37 = load i32, i32* @SDHCI_CTRL_UHS_SDR25, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %61

40:                                               ; preds = %23
  %41 = load i32, i32* @SDHCI_CTRL_UHS_SDR50, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %61

44:                                               ; preds = %23
  %45 = load i32, i32* @SDHCI_CTRL_UHS_SDR104, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %61

48:                                               ; preds = %23, %23
  %49 = load i32, i32* @SDHCI_CTRL_UHS_DDR50, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %61

52:                                               ; preds = %23
  %53 = load i32, i32* @SDHCI_SPRD_CTRL_HS200, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %61

56:                                               ; preds = %23
  %57 = load i32, i32* @SDHCI_SPRD_CTRL_HS400, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %61

60:                                               ; preds = %23
  br label %61

61:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %65 = call i32 @sdhci_writew(%struct.sdhci_host* %62, i32 %63, i32 %64)
  %66 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %67 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %61
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_DLY, align 4
  %79 = call i32 @sdhci_writel(%struct.sdhci_host* %72, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %22, %71, %61
  ret void
}

declare dso_local %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
