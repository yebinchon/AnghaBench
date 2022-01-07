; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_is_pad_and_regulator_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_is_pad_and_regulator_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NVQUIRK_NEEDS_PAD_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @tegra_sdhci_is_pad_and_regulator_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_is_pad_and_regulator_valid(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_tegra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %4, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %11 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_tegra* %11, %struct.sdhci_tegra** %5, align 8
  %12 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %13 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NVQUIRK_NEEDS_PAD_CONTROL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regulator_is_supported_voltage(i32 %37, i32 1700000, i32 1950000)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regulator_is_supported_voltage(i32 %44, i32 2700000, i32 3600000)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %53 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %48, %31
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %51, %30, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @regulator_is_supported_voltage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
