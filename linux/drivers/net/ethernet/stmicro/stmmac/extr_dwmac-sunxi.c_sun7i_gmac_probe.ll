; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_gmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_gmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)*, %struct.sunxi_priv_data*, i32, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)* }
%struct.sunxi_priv_data = type { %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data*, i32 }
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"allwinner_gmac_tx\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not get tx clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"no regulator found\0A\00", align 1
@sun7i_fix_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun7i_gmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun7i_gmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.sunxi_priv_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %11, %struct.stmmac_resources* %5)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %128

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %20 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %18, i32* %19)
  store %struct.plat_stmmacenet_data* %20, %struct.plat_stmmacenet_data** %4, align 8
  %21 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %22 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %25)
  store i32 %26, i32* %2, align 4
  br label %128

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sunxi_priv_data* @devm_kzalloc(%struct.device* %28, i32 24, i32 %29)
  store %struct.sunxi_priv_data* %30, %struct.sunxi_priv_data** %6, align 8
  %31 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %32 = icmp ne %struct.sunxi_priv_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %123

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_get_phy_mode(i32 %39)
  %41 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %42 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call %struct.plat_stmmacenet_data* @devm_clk_get(%struct.device* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %46 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %45, i32 0, i32 1
  store %struct.plat_stmmacenet_data* %44, %struct.plat_stmmacenet_data** %46, align 8
  %47 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %48 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %47, i32 0, i32 1
  %49 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %48, align 8
  %50 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %36
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %56 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %55, i32 0, i32 1
  %57 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %57)
  store i32 %58, i32* %8, align 4
  br label %123

59:                                               ; preds = %36
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call %struct.plat_stmmacenet_data* @devm_regulator_get_optional(%struct.device* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %63 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %62, i32 0, i32 0
  store %struct.plat_stmmacenet_data* %61, %struct.plat_stmmacenet_data** %63, align 8
  %64 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %65 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %64, i32 0, i32 0
  %66 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %65, align 8
  %67 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %71 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %70, i32 0, i32 0
  %72 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %71, align 8
  %73 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %72)
  %74 = load i32, i32* @EPROBE_DEFER, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %123

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 @dev_info(%struct.device* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %84 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %83, i32 0, i32 0
  store %struct.plat_stmmacenet_data* null, %struct.plat_stmmacenet_data** %84, align 8
  br label %85

85:                                               ; preds = %80, %59
  %86 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %87 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %89 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %91 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %92 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %91, i32 0, i32 3
  store %struct.sunxi_priv_data* %90, %struct.sunxi_priv_data** %92, align 8
  %93 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %94 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %93, i32 0, i32 2
  store i32 (%struct.platform_device*, %struct.sunxi_priv_data*)* @sun7i_gmac_init, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)** %94, align 8
  %95 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %96 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %95, i32 0, i32 5
  store i32 (%struct.platform_device*, %struct.sunxi_priv_data*)* @sun7i_gmac_exit, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)** %96, align 8
  %97 = load i32, i32* @sun7i_fix_speed, align 4
  %98 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %99 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %102 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %101, i32 0, i32 3
  %103 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %102, align 8
  %104 = call i32 @sun7i_gmac_init(%struct.platform_device* %100, %struct.sunxi_priv_data* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %85
  br label %123

108:                                              ; preds = %85
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %112 = call i32 @stmmac_dvr_probe(%struct.device* %110, %struct.plat_stmmacenet_data* %111, %struct.stmmac_resources* %5)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %117

116:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %128

117:                                              ; preds = %115
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %120 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %119, i32 0, i32 3
  %121 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %120, align 8
  %122 = call i32 @sun7i_gmac_exit(%struct.platform_device* %118, %struct.sunxi_priv_data* %121)
  br label %123

123:                                              ; preds = %117, %107, %77, %52, %33
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %126 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %124, %struct.plat_stmmacenet_data* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %116, %24, %15
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.sunxi_priv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @sun7i_gmac_init(%struct.platform_device*, %struct.sunxi_priv_data*) #1

declare dso_local i32 @sun7i_gmac_exit(%struct.platform_device*, %struct.sunxi_priv_data*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.device*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
