; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_qcom_ethqos_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_qcom_ethqos_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, %struct.qcom_ethqos* }
%struct.qcom_ethqos = type { %struct.plat_stmmacenet_data*, i32, i32, %struct.plat_stmmacenet_data*, %struct.platform_device* }
%struct.stmmac_resources = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"dt configuration failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't get rgmii base\0A\00", align 1
@SPEED_1000 = common dso_local global i32 0, align 4
@ethqos_fix_mac_speed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"snps,tso\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_ethqos_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_ethqos_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca %struct.stmmac_resources, align 4
  %7 = alloca %struct.qcom_ethqos*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %14, %struct.stmmac_resources* %6)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %2, align 4
  br label %142

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  %23 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %21, i32* %22)
  store %struct.plat_stmmacenet_data* %23, %struct.plat_stmmacenet_data** %5, align 8
  %24 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %25 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %32 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %31)
  store i32 %32, i32* %2, align 4
  br label %142

33:                                               ; preds = %20
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.qcom_ethqos* @devm_kzalloc(%struct.TYPE_7__* %35, i32 32, i32 %36)
  store %struct.qcom_ethqos* %37, %struct.qcom_ethqos** %7, align 8
  %38 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %39 = icmp ne %struct.qcom_ethqos* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %137

43:                                               ; preds = %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %46 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %45, i32 0, i32 4
  store %struct.platform_device* %44, %struct.platform_device** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %49, %struct.resource** %8, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %8, align 8
  %53 = call %struct.plat_stmmacenet_data* @devm_ioremap_resource(%struct.TYPE_7__* %51, %struct.resource* %52)
  %54 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %55 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %54, i32 0, i32 3
  store %struct.plat_stmmacenet_data* %53, %struct.plat_stmmacenet_data** %55, align 8
  %56 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %57 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %56, i32 0, i32 3
  %58 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %57, align 8
  %59 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %43
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %66 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %65, i32 0, i32 3
  %67 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %67)
  store i32 %68, i32* %9, align 4
  br label %137

69:                                               ; preds = %43
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @of_device_get_match_data(%struct.TYPE_7__* %71)
  %73 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %74 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call %struct.plat_stmmacenet_data* @devm_clk_get(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %79 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %78, i32 0, i32 0
  store %struct.plat_stmmacenet_data* %77, %struct.plat_stmmacenet_data** %79, align 8
  %80 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %81 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %80, i32 0, i32 0
  %82 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %81, align 8
  %83 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %87 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %86, i32 0, i32 0
  %88 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %87, align 8
  %89 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %88)
  store i32 %89, i32* %9, align 4
  br label %137

90:                                               ; preds = %69
  %91 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %92 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %91, i32 0, i32 0
  %93 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %92, align 8
  %94 = call i32 @clk_prepare_enable(%struct.plat_stmmacenet_data* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %137

98:                                               ; preds = %90
  %99 = load i32, i32* @SPEED_1000, align 4
  %100 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %101 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %103 = load i32, i32* @SPEED_1000, align 4
  %104 = call i32 @ethqos_update_rgmii_clk(%struct.qcom_ethqos* %102, i32 %103)
  %105 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %106 = call i32 @ethqos_set_func_clk_en(%struct.qcom_ethqos* %105)
  %107 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %108 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %109 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %108, i32 0, i32 4
  store %struct.qcom_ethqos* %107, %struct.qcom_ethqos** %109, align 8
  %110 = load i32, i32* @ethqos_fix_mac_speed, align 4
  %111 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %112 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %114 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %116 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.device_node*, %struct.device_node** %4, align 8
  %118 = call i32 @of_property_read_bool(%struct.device_node* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %120 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %124 = call i32 @stmmac_dvr_probe(%struct.TYPE_7__* %122, %struct.plat_stmmacenet_data* %123, %struct.stmmac_resources* %6)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %98
  br label %132

128:                                              ; preds = %98
  %129 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %130 = call i32 @rgmii_dump(%struct.qcom_ethqos* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %142

132:                                              ; preds = %127
  %133 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %7, align 8
  %134 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %133, i32 0, i32 0
  %135 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %134, align 8
  %136 = call i32 @clk_disable_unprepare(%struct.plat_stmmacenet_data* %135)
  br label %137

137:                                              ; preds = %132, %97, %85, %61, %40
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %140 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %138, %struct.plat_stmmacenet_data* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %137, %128, %27, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.qcom_ethqos* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @ethqos_update_rgmii_clk(%struct.qcom_ethqos*, i32) #1

declare dso_local i32 @ethqos_set_func_clk_en(%struct.qcom_ethqos*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.TYPE_7__*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @rgmii_dump(%struct.qcom_ethqos*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
