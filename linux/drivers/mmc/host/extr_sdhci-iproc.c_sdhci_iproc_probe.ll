; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-iproc.c_sdhci_iproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-iproc.c_sdhci_iproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.sdhci_iproc_data = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sdhci_host = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sdhci_iproc_host = type { %struct.sdhci_iproc_data* }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to enable host clk\0A\00", align 1
@SDHCI_QUIRK_MISSING_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_iproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_iproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sdhci_iproc_data*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_iproc_host*, align 8
  %8 = alloca %struct.sdhci_pltfm_host*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store %struct.sdhci_iproc_data* null, %struct.sdhci_iproc_data** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.sdhci_iproc_data* @device_get_match_data(%struct.device* %12)
  store %struct.sdhci_iproc_data* %13, %struct.sdhci_iproc_data** %5, align 8
  %14 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %5, align 8
  %15 = icmp ne %struct.sdhci_iproc_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %5, align 8
  %22 = getelementptr inbounds %struct.sdhci_iproc_data, %struct.sdhci_iproc_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %20, %struct.TYPE_3__* %23, i32 8)
  store %struct.sdhci_host* %24, %struct.sdhci_host** %6, align 8
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %26 = call i64 @IS_ERR(%struct.sdhci_host* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.sdhci_host* %29)
  store i32 %30, i32* %2, align 4
  br label %138

31:                                               ; preds = %19
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %33 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %32)
  store %struct.sdhci_pltfm_host* %33, %struct.sdhci_pltfm_host** %8, align 8
  %34 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %35 = call %struct.sdhci_iproc_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %34)
  store %struct.sdhci_iproc_host* %35, %struct.sdhci_iproc_host** %7, align 8
  %36 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %5, align 8
  %37 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %7, align 8
  %38 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %37, i32 0, i32 0
  store %struct.sdhci_iproc_data* %36, %struct.sdhci_iproc_data** %38, align 8
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @mmc_of_parse(%struct.TYPE_4__* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %134

46:                                               ; preds = %31
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @sdhci_get_property(%struct.platform_device* %47)
  %49 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %7, align 8
  %50 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %49, i32 0, i32 0
  %51 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %50, align 8
  %52 = getelementptr inbounds %struct.sdhci_iproc_data, %struct.sdhci_iproc_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %55 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %46
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call %struct.sdhci_host* @devm_clk_get(%struct.device* %65, i32* null)
  %67 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %68 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %67, i32 0, i32 0
  store %struct.sdhci_host* %66, %struct.sdhci_host** %68, align 8
  %69 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %70 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %69, i32 0, i32 0
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %70, align 8
  %72 = call i64 @IS_ERR(%struct.sdhci_host* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %76 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %75, i32 0, i32 0
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.sdhci_host* %77)
  store i32 %78, i32* %9, align 4
  br label %134

79:                                               ; preds = %64
  %80 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %81 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %80, i32 0, i32 0
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %81, align 8
  %83 = call i32 @clk_prepare_enable(%struct.sdhci_host* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %134

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %46
  %91 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %7, align 8
  %92 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %91, i32 0, i32 0
  %93 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %92, align 8
  %94 = getelementptr inbounds %struct.sdhci_iproc_data, %struct.sdhci_iproc_data* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SDHCI_QUIRK_MISSING_CAPS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %90
  %102 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %7, align 8
  %103 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %102, i32 0, i32 0
  %104 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %103, align 8
  %105 = getelementptr inbounds %struct.sdhci_iproc_data, %struct.sdhci_iproc_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %108 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %7, align 8
  %110 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %109, i32 0, i32 0
  %111 = load %struct.sdhci_iproc_data*, %struct.sdhci_iproc_data** %110, align 8
  %112 = getelementptr inbounds %struct.sdhci_iproc_data, %struct.sdhci_iproc_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %115 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %101, %90
  %117 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %118 = call i32 @sdhci_add_host(%struct.sdhci_host* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %123

122:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %138

123:                                              ; preds = %121
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = getelementptr inbounds %struct.device, %struct.device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %130 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %129, i32 0, i32 0
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %130, align 8
  %132 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %131)
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %86, %74, %45
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = call i32 @sdhci_pltfm_free(%struct.platform_device* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %122, %28, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.sdhci_iproc_data* @device_get_match_data(%struct.device*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_iproc_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_4__*) #1

declare dso_local i32 @sdhci_get_property(%struct.platform_device*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
