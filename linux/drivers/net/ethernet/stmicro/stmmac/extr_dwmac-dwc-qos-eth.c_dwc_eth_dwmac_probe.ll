; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_dwc_eth_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_dwc_eth_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dwc_eth_dwmac_data = type { i32 (%struct.platform_device*)*, i8* (%struct.platform_device*, i8*, %struct.stmmac_resources*)* }
%struct.stmmac_resources = type { i64, i32, i8*, i32 }
%struct.plat_stmmacenet_data = type opaque

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to probe subdriver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc_eth_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_eth_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc_eth_dwmac_data*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca %struct.stmmac_resources, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.dwc_eth_dwmac_data* @of_device_get_match_data(i32* %10)
  store %struct.dwc_eth_dwmac_data* %11, %struct.dwc_eth_dwmac_data** %4, align 8
  %12 = call i32 @memset(%struct.stmmac_resources* %6, i32 0, i32 32)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i64 @platform_get_irq(%struct.platform_device* %13, i32 0)
  %15 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %28, i32 0)
  %30 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %2, align 4
  br label %107

39:                                               ; preds = %23
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 3
  %42 = call i8* @stmmac_probe_config_dt(%struct.platform_device* %40, i32* %41)
  %43 = bitcast i8* %42 to %struct.plat_stmmacenet_data*
  store %struct.plat_stmmacenet_data* %43, %struct.plat_stmmacenet_data** %5, align 8
  %44 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %45 = bitcast %struct.plat_stmmacenet_data* %44 to i8*
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %50 = bitcast %struct.plat_stmmacenet_data* %49 to i8*
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %39
  %53 = load %struct.dwc_eth_dwmac_data*, %struct.dwc_eth_dwmac_data** %4, align 8
  %54 = getelementptr inbounds %struct.dwc_eth_dwmac_data, %struct.dwc_eth_dwmac_data* %53, i32 0, i32 1
  %55 = load i8* (%struct.platform_device*, i8*, %struct.stmmac_resources*)*, i8* (%struct.platform_device*, i8*, %struct.stmmac_resources*)** %54, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %58 = bitcast %struct.plat_stmmacenet_data* %57 to i8*
  %59 = call i8* %55(%struct.platform_device* %56, i8* %58, %struct.stmmac_resources* %6)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %63
  br label %101

76:                                               ; preds = %52
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %79 = bitcast %struct.plat_stmmacenet_data* %78 to i8*
  %80 = call i32 @dwc_eth_dwmac_config_dt(%struct.platform_device* %77, i8* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %95

84:                                               ; preds = %76
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %88 = bitcast %struct.plat_stmmacenet_data* %87 to i8*
  %89 = call i32 @stmmac_dvr_probe(i32* %86, i8* %88, %struct.stmmac_resources* %6)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %92, %83
  %96 = load %struct.dwc_eth_dwmac_data*, %struct.dwc_eth_dwmac_data** %4, align 8
  %97 = getelementptr inbounds %struct.dwc_eth_dwmac_data, %struct.dwc_eth_dwmac_data* %96, i32 0, i32 0
  %98 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %97, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 %98(%struct.platform_device* %99)
  br label %101

101:                                              ; preds = %95, %75
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %104 = bitcast %struct.plat_stmmacenet_data* %103 to i8*
  %105 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %102, i8* %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %101, %93, %48, %35, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.dwc_eth_dwmac_data* @of_device_get_match_data(i32*) #1

declare dso_local i32 @memset(%struct.stmmac_resources*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dwc_eth_dwmac_config_dt(%struct.platform_device*, i8*) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, i8*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
