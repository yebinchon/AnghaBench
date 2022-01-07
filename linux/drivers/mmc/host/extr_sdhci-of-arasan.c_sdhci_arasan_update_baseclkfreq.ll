; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_update_baseclkfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_update_baseclkfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_arasan_data = type { i32, %struct.sdhci_arasan_soc_ctl_map* }
%struct.sdhci_arasan_soc_ctl_map = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: Have regmap, but no soc-ctl-syscon\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_arasan_update_baseclkfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_arasan_update_baseclkfreq(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_arasan_data*, align 8
  %5 = alloca %struct.sdhci_arasan_soc_ctl_map*, align 8
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pltfm_host* %8, %struct.sdhci_pltfm_host** %3, align 8
  %9 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %10 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %9)
  store %struct.sdhci_arasan_data* %10, %struct.sdhci_arasan_data** %4, align 8
  %11 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %4, align 8
  %12 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %11, i32 0, i32 1
  %13 = load %struct.sdhci_arasan_soc_ctl_map*, %struct.sdhci_arasan_soc_ctl_map** %12, align 8
  store %struct.sdhci_arasan_soc_ctl_map* %13, %struct.sdhci_arasan_soc_ctl_map** %5, align 8
  %14 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = call i32 @DIV_ROUND_CLOSEST(i32 %17, i32 1000000)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sdhci_arasan_soc_ctl_map*, %struct.sdhci_arasan_soc_ctl_map** %5, align 8
  %20 = icmp ne %struct.sdhci_arasan_soc_ctl_map* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %4, align 8
  %24 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %29 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_hostname(i32 %30)
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %39

33:                                               ; preds = %22
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %35 = load %struct.sdhci_arasan_soc_ctl_map*, %struct.sdhci_arasan_soc_ctl_map** %5, align 8
  %36 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, %struct.sdhci_arasan_soc_ctl_map* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @sdhci_arasan_syscon_write(%struct.sdhci_host* %34, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %27, %21
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_arasan_syscon_write(%struct.sdhci_host*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
