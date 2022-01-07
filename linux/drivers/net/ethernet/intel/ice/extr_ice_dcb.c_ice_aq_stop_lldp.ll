; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_stop_lldp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_stop_lldp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_lldp_stop = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_lldp_stop }

@ice_aqc_opc_lldp_stop = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_AGENT_SHUTDOWN = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_AGENT_PERSIST_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_stop_lldp(%struct.ice_hw* %0, i32 %1, i32 %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_sq_cd*, align 8
  %9 = alloca %struct.ice_aqc_lldp_stop*, align 8
  %10 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %8, align 8
  %11 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ice_aqc_lldp_stop* %12, %struct.ice_aqc_lldp_stop** %9, align 8
  %13 = load i32, i32* @ice_aqc_opc_lldp_stop, align 4
  %14 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %10, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @ICE_AQ_LLDP_AGENT_SHUTDOWN, align 4
  %19 = load %struct.ice_aqc_lldp_stop*, %struct.ice_aqc_lldp_stop** %9, align 8
  %20 = getelementptr inbounds %struct.ice_aqc_lldp_stop, %struct.ice_aqc_lldp_stop* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @ICE_AQ_LLDP_AGENT_PERSIST_DIS, align 4
  %28 = load %struct.ice_aqc_lldp_stop*, %struct.ice_aqc_lldp_stop** %9, align 8
  %29 = getelementptr inbounds %struct.ice_aqc_lldp_stop, %struct.ice_aqc_lldp_stop* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %34 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %8, align 8
  %35 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %33, %struct.ice_aq_desc* %10, i32* null, i32 0, %struct.ice_sq_cd* %34)
  ret i32 %35
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
