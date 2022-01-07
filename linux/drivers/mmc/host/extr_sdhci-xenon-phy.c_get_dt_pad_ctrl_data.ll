; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_get_dt_pad_ctrl_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_get_dt_pad_ctrl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.device_node = type opaque
%struct.xenon_emmc_phy_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"marvell,armada-3700-sdhci\00", align 1
@armada_3700_soc_pad_voltage_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Unable to find SoC PAD ctrl register address for %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"marvell,pad-type\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Unable to determine SoC PHY PAD ctrl type\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@SOC_PAD_SD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"fixed-1-8v\00", align 1
@SOC_PAD_FIXED_1_8V = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Unsupported SoC PHY PAD ctrl type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.device_node*, %struct.xenon_emmc_phy_params*)* @get_dt_pad_ctrl_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dt_pad_ctrl_data(%struct.sdhci_host* %0, %struct.device_node* %1, %struct.xenon_emmc_phy_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.xenon_emmc_phy_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.resource, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.xenon_emmc_phy_params* %2, %struct.xenon_emmc_phy_params** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = bitcast %struct.device_node* %11 to i8*
  %13 = call i64 @of_device_is_compatible(i8* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @armada_3700_soc_pad_voltage_set, align 4
  %17 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %18 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

21:                                               ; preds = %15
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = bitcast %struct.device_node* %22 to i8*
  %24 = call i64 @of_address_to_resource(i8* %23, i32 1, %struct.resource* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mmc_dev(i32 %29)
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %99

35:                                               ; preds = %21
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mmc_dev(i32 %38)
  %40 = call i32 @devm_ioremap_resource(i32 %39, %struct.resource* %10)
  %41 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %42 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %45 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %52 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %4, align 4
  br label %99

56:                                               ; preds = %35
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = bitcast %struct.device_node* %57 to i8*
  %59 = call i32 @of_property_read_string(i8* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mmc_dev(i32 %65)
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %99

69:                                               ; preds = %56
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @SOC_PAD_SD, align 4
  %75 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %76 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @SOC_PAD_FIXED_1_8V, align 4
  %84 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %85 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  br label %96

87:                                               ; preds = %78
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %89 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mmc_dev(i32 %90)
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %99

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %87, %62, %50, %26, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @of_device_is_compatible(i8*, i8*) #1

declare dso_local i64 @of_address_to_resource(i8*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_string(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
