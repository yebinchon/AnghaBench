; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-socfpga.c_socfpga_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-socfpga.c_socfpga_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, %struct.socfpga_dwmac* }
%struct.socfpga_dwmac = type { i32, %struct.socfpga_dwmac_ops*, %struct.plat_stmmacenet_data* }
%struct.socfpga_dwmac_ops = type { i32 (%struct.socfpga_dwmac.0*)* }
%struct.socfpga_dwmac.0 = type opaque
%struct.stmmac_resources = type { i32 }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no of match data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"stmmaceth-ocp\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"error getting reset control of ocp %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@socfpga_dwmac_fix_mac_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @socfpga_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socfpga_dwmac*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.stmmac_priv*, align 8
  %11 = alloca %struct.socfpga_dwmac_ops*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.socfpga_dwmac_ops* @device_get_match_data(%struct.device* %15)
  store %struct.socfpga_dwmac_ops* %16, %struct.socfpga_dwmac_ops** %11, align 8
  %17 = load %struct.socfpga_dwmac_ops*, %struct.socfpga_dwmac_ops** %11, align 8
  %18 = icmp ne %struct.socfpga_dwmac_ops* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %130

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %26, %struct.stmmac_resources* %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %130

32:                                               ; preds = %25
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %35 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %33, i32* %34)
  store %struct.plat_stmmacenet_data* %35, %struct.plat_stmmacenet_data** %4, align 8
  %36 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %37 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %41 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %40)
  store i32 %41, i32* %2, align 4
  br label %130

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.socfpga_dwmac* @devm_kzalloc(%struct.device* %43, i32 24, i32 %44)
  store %struct.socfpga_dwmac* %45, %struct.socfpga_dwmac** %8, align 8
  %46 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %47 = icmp ne %struct.socfpga_dwmac* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %125

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call %struct.plat_stmmacenet_data* @devm_reset_control_get_optional(%struct.device* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %55 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %54, i32 0, i32 2
  store %struct.plat_stmmacenet_data* %53, %struct.plat_stmmacenet_data** %55, align 8
  %56 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %57 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %56, i32 0, i32 2
  %58 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %57, align 8
  %59 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %63 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %62, i32 0, i32 2
  %64 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %125

69:                                               ; preds = %51
  %70 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %71 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %70, i32 0, i32 2
  %72 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %71, align 8
  %73 = call i32 @reset_control_deassert(%struct.plat_stmmacenet_data* %72)
  %74 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 @socfpga_dwmac_parse_data(%struct.socfpga_dwmac* %74, %struct.device* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %125

82:                                               ; preds = %69
  %83 = load %struct.socfpga_dwmac_ops*, %struct.socfpga_dwmac_ops** %11, align 8
  %84 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %85 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %84, i32 0, i32 1
  store %struct.socfpga_dwmac_ops* %83, %struct.socfpga_dwmac_ops** %85, align 8
  %86 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %87 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %87, i32 0, i32 1
  store %struct.socfpga_dwmac* %86, %struct.socfpga_dwmac** %88, align 8
  %89 = load i32, i32* @socfpga_dwmac_fix_mac_speed, align 4
  %90 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %91 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %95 = call i32 @stmmac_dvr_probe(%struct.device* %93, %struct.plat_stmmacenet_data* %94, %struct.stmmac_resources* %5)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %125

99:                                               ; preds = %82
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %100)
  store %struct.net_device* %101, %struct.net_device** %9, align 8
  %102 = load %struct.net_device*, %struct.net_device** %9, align 8
  %103 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %102)
  store %struct.stmmac_priv* %103, %struct.stmmac_priv** %10, align 8
  %104 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %105 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %110 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.socfpga_dwmac_ops*, %struct.socfpga_dwmac_ops** %11, align 8
  %112 = getelementptr inbounds %struct.socfpga_dwmac_ops, %struct.socfpga_dwmac_ops* %111, i32 0, i32 0
  %113 = load i32 (%struct.socfpga_dwmac.0*)*, i32 (%struct.socfpga_dwmac.0*)** %112, align 8
  %114 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %8, align 8
  %115 = bitcast %struct.socfpga_dwmac* %114 to %struct.socfpga_dwmac.0*
  %116 = call i32 %113(%struct.socfpga_dwmac.0* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %99
  br label %121

120:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %130

121:                                              ; preds = %119
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @stmmac_dvr_remove(%struct.device* %123)
  br label %125

125:                                              ; preds = %121, %98, %79, %61, %48
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %128 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %126, %struct.plat_stmmacenet_data* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %120, %39, %30, %19
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.socfpga_dwmac_ops* @device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.socfpga_dwmac* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_reset_control_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @socfpga_dwmac_parse_data(%struct.socfpga_dwmac*, %struct.device*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.device*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_dvr_remove(%struct.device*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
