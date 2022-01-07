; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-oxnas.c_oxnas_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-oxnas.c_oxnas_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.plat_stmmacenet_data = type { i32 (%struct.platform_device*, %struct.oxnas_dwmac*)*, %struct.oxnas_dwmac.0*, i32 (%struct.platform_device*, %struct.oxnas_dwmac.0*)* }
%struct.oxnas_dwmac = type opaque
%struct.oxnas_dwmac.0 = type { %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data*, %struct.TYPE_5__* }
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"oxsemi,sys-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to have sysctrl regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gmac\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oxnas_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.oxnas_dwmac.0*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %8, %struct.stmmac_resources* %5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %111

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %17 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %15, i32* %16)
  store %struct.plat_stmmacenet_data* %17, %struct.plat_stmmacenet_data** %4, align 8
  %18 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %19 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %22)
  store i32 %23, i32* %2, align 4
  br label %111

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.oxnas_dwmac.0* @devm_kzalloc(%struct.TYPE_5__* %26, i32 24, i32 %27)
  store %struct.oxnas_dwmac.0* %28, %struct.oxnas_dwmac.0** %6, align 8
  %29 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %30 = icmp ne %struct.oxnas_dwmac.0* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %106

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %38 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %37, i32 0, i32 2
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %40 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %40, i32 0, i32 1
  store %struct.oxnas_dwmac.0* %39, %struct.oxnas_dwmac.0** %41, align 8
  %42 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %43 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %42, i32 0, i32 0
  store i32 (%struct.platform_device*, %struct.oxnas_dwmac*)* bitcast (i32 (%struct.platform_device*, %struct.oxnas_dwmac.0*)* @oxnas_dwmac_init to i32 (%struct.platform_device*, %struct.oxnas_dwmac*)*), i32 (%struct.platform_device*, %struct.oxnas_dwmac*)** %43, align 8
  %44 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %45 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %44, i32 0, i32 2
  store i32 (%struct.platform_device*, %struct.oxnas_dwmac.0*)* @oxnas_dwmac_exit, i32 (%struct.platform_device*, %struct.oxnas_dwmac.0*)** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.plat_stmmacenet_data* @syscon_regmap_lookup_by_phandle(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %52 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %51, i32 0, i32 1
  store %struct.plat_stmmacenet_data* %50, %struct.plat_stmmacenet_data** %52, align 8
  %53 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %54 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %53, i32 0, i32 1
  %55 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %54, align 8
  %56 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %34
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %63 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %62, i32 0, i32 1
  %64 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %64)
  store i32 %65, i32* %7, align 4
  br label %106

66:                                               ; preds = %34
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call %struct.plat_stmmacenet_data* @devm_clk_get(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %71 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %70, i32 0, i32 0
  store %struct.plat_stmmacenet_data* %69, %struct.plat_stmmacenet_data** %71, align 8
  %72 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %73 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %72, i32 0, i32 0
  %74 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %73, align 8
  %75 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %6, align 8
  %79 = getelementptr inbounds %struct.oxnas_dwmac.0, %struct.oxnas_dwmac.0* %78, i32 0, i32 0
  %80 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %80)
  store i32 %81, i32* %7, align 4
  br label %106

82:                                               ; preds = %66
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %85 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %84, i32 0, i32 1
  %86 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %85, align 8
  %87 = call i32 @oxnas_dwmac_init(%struct.platform_device* %83, %struct.oxnas_dwmac.0* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %106

91:                                               ; preds = %82
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %95 = call i32 @stmmac_dvr_probe(%struct.TYPE_5__* %93, %struct.plat_stmmacenet_data* %94, %struct.stmmac_resources* %5)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %111

100:                                              ; preds = %98
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %103 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %102, i32 0, i32 1
  %104 = load %struct.oxnas_dwmac.0*, %struct.oxnas_dwmac.0** %103, align 8
  %105 = call i32 @oxnas_dwmac_exit(%struct.platform_device* %101, %struct.oxnas_dwmac.0* %104)
  br label %106

106:                                              ; preds = %100, %90, %77, %58, %31
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %109 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %107, %struct.plat_stmmacenet_data* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %99, %21, %12
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.oxnas_dwmac.0* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @oxnas_dwmac_init(%struct.platform_device*, %struct.oxnas_dwmac.0*) #1

declare dso_local i32 @oxnas_dwmac_exit(%struct.platform_device*, %struct.oxnas_dwmac.0*) #1

declare dso_local %struct.plat_stmmacenet_data* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_clk_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.TYPE_5__*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
