; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { %struct.esdhc_platform_data }
%struct.esdhc_platform_data = type { i32 }

@SDHCI_PRESENT_STATE = common dso_local global i64 0, align 8
@SDHCI_WRITE_PROTECT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @esdhc_pltfm_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_pltfm_get_ro(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.pltfm_imx_data*, align 8
  %6 = alloca %struct.esdhc_platform_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pltfm_host* %8, %struct.sdhci_pltfm_host** %4, align 8
  %9 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %10 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %9)
  store %struct.pltfm_imx_data* %10, %struct.pltfm_imx_data** %5, align 8
  %11 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %5, align 8
  %12 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %11, i32 0, i32 0
  store %struct.esdhc_platform_data* %12, %struct.esdhc_platform_data** %6, align 8
  %13 = load %struct.esdhc_platform_data*, %struct.esdhc_platform_data** %6, align 8
  %14 = getelementptr inbounds %struct.esdhc_platform_data, %struct.esdhc_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %34 [
    i32 129, label %16
    i32 130, label %21
    i32 128, label %33
  ]

16:                                               ; preds = %1
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mmc_gpio_get_ro(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SDHCI_PRESENT_STATE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = load i32, i32* @SDHCI_WRITE_PROTECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %1, %33
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %21, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @mmc_gpio_get_ro(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
