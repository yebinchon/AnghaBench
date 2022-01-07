; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32 }
%struct.cqhci_host = type { i32, i32*, i64 }

@MMC_CAP2_CQE = common dso_local global i32 0, align 4
@MMC_CAP2_CQE_DCMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDHCI_TEGRA_CQE_BASE_ADDR = common dso_local global i64 0, align 8
@sdhci_tegra_cqhci_ops = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@CQHCI_TASK_DESC_SZ_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_tegra_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_tegra_add_host(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_tegra*, align 8
  %6 = alloca %struct.cqhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %4, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %12 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.sdhci_tegra* %12, %struct.sdhci_tegra** %5, align 8
  %13 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %14 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = call i32 @sdhci_add_host(%struct.sdhci_host* %18)
  store i32 %19, i32* %2, align 4
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = call i32 @sdhci_enable_v4_mode(%struct.sdhci_host* %21)
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = call i32 @sdhci_setup_host(%struct.sdhci_host* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %20
  %30 = load i32, i32* @MMC_CAP2_CQE, align 4
  %31 = load i32, i32* @MMC_CAP2_CQE_DCMD, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.cqhci_host* @devm_kzalloc(i32 %43, i32 24, i32 %44)
  store %struct.cqhci_host* %45, %struct.cqhci_host** %6, align 8
  %46 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %47 = icmp ne %struct.cqhci_host* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %29
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %91

51:                                               ; preds = %29
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDHCI_TEGRA_CQE_BASE_ADDR, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %58 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %60 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %59, i32 0, i32 1
  store i32* @sdhci_tegra_cqhci_ops, i32** %60, align 8
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = load i32, i32* @CQHCI_TASK_DESC_SZ_128, align 4
  %70 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %71 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %51
  %75 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @cqhci_init(%struct.cqhci_host* %75, %struct.TYPE_2__* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %91

84:                                               ; preds = %74
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %86 = call i32 @__sdhci_add_host(%struct.sdhci_host* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %91

90:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %95

91:                                               ; preds = %89, %83, %48
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %93 = call i32 @sdhci_cleanup_host(%struct.sdhci_host* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %90, %27, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_enable_v4_mode(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_setup_host(%struct.sdhci_host*) #1

declare dso_local %struct.cqhci_host* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @cqhci_init(%struct.cqhci_host*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @__sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_cleanup_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
