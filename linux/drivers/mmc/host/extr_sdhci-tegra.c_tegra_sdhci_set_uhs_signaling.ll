; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32, i32, i64, i64 }

@TRIES_256 = common dso_local global i32 0, align 4
@TRIES_128 = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_0 = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_TUN_ITER_MASK = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_MASK = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_MUL_M_MASK = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_TUN_ITER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_SHIFT = common dso_local global i32 0, align 4
@SDHCI_VNDR_TUN_CTRL0_MUL_M_SHIFT = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VNDR_TUN_CTRL1_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @tegra_sdhci_set_uhs_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_tegra*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %12)
  store %struct.sdhci_pltfm_host* %13, %struct.sdhci_pltfm_host** %5, align 8
  %14 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %15 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %14)
  store %struct.sdhci_tegra* %15, %struct.sdhci_tegra** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @TRIES_256, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %18 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 129, label %21
    i32 132, label %21
    i32 131, label %23
    i32 133, label %25
    i32 130, label %25
  ]

20:                                               ; preds = %2
  br label %29

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @TRIES_128, align 4
  store i32 %22, i32* %10, align 4
  br label %29

23:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %24 = load i32, i32* @TRIES_128, align 4
  store i32 %24, i32* %10, align 4
  br label %29

25:                                               ; preds = %2, %2
  %26 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %27 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i32 1, i32* %7, align 4
  br label %29

28:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25, %23, %21, %20
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_0, align 4
  %32 = call i32 @sdhci_readl(%struct.sdhci_host* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_TUN_ITER_MASK, align 4
  %34 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_MUL_M_MASK, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_TUN_ITER_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_SHIFT, align 4
  %45 = shl i32 0, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_MUL_M_SHIFT, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SDHCI_VNDR_TUN_CTRL0_0, align 4
  %55 = call i32 @sdhci_writel(%struct.sdhci_host* %52, i32 %53, i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = load i32, i32* @SDHCI_TEGRA_VNDR_TUN_CTRL1_0, align 4
  %58 = call i32 @sdhci_writel(%struct.sdhci_host* %56, i32 0, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @TRIES_128, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 128, i32 256
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %65 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @sdhci_set_uhs_signaling(%struct.sdhci_host* %66, i32 %67)
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %70 = call i32 @tegra_sdhci_pad_autocalib(%struct.sdhci_host* %69)
  %71 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %72 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %29
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %80 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %81 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %79, i64 %82)
  br label %90

84:                                               ; preds = %75, %29
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %86 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %87 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %85, i64 %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %95 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %96 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @tegra_sdhci_set_dqs_trim(%struct.sdhci_host* %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %90
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %104 = call i32 @tegra_sdhci_hs400_dll_cal(%struct.sdhci_host* %103)
  br label %105

105:                                              ; preds = %102, %99
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_set_uhs_signaling(%struct.sdhci_host*, i32) #1

declare dso_local i32 @tegra_sdhci_pad_autocalib(%struct.sdhci_host*) #1

declare dso_local i32 @tegra_sdhci_set_tap(%struct.sdhci_host*, i64) #1

declare dso_local i32 @tegra_sdhci_set_dqs_trim(%struct.sdhci_host*, i32) #1

declare dso_local i32 @tegra_sdhci_hs400_dll_cal(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
