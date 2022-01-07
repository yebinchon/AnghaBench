; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32 }
%struct.xenon_priv = type { %struct.sdhci_host* }

@sdhci_xenon_pdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to setup input clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xenon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.xenon_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %8, i32* @sdhci_xenon_pdata, i32 8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %5, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %11 = call i64 @IS_ERR(%struct.sdhci_host* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %15 = call i32 @PTR_ERR(%struct.sdhci_host* %14)
  store i32 %15, i32* %2, align 4
  br label %158

16:                                               ; preds = %1
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %18 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %17)
  store %struct.sdhci_pltfm_host* %18, %struct.sdhci_pltfm_host** %4, align 8
  %19 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %20 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %19)
  store %struct.xenon_priv* %20, %struct.xenon_priv** %6, align 8
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %22 = call i32 @xenon_replace_mmc_host_ops(%struct.sdhci_host* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i8* @devm_clk_get(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.sdhci_host*
  %27 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %28 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %27, i32 0, i32 0
  store %struct.sdhci_host* %26, %struct.sdhci_host** %28, align 8
  %29 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %30 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %29, i32 0, i32 0
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %30, align 8
  %32 = call i64 @IS_ERR(%struct.sdhci_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %16
  %35 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %36 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %35, i32 0, i32 0
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.sdhci_host* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %154

43:                                               ; preds = %16
  %44 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %45 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %44, i32 0, i32 0
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %45, align 8
  %47 = call i32 @clk_prepare_enable(%struct.sdhci_host* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %154

51:                                               ; preds = %43
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i8* @devm_clk_get(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %55 = bitcast i8* %54 to %struct.sdhci_host*
  %56 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %57 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %56, i32 0, i32 0
  store %struct.sdhci_host* %55, %struct.sdhci_host** %57, align 8
  %58 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %59 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %58, i32 0, i32 0
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %59, align 8
  %61 = call i64 @IS_ERR(%struct.sdhci_host* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %65 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %64, i32 0, i32 0
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.sdhci_host* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %149

73:                                               ; preds = %63
  br label %83

74:                                               ; preds = %51
  %75 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %76 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %75, i32 0, i32 0
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %76, align 8
  %78 = call i32 @clk_prepare_enable(%struct.sdhci_host* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %149

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %73
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %85 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mmc_of_parse(i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %144

91:                                               ; preds = %83
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i32 @sdhci_get_of_property(%struct.platform_device* %92)
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %95 = call i32 @xenon_set_acg(%struct.sdhci_host* %94, i32 0)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i32 @xenon_probe_dt(%struct.platform_device* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %144

101:                                              ; preds = %91
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %103 = call i32 @xenon_sdhc_prepare(%struct.sdhci_host* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %144

107:                                              ; preds = %101
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @pm_runtime_get_noresume(i32* %109)
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @pm_runtime_set_active(i32* %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @pm_runtime_set_autosuspend_delay(i32* %115, i32 50)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @pm_runtime_use_autosuspend(i32* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @pm_runtime_enable(i32* %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @pm_suspend_ignore_children(i32* %124, i32 1)
  %126 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %127 = call i32 @sdhci_add_host(%struct.sdhci_host* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %107
  br label %135

131:                                              ; preds = %107
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @pm_runtime_put_autosuspend(i32* %133)
  store i32 0, i32* %2, align 4
  br label %158

135:                                              ; preds = %130
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @pm_runtime_disable(i32* %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @pm_runtime_put_noidle(i32* %140)
  %142 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %143 = call i32 @xenon_sdhc_unprepare(%struct.sdhci_host* %142)
  br label %144

144:                                              ; preds = %135, %106, %100, %90
  %145 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %146 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %145, i32 0, i32 0
  %147 = load %struct.sdhci_host*, %struct.sdhci_host** %146, align 8
  %148 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %147)
  br label %149

149:                                              ; preds = %144, %81, %72
  %150 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %151 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %150, i32 0, i32 0
  %152 = load %struct.sdhci_host*, %struct.sdhci_host** %151, align 8
  %153 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %152)
  br label %154

154:                                              ; preds = %149, %50, %34
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = call i32 @sdhci_pltfm_free(%struct.platform_device* %155)
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %131, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @xenon_replace_mmc_host_ops(%struct.sdhci_host*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i32 @xenon_set_acg(%struct.sdhci_host*, i32) #1

declare dso_local i32 @xenon_probe_dt(%struct.platform_device*) #1

declare dso_local i32 @xenon_sdhc_prepare(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @xenon_sdhc_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
