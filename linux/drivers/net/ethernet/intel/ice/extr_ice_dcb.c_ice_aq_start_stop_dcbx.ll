; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_start_stop_dcbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_start_stop_dcbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_lldp_stop_start_specific_agent = type { i64 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_lldp_stop_start_specific_agent }

@ice_aqc_opc_lldp_stop_start_specific_agent = common dso_local global i32 0, align 4
@ICE_AQC_START_STOP_AGENT_START_DCBX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_start_stop_dcbx(%struct.ice_hw* %0, i32 %1, i32* %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ice_sq_cd*, align 8
  %9 = alloca %struct.ice_aqc_lldp_stop_start_specific_agent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_aq_desc, align 8
  %12 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %8, align 8
  %13 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %11, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ice_aqc_lldp_stop_start_specific_agent* %14, %struct.ice_aqc_lldp_stop_start_specific_agent** %9, align 8
  %15 = load i32, i32* @ice_aqc_opc_lldp_stop_start_specific_agent, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %11, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @ICE_AQC_START_STOP_AGENT_START_DCBX, align 8
  %22 = load %struct.ice_aqc_lldp_stop_start_specific_agent*, %struct.ice_aqc_lldp_stop_start_specific_agent** %9, align 8
  %23 = getelementptr inbounds %struct.ice_aqc_lldp_stop_start_specific_agent, %struct.ice_aqc_lldp_stop_start_specific_agent* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %26 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %8, align 8
  %27 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %25, %struct.ice_aq_desc* %11, i32* null, i32 0, %struct.ice_sq_cd* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = load %struct.ice_aqc_lldp_stop_start_specific_agent*, %struct.ice_aqc_lldp_stop_start_specific_agent** %9, align 8
  %33 = getelementptr inbounds %struct.ice_aqc_lldp_stop_start_specific_agent, %struct.ice_aqc_lldp_stop_start_specific_agent* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ICE_AQC_START_STOP_AGENT_START_DCBX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %31, %24
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
