; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_parse_param_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_parse_param_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.device_node = type { i32 }
%struct.xenon_emmc_phy_params = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"marvell,xenon-phy-slow-mode\00", align 1
@XENON_ZNR_DEF_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"marvell,xenon-phy-znr\00", align 1
@XENON_ZNR_MASK = common dso_local global i32 0, align 4
@XENON_ZPR_DEF_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"marvell,xenon-phy-zpr\00", align 1
@XENON_ZPR_MASK = common dso_local global i32 0, align 4
@XENON_TUN_CONSECUTIVE_TIMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"marvell,xenon-phy-nr-success-tun\00", align 1
@XENON_TUN_CONSECUTIVE_TIMES_MASK = common dso_local global i32 0, align 4
@XENON_TUNING_STEP_DIVIDER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"marvell,xenon-phy-tun-step-divider\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.device_node*, %struct.xenon_emmc_phy_params*)* @xenon_emmc_phy_parse_param_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_emmc_phy_parse_param_dt(%struct.sdhci_host* %0, %struct.device_node* %1, %struct.xenon_emmc_phy_params* %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.xenon_emmc_phy_params*, align 8
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.xenon_emmc_phy_params* %2, %struct.xenon_emmc_phy_params** %6, align 8
  %8 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %9 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i64 @of_property_read_bool(%struct.device_node* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %15 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @XENON_ZNR_DEF_VALUE, align 4
  %18 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %19 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @XENON_ZNR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %28 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* @XENON_ZPR_DEF_VALUE, align 4
  %31 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %32 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @XENON_ZPR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %41 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i32, i32* @XENON_TUN_CONSECUTIVE_TIMES, align 4
  %44 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %45 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @XENON_TUN_CONSECUTIVE_TIMES_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %54 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i32, i32* @XENON_TUNING_STEP_DIVIDER, align 4
  %57 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %58 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i32 @of_property_read_u32(%struct.device_node* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 255
  %65 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %66 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %71 = call i32 @get_dt_pad_ctrl_data(%struct.sdhci_host* %68, %struct.device_node* %69, %struct.xenon_emmc_phy_params* %70)
  ret i32 %71
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @get_dt_pad_ctrl_data(%struct.sdhci_host*, %struct.device_node*, %struct.xenon_emmc_phy_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
