; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_phy_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_phy_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.ice_aqc_get_phy_caps_data = type { i32, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_get_phy_caps = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ice_aqc_get_phy_caps }

@ICE_AQC_REPORT_MODE_M = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_get_phy_caps = common dso_local global i32 0, align 4
@ICE_AQC_GET_PHY_RQM = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_TOPO_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %0, i32 %1, i32 %2, %struct.ice_aqc_get_phy_caps_data* %3, %struct.ice_sq_cd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %11 = alloca %struct.ice_sq_cd*, align 8
  %12 = alloca %struct.ice_aqc_get_phy_caps*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_aq_desc, align 4
  %15 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ice_aqc_get_phy_caps_data* %3, %struct.ice_aqc_get_phy_caps_data** %10, align 8
  store %struct.ice_sq_cd* %4, %struct.ice_sq_cd** %11, align 8
  store i32 8, i32* %13, align 4
  %16 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %14, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ice_aqc_get_phy_caps* %17, %struct.ice_aqc_get_phy_caps** %12, align 8
  %18 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %10, align 8
  %19 = icmp ne %struct.ice_aqc_get_phy_caps_data* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ICE_AQC_REPORT_MODE_M, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %28 = icmp ne %struct.ice_port_info* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %20, %5
  %30 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %30, i32* %6, align 4
  br label %80

31:                                               ; preds = %26
  %32 = load i32, i32* @ice_aqc_opc_get_phy_caps, align 4
  %33 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %14, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @ICE_AQC_GET_PHY_RQM, align 4
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load %struct.ice_aqc_get_phy_caps*, %struct.ice_aqc_get_phy_caps** %12, align 8
  %40 = getelementptr inbounds %struct.ice_aqc_get_phy_caps, %struct.ice_aqc_get_phy_caps* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.ice_aqc_get_phy_caps*, %struct.ice_aqc_get_phy_caps** %12, align 8
  %47 = getelementptr inbounds %struct.ice_aqc_get_phy_caps, %struct.ice_aqc_get_phy_caps* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %51 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %11, align 8
  %56 = call i32 @ice_aq_send_cmd(i32 %52, %struct.ice_aq_desc* %14, %struct.ice_aqc_get_phy_caps_data* %53, i32 %54, %struct.ice_sq_cd* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ICE_AQC_REPORT_TOPO_CAP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %10, align 8
  %65 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le64_to_cpu(i32 %66)
  %68 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %69 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %10, align 8
  %72 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le64_to_cpu(i32 %73)
  %75 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %76 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %63, %59, %43
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %29
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(i32, %struct.ice_aq_desc*, %struct.ice_aqc_get_phy_caps_data*, i32, %struct.ice_sq_cd*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
