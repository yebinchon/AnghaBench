; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_arasan_data = type { i32, i64, %struct.clk* }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_arasan_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_arasan_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_arasan_data*, align 8
  %7 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %5, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %13 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_arasan_data* %13, %struct.sdhci_arasan_data** %6, align 8
  %14 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %15 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %14, i32 0, i32 2
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  store %struct.clk* %16, %struct.clk** %7, align 8
  %17 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %18 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IS_ERR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %24 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @phy_power_off(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %34 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @phy_exit(i32 %35)
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @sdhci_arasan_unregister_sdclk(i32* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %42 = call i32 @sdhci_pltfm_unregister(%struct.platform_device* %41)
  store i32 %42, i32* %3, align 4
  %43 = load %struct.clk*, %struct.clk** %7, align 8
  %44 = call i32 @clk_disable_unprepare(%struct.clk* %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @sdhci_arasan_unregister_sdclk(i32*) #1

declare dso_local i32 @sdhci_pltfm_unregister(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
