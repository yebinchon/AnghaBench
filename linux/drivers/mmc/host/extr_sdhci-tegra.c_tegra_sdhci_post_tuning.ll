; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_post_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_post_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32, i32, %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32, i32 }

@SDHCI_TEGRA_VENDOR_CLOCK_CTRL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_TAP_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_TAP_SHIFT = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VNDR_TUN_STATUS1 = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VNDR_TUN_STATUS1_TAP_MASK = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VNDR_TUN_STATUS1_END_TAP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Apply tuning correction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @tegra_sdhci_post_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_post_tuning(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_tegra*, align 8
  %5 = alloca %struct.sdhci_tegra_soc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %22 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %21)
  store %struct.sdhci_pltfm_host* %22, %struct.sdhci_pltfm_host** %3, align 8
  %23 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %24 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %23)
  store %struct.sdhci_tegra* %24, %struct.sdhci_tegra** %4, align 8
  %25 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %26 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %25, i32 0, i32 2
  %27 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %26, align 8
  store %struct.sdhci_tegra_soc_data* %27, %struct.sdhci_tegra_soc_data** %5, align 8
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %29 = load i32, i32* @SDHCI_TEGRA_VENDOR_CLOCK_CTRL, align 4
  %30 = call i32 @sdhci_readl(%struct.sdhci_host* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SDHCI_CLOCK_CTRL_TAP_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SDHCI_CLOCK_CTRL_TAP_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %37 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %39 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %1
  %43 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %44 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %128

47:                                               ; preds = %42
  %48 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %49 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %52 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %55 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USEC_PER_SEC, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* @USEC_PER_SEC, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = mul nsw i32 2, %68
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %69, %70
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %20, align 4
  %74 = sdiv i32 %73, 4
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %18, align 4
  %76 = mul nsw i32 %75, 2
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = sdiv i32 %76, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %10, align 4
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %84 = load i32, i32* @SDHCI_TEGRA_VNDR_TUN_STATUS1, align 4
  %85 = call i32 @sdhci_readl(%struct.sdhci_host* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SDHCI_TEGRA_VNDR_TUN_STATUS1_TAP_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SDHCI_TEGRA_VNDR_TUN_STATUS1_END_TAP_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = load i32, i32* @SDHCI_TEGRA_VNDR_TUN_STATUS1_TAP_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %13, align 4
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %47
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %16, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %109, 2
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112, %107, %102, %47
  %117 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %118 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mmc_hostname(i32 %119)
  %121 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @tegra_sdhci_tap_correction(%struct.sdhci_host* %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %116, %112
  br label %128

128:                                              ; preds = %127, %42, %1
  %129 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %130 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %131 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %129, i32 %132)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @tegra_sdhci_tap_correction(%struct.sdhci_host*, i32, i32, i32) #1

declare dso_local i32 @tegra_sdhci_set_tap(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
