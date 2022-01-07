; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_start_lldp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_start_lldp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_lldp_start = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_lldp_start }

@ice_aqc_opc_lldp_start = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_AGENT_START = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_AGENT_PERSIST_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_start_lldp(%struct.ice_hw* %0, i32 %1, %struct.ice_sq_cd* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_sq_cd*, align 8
  %7 = alloca %struct.ice_aqc_lldp_start*, align 8
  %8 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ice_sq_cd* %2, %struct.ice_sq_cd** %6, align 8
  %9 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ice_aqc_lldp_start* %10, %struct.ice_aqc_lldp_start** %7, align 8
  %11 = load i32, i32* @ice_aqc_opc_lldp_start, align 4
  %12 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %8, i32 %11)
  %13 = load i32, i32* @ICE_AQ_LLDP_AGENT_START, align 4
  %14 = load %struct.ice_aqc_lldp_start*, %struct.ice_aqc_lldp_start** %7, align 8
  %15 = getelementptr inbounds %struct.ice_aqc_lldp_start, %struct.ice_aqc_lldp_start* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @ICE_AQ_LLDP_AGENT_PERSIST_ENA, align 4
  %20 = load %struct.ice_aqc_lldp_start*, %struct.ice_aqc_lldp_start** %7, align 8
  %21 = getelementptr inbounds %struct.ice_aqc_lldp_start, %struct.ice_aqc_lldp_start* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %26 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %6, align 8
  %27 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %25, %struct.ice_aq_desc* %8, i32* null, i32 0, %struct.ice_sq_cd* %26)
  ret i32 %27
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
