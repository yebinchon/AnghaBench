; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, %struct.plat_stmmacenet_data*, i32 }
%struct.stmmac_resources = type { i32 }
%struct.rk_gmac_ops = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no of match data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rk_fix_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk_gmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.rk_gmac_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.rk_gmac_ops* @of_device_get_match_data(i32* %9)
  store %struct.rk_gmac_ops* %10, %struct.rk_gmac_ops** %6, align 8
  %11 = load %struct.rk_gmac_ops*, %struct.rk_gmac_ops** %6, align 8
  %12 = icmp ne %struct.rk_gmac_ops* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %20, %struct.stmmac_resources* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %92

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %29 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %27, i32* %28)
  store %struct.plat_stmmacenet_data* %29, %struct.plat_stmmacenet_data** %4, align 8
  %30 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %31 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %34)
  store i32 %35, i32* %2, align 4
  br label %92

36:                                               ; preds = %26
  %37 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @rk_fix_speed, align 4
  %40 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %44 = load %struct.rk_gmac_ops*, %struct.rk_gmac_ops** %6, align 8
  %45 = call %struct.plat_stmmacenet_data* @rk_gmac_setup(%struct.platform_device* %42, %struct.plat_stmmacenet_data* %43, %struct.rk_gmac_ops* %44)
  %46 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %47 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %46, i32 0, i32 1
  store %struct.plat_stmmacenet_data* %45, %struct.plat_stmmacenet_data** %47, align 8
  %48 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %49 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %48, i32 0, i32 1
  %50 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %49, align 8
  %51 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %55 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %54, i32 0, i32 1
  %56 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %56)
  store i32 %57, i32* %7, align 4
  br label %87

58:                                               ; preds = %36
  %59 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %60 = call i32 @rk_gmac_clk_init(%struct.plat_stmmacenet_data* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %92

65:                                               ; preds = %58
  %66 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %67 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %66, i32 0, i32 1
  %68 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %67, align 8
  %69 = call i32 @rk_gmac_powerup(%struct.plat_stmmacenet_data* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %87

73:                                               ; preds = %65
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %77 = call i32 @stmmac_dvr_probe(i32* %75, %struct.plat_stmmacenet_data* %76, %struct.stmmac_resources* %5)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %92

82:                                               ; preds = %80
  %83 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %84 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %83, i32 0, i32 1
  %85 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %84, align 8
  %86 = call i32 @rk_gmac_powerdown(%struct.plat_stmmacenet_data* %85)
  br label %87

87:                                               ; preds = %82, %72, %53
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %90 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %88, %struct.plat_stmmacenet_data* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %81, %63, %33, %24, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.rk_gmac_ops* @of_device_get_match_data(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.plat_stmmacenet_data* @rk_gmac_setup(%struct.platform_device*, %struct.plat_stmmacenet_data*, %struct.rk_gmac_ops*) #1

declare dso_local i32 @rk_gmac_clk_init(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @rk_gmac_powerup(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @rk_gmac_powerdown(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
