; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-dove.c_sdhci_dove_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-dove.c_sdhci_dove_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }

@sdhci_dove_pdata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_dove_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_dove_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %7, i32* @sdhci_dove_pdata, i32 0)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %4, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %10 = call i64 @IS_ERR(%struct.sdhci_host* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.sdhci_host* %13)
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %17 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %16)
  store %struct.sdhci_pltfm_host* %17, %struct.sdhci_pltfm_host** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.sdhci_host* @devm_clk_get(i32* %19, i32* null)
  %21 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %22 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %21, i32 0, i32 0
  store %struct.sdhci_host* %20, %struct.sdhci_host** %22, align 8
  %23 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %24 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %23, i32 0, i32 0
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %24, align 8
  %26 = call i64 @IS_ERR(%struct.sdhci_host* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %15
  %29 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %30 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %29, i32 0, i32 0
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %30, align 8
  %32 = call i32 @clk_prepare_enable(%struct.sdhci_host* %31)
  br label %33

33:                                               ; preds = %28, %15
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mmc_of_parse(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %43 = call i32 @sdhci_add_host(%struct.sdhci_host* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

48:                                               ; preds = %46, %40
  %49 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %50 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %49, i32 0, i32 0
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %50, align 8
  %52 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @sdhci_pltfm_free(%struct.platform_device* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %47, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
