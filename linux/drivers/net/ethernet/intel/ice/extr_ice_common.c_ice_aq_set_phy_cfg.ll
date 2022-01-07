; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_set_phy_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_set_phy_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_set_phy_cfg_data = type { i32, i64, i64, i64, i64, i32, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_AQ_PHY_ENA_VALID_MASK = common dso_local global i32 0, align 4
@ICE_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid bit is set in ice_aqc_set_phy_cfg_data->caps : 0x%x\0A\00", align 1
@ice_aqc_opc_set_phy_cfg = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@ICE_DBG_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"phy_type_low = 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"phy_type_high = 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"caps = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"low_power_ctrl = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"eee_cap = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"eeer_value = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"link_fec_opt = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_set_phy_cfg(%struct.ice_hw* %0, i32 %1, %struct.ice_aqc_set_phy_cfg_data* %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_aqc_set_phy_cfg_data*, align 8
  %9 = alloca %struct.ice_sq_cd*, align 8
  %10 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ice_aqc_set_phy_cfg_data* %2, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %9, align 8
  %11 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %12 = icmp ne %struct.ice_aqc_set_phy_cfg_data* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %14, i32* %5, align 4
  br label %97

15:                                               ; preds = %4
  %16 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %17 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ICE_AQ_PHY_ENA_VALID_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %25 = load i32, i32* @ICE_DBG_PHY, align 4
  %26 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %27 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = call i32 @ice_debug(%struct.ice_hw* %24, i32 %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @ICE_AQ_PHY_ENA_VALID_MASK, align 4
  %32 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %33 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %23, %15
  %37 = load i32, i32* @ice_aqc_opc_set_phy_cfg, align 4
  %38 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %10, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %49 = load i32, i32* @ICE_DBG_LINK, align 4
  %50 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %51 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le64_to_cpu(i32 %52)
  %54 = call i32 @ice_debug(%struct.ice_hw* %48, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %56 = load i32, i32* @ICE_DBG_LINK, align 4
  %57 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %58 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @le64_to_cpu(i32 %59)
  %61 = call i32 @ice_debug(%struct.ice_hw* %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %63 = load i32, i32* @ICE_DBG_LINK, align 4
  %64 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %65 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = call i32 @ice_debug(%struct.ice_hw* %62, i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  %69 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %70 = load i32, i32* @ICE_DBG_LINK, align 4
  %71 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %72 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ice_debug(%struct.ice_hw* %69, i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %76 = load i32, i32* @ICE_DBG_LINK, align 4
  %77 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %78 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ice_debug(%struct.ice_hw* %75, i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %79)
  %81 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %82 = load i32, i32* @ICE_DBG_LINK, align 4
  %83 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %84 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ice_debug(%struct.ice_hw* %81, i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %85)
  %87 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %88 = load i32, i32* @ICE_DBG_LINK, align 4
  %89 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %90 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ice_debug(%struct.ice_hw* %87, i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %91)
  %93 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %94 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %8, align 8
  %95 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %96 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %93, %struct.ice_aq_desc* %10, %struct.ice_aqc_set_phy_cfg_data* %94, i32 48, %struct.ice_sq_cd* %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %36, %13
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i64) #1

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_set_phy_cfg_data*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
