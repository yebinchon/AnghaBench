; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-dwcmshc.c_dwcmshc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-dwcmshc.c_dwcmshc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32, i32 }
%struct.dwcmshc_priv = type { %struct.sdhci_host* }

@sdhci_dwcmshc_pdata = common dso_local global i32 0, align 4
@SZ_128M = common dso_local global i32 0, align 4
@SDHCI_MAX_SEGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get core clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwcmshc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwcmshc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.dwcmshc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %9, i32* @sdhci_dwcmshc_pdata, i32 8)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %12 = call i64 @IS_ERR(%struct.sdhci_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.sdhci_host* %15)
  store i32 %16, i32* %2, align 4
  br label %115

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dma_get_required_mask(i32* %19)
  %21 = load i32, i32* @SZ_128M, align 4
  %22 = call i64 @DIV_ROUND_UP_ULL(i32 %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @SDHCI_MAX_SEGS, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i64, i64* @SDHCI_MAX_SEGS, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %37 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %36)
  store %struct.sdhci_pltfm_host* %37, %struct.sdhci_pltfm_host** %4, align 8
  %38 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %39 = call %struct.dwcmshc_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %38)
  store %struct.dwcmshc_priv* %39, %struct.dwcmshc_priv** %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i8* @devm_clk_get(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = bitcast i8* %42 to %struct.sdhci_host*
  %44 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %45 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %44, i32 0, i32 0
  store %struct.sdhci_host* %43, %struct.sdhci_host** %45, align 8
  %46 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %47 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %46, i32 0, i32 0
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %47, align 8
  %49 = call i64 @IS_ERR(%struct.sdhci_host* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %28
  %52 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %53 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %52, i32 0, i32 0
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.sdhci_host* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %111

60:                                               ; preds = %28
  %61 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %62 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %61, i32 0, i32 0
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %62, align 8
  %64 = call i32 @clk_prepare_enable(%struct.sdhci_host* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %111

68:                                               ; preds = %60
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i8* @devm_clk_get(i32* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %72 = bitcast i8* %71 to %struct.sdhci_host*
  %73 = load %struct.dwcmshc_priv*, %struct.dwcmshc_priv** %6, align 8
  %74 = getelementptr inbounds %struct.dwcmshc_priv, %struct.dwcmshc_priv* %73, i32 0, i32 0
  store %struct.sdhci_host* %72, %struct.sdhci_host** %74, align 8
  %75 = load %struct.dwcmshc_priv*, %struct.dwcmshc_priv** %6, align 8
  %76 = getelementptr inbounds %struct.dwcmshc_priv, %struct.dwcmshc_priv* %75, i32 0, i32 0
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %76, align 8
  %78 = call i64 @IS_ERR(%struct.sdhci_host* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %68
  %81 = load %struct.dwcmshc_priv*, %struct.dwcmshc_priv** %6, align 8
  %82 = getelementptr inbounds %struct.dwcmshc_priv, %struct.dwcmshc_priv* %81, i32 0, i32 0
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %82, align 8
  %84 = call i32 @clk_prepare_enable(%struct.sdhci_host* %83)
  br label %85

85:                                               ; preds = %80, %68
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %87 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mmc_of_parse(i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %102

93:                                               ; preds = %85
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = call i32 @sdhci_get_of_property(%struct.platform_device* %94)
  %96 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %97 = call i32 @sdhci_add_host(%struct.sdhci_host* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %115

102:                                              ; preds = %100, %92
  %103 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %104 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %103, i32 0, i32 0
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %104, align 8
  %106 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %105)
  %107 = load %struct.dwcmshc_priv*, %struct.dwcmshc_priv** %6, align 8
  %108 = getelementptr inbounds %struct.dwcmshc_priv, %struct.dwcmshc_priv* %107, i32 0, i32 0
  %109 = load %struct.sdhci_host*, %struct.sdhci_host** %108, align 8
  %110 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %109)
  br label %111

111:                                              ; preds = %102, %67, %51
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i32 @sdhci_pltfm_free(%struct.platform_device* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %101, %14
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @dma_get_required_mask(i32*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.dwcmshc_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
