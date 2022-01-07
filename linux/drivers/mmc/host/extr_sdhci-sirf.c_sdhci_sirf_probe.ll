; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sirf.c_sdhci_sirf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sirf.c_sdhci_sirf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"unable to get clock\00", align 1
@sdhci_sirf_pdata = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_sirf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_sirf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.sdhci_host* @devm_clk_get(i32* %9, i32* null)
  %11 = bitcast %struct.sdhci_host* %10 to %struct.clk*
  store %struct.clk* %11, %struct.clk** %6, align 8
  %12 = load %struct.clk*, %struct.clk** %6, align 8
  %13 = bitcast %struct.clk* %12 to %struct.sdhci_host*
  %14 = call i64 @IS_ERR(%struct.sdhci_host* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.clk*, %struct.clk** %6, align 8
  %21 = bitcast %struct.clk* %20 to %struct.sdhci_host*
  %22 = call i32 @PTR_ERR(%struct.sdhci_host* %21)
  store i32 %22, i32* %2, align 4
  br label %85

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %24, i32* @sdhci_sirf_pdata, i32 0)
  store %struct.sdhci_host* %25, %struct.sdhci_host** %4, align 8
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %27 = call i64 @IS_ERR(%struct.sdhci_host* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = call i32 @PTR_ERR(%struct.sdhci_host* %30)
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %34 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %33)
  store %struct.sdhci_pltfm_host* %34, %struct.sdhci_pltfm_host** %5, align 8
  %35 = load %struct.clk*, %struct.clk** %6, align 8
  %36 = bitcast %struct.clk* %35 to %struct.sdhci_host*
  %37 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %38 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %37, i32 0, i32 0
  store %struct.sdhci_host* %36, %struct.sdhci_host** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @sdhci_get_of_property(%struct.platform_device* %39)
  %41 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %42 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %41, i32 0, i32 0
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %42, align 8
  %44 = call i32 @clk_prepare_enable(%struct.sdhci_host* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %81

48:                                               ; preds = %32
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %50 = call i32 @sdhci_add_host(%struct.sdhci_host* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %76

54:                                               ; preds = %48
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mmc_gpiod_request_cd(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0, i32* null)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EPROBE_DEFER, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %73

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %69 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mmc_gpiod_request_cd_irq(i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  store i32 0, i32* %2, align 4
  br label %85

73:                                               ; preds = %63
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %75 = call i32 @sdhci_remove_host(%struct.sdhci_host* %74, i32 0)
  br label %76

76:                                               ; preds = %73, %53
  %77 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %78 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %77, i32 0, i32 0
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %78, align 8
  %80 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %79)
  br label %81

81:                                               ; preds = %76, %47
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i32 @sdhci_pltfm_free(%struct.platform_device* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %72, %29, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.sdhci_host* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_gpiod_request_cd(i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmc_gpiod_request_cd_irq(i32) #1

declare dso_local i32 @sdhci_remove_host(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
