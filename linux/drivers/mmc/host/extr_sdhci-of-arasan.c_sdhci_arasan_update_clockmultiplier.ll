; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_update_clockmultiplier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_update_clockmultiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_arasan_data = type { i32, %struct.sdhci_arasan_soc_ctl_map* }
%struct.sdhci_arasan_soc_ctl_map = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: Have regmap, but no soc-ctl-syscon\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_arasan_update_clockmultiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_arasan_update_clockmultiplier(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_arasan_data*, align 8
  %7 = alloca %struct.sdhci_arasan_soc_ctl_map*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %5, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %11 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_arasan_data* %11, %struct.sdhci_arasan_data** %6, align 8
  %12 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %13 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %12, i32 0, i32 1
  %14 = load %struct.sdhci_arasan_soc_ctl_map*, %struct.sdhci_arasan_soc_ctl_map** %13, align 8
  store %struct.sdhci_arasan_soc_ctl_map* %14, %struct.sdhci_arasan_soc_ctl_map** %7, align 8
  %15 = load %struct.sdhci_arasan_soc_ctl_map*, %struct.sdhci_arasan_soc_ctl_map** %7, align 8
  %16 = icmp ne %struct.sdhci_arasan_soc_ctl_map* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %20 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_hostname(i32 %26)
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = load %struct.sdhci_arasan_soc_ctl_map*, %struct.sdhci_arasan_soc_ctl_map** %7, align 8
  %32 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, %struct.sdhci_arasan_soc_ctl_map* %31, i32 0, i32 0
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sdhci_arasan_syscon_write(%struct.sdhci_host* %30, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23, %17
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_arasan_syscon_write(%struct.sdhci_host*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
