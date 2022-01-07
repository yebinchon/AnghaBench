; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_sti_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_sti_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, %struct.sti_dwmac* }
%struct.sti_dwmac = type { i32, i32 }
%struct.sti_dwmac_of_data = type { i32 }
%struct.stmmac_resources = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"No OF match data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.sti_dwmac_of_data*, align 8
  %6 = alloca %struct.stmmac_resources, align 4
  %7 = alloca %struct.sti_dwmac*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.sti_dwmac_of_data* @of_device_get_match_data(i32* %10)
  store %struct.sti_dwmac_of_data* %11, %struct.sti_dwmac_of_data** %5, align 8
  %12 = load %struct.sti_dwmac_of_data*, %struct.sti_dwmac_of_data** %5, align 8
  %13 = icmp ne %struct.sti_dwmac_of_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %103

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %21, %struct.stmmac_resources* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %103

27:                                               ; preds = %20
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  %30 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %28, i32* %29)
  store %struct.plat_stmmacenet_data* %30, %struct.plat_stmmacenet_data** %4, align 8
  %31 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %32 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %36 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %35)
  store i32 %36, i32* %2, align 4
  br label %103

37:                                               ; preds = %27
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sti_dwmac* @devm_kzalloc(i32* %39, i32 8, i32 %40)
  store %struct.sti_dwmac* %41, %struct.sti_dwmac** %7, align 8
  %42 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %43 = icmp ne %struct.sti_dwmac* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %98

47:                                               ; preds = %37
  %48 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @sti_dwmac_parse_data(%struct.sti_dwmac* %48, %struct.platform_device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %98

57:                                               ; preds = %47
  %58 = load %struct.sti_dwmac_of_data*, %struct.sti_dwmac_of_data** %5, align 8
  %59 = getelementptr inbounds %struct.sti_dwmac_of_data, %struct.sti_dwmac_of_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %62 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %64 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %65 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %64, i32 0, i32 1
  store %struct.sti_dwmac* %63, %struct.sti_dwmac** %65, align 8
  %66 = load %struct.sti_dwmac_of_data*, %struct.sti_dwmac_of_data** %5, align 8
  %67 = getelementptr inbounds %struct.sti_dwmac_of_data, %struct.sti_dwmac_of_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %70 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %72 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @clk_prepare_enable(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %98

78:                                               ; preds = %57
  %79 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %80 = call i32 @sti_dwmac_set_mode(%struct.sti_dwmac* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %93

84:                                               ; preds = %78
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %88 = call i32 @stmmac_dvr_probe(i32* %86, %struct.plat_stmmacenet_data* %87, %struct.stmmac_resources* %6)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %103

93:                                               ; preds = %91, %83
  %94 = load %struct.sti_dwmac*, %struct.sti_dwmac** %7, align 8
  %95 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_disable_unprepare(i32 %96)
  br label %98

98:                                               ; preds = %93, %77, %53, %44
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %101 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %99, %struct.plat_stmmacenet_data* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %98, %92, %34, %25, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.sti_dwmac_of_data* @of_device_get_match_data(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.sti_dwmac* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sti_dwmac_parse_data(%struct.sti_dwmac*, %struct.platform_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @sti_dwmac_set_mode(%struct.sti_dwmac*) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
