; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-lpc18xx.c_lpc18xx_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-lpc18xx.c_lpc18xx_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i64 }
%struct.stmmac_resources = type { i32 }
%struct.regmap = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"nxp,lpc1850-creg\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"syscon lookup failed\0A\00", align 1
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@LPC18XX_CREG_CREG6_ETHMODE_MII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@LPC18XX_CREG_CREG6_ETHMODE_RMII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Only MII and RMII mode supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPC18XX_CREG_CREG6 = common dso_local global i32 0, align 4
@LPC18XX_CREG_CREG6_ETHMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %9, %struct.stmmac_resources* %5)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %2, align 4
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %18 = call %struct.regmap* @stmmac_probe_config_dt(%struct.platform_device* %16, i32* %17)
  %19 = bitcast %struct.regmap* %18 to %struct.plat_stmmacenet_data*
  store %struct.plat_stmmacenet_data* %19, %struct.plat_stmmacenet_data** %4, align 8
  %20 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %21 = bitcast %struct.plat_stmmacenet_data* %20 to %struct.regmap*
  %22 = call i64 @IS_ERR(%struct.regmap* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %26 = bitcast %struct.plat_stmmacenet_data* %25 to %struct.regmap*
  %27 = call i32 @PTR_ERR(%struct.regmap* %26)
  store i32 %27, i32* %2, align 4
  br label %85

28:                                               ; preds = %15
  %29 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = call %struct.regmap* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %31, %struct.regmap** %6, align 8
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = call i64 @IS_ERR(%struct.regmap* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.regmap*, %struct.regmap** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.regmap* %39)
  store i32 %40, i32* %8, align 4
  br label %79

41:                                               ; preds = %28
  %42 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %43 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @LPC18XX_CREG_CREG6_ETHMODE_MII, align 4
  store i32 %48, i32* %7, align 4
  br label %64

49:                                               ; preds = %41
  %50 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @LPC18XX_CREG_CREG6_ETHMODE_RMII, align 4
  store i32 %56, i32* %7, align 4
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %79

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.regmap*, %struct.regmap** %6, align 8
  %66 = load i32, i32* @LPC18XX_CREG_CREG6, align 4
  %67 = load i32, i32* @LPC18XX_CREG_CREG6_ETHMODE_MASK, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @regmap_update_bits(%struct.regmap* %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %73 = bitcast %struct.plat_stmmacenet_data* %72 to %struct.regmap*
  %74 = call i32 @stmmac_dvr_probe(i32* %71, %struct.regmap* %73, %struct.stmmac_resources* %5)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %79

78:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %85

79:                                               ; preds = %77, %57, %35
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %82 = bitcast %struct.plat_stmmacenet_data* %81 to %struct.regmap*
  %83 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %80, %struct.regmap* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %78, %24, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.regmap* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, %struct.regmap*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
