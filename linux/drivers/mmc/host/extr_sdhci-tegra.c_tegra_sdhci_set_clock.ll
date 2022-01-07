; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @tegra_sdhci_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_tegra*, align 8
  %7 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %5, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %11 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_tegra* %11, %struct.sdhci_tegra** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = load i32, i32* %4, align 4
  call void @sdhci_set_clock(%struct.sdhci_host* %15, i32 %16)
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = mul i32 %23, 2
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %31 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @clk_set_rate(i32 %32, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %37 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %39 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %53

46:                                               ; preds = %27
  %47 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %48 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @clk_get_rate(i32 %49)
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %42
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load i32, i32* %4, align 4
  call void @sdhci_set_clock(%struct.sdhci_host* %54, i32 %55)
  %56 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %57 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = call i32 @tegra_sdhci_pad_autocalib(%struct.sdhci_host* %61)
  %63 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %64 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %14, %60, %53
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local void @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @tegra_sdhci_pad_autocalib(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
