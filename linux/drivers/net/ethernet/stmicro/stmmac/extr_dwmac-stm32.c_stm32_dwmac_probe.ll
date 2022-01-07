; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_stmmacenet_data = type { %struct.stm32_dwmac* }
%struct.stm32_dwmac = type { i32*, %struct.stm32_ops* }
%struct.stm32_ops = type { i32 }
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no of match data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.stm32_dwmac*, align 8
  %7 = alloca %struct.stm32_ops*, align 8
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
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %18 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %16, i32* %17)
  store %struct.plat_stmmacenet_data* %18, %struct.plat_stmmacenet_data** %4, align 8
  %19 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %20 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %23)
  store i32 %24, i32* %2, align 4
  br label %91

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.stm32_dwmac* @devm_kzalloc(i32* %27, i32 16, i32 %28)
  store %struct.stm32_dwmac* %29, %struct.stm32_dwmac** %6, align 8
  %30 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %6, align 8
  %31 = icmp ne %struct.stm32_dwmac* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %86

35:                                               ; preds = %25
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call %struct.stm32_ops* @of_device_get_match_data(i32* %37)
  store %struct.stm32_ops* %38, %struct.stm32_ops** %7, align 8
  %39 = load %struct.stm32_ops*, %struct.stm32_ops** %7, align 8
  %40 = icmp ne %struct.stm32_ops* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %86

47:                                               ; preds = %35
  %48 = load %struct.stm32_ops*, %struct.stm32_ops** %7, align 8
  %49 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %6, align 8
  %50 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %49, i32 0, i32 1
  store %struct.stm32_ops* %48, %struct.stm32_ops** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %6, align 8
  %54 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %6, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @stm32_dwmac_parse_data(%struct.stm32_dwmac* %55, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %86

65:                                               ; preds = %47
  %66 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %6, align 8
  %67 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %68 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %67, i32 0, i32 0
  store %struct.stm32_dwmac* %66, %struct.stm32_dwmac** %68, align 8
  %69 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %70 = call i32 @stm32_dwmac_init(%struct.plat_stmmacenet_data* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %86

74:                                               ; preds = %65
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %78 = call i32 @stmmac_dvr_probe(i32* %76, %struct.plat_stmmacenet_data* %77, %struct.stmmac_resources* %5)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %91

83:                                               ; preds = %81
  %84 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %6, align 8
  %85 = call i32 @stm32_dwmac_clk_disable(%struct.stm32_dwmac* %84)
  br label %86

86:                                               ; preds = %83, %73, %61, %41, %32
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %89 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %87, %struct.plat_stmmacenet_data* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %82, %22, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.stm32_dwmac* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.stm32_ops* @of_device_get_match_data(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stm32_dwmac_parse_data(%struct.stm32_dwmac*, i32*) #1

declare dso_local i32 @stm32_dwmac_init(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stm32_dwmac_clk_disable(%struct.stm32_dwmac*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
