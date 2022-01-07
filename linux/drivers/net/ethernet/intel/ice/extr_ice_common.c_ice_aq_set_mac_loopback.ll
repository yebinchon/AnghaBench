; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_set_mac_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_set_mac_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_set_mac_lb = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_set_mac_lb }

@ice_aqc_opc_set_mac_lb = common dso_local global i32 0, align 4
@ICE_AQ_MAC_LB_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_set_mac_loopback(%struct.ice_hw* %0, i32 %1, %struct.ice_sq_cd* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_sq_cd*, align 8
  %7 = alloca %struct.ice_aqc_set_mac_lb*, align 8
  %8 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ice_sq_cd* %2, %struct.ice_sq_cd** %6, align 8
  %9 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ice_aqc_set_mac_lb* %10, %struct.ice_aqc_set_mac_lb** %7, align 8
  %11 = load i32, i32* @ice_aqc_opc_set_mac_lb, align 4
  %12 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %8, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @ICE_AQ_MAC_LB_EN, align 4
  %17 = load %struct.ice_aqc_set_mac_lb*, %struct.ice_aqc_set_mac_lb** %7, align 8
  %18 = getelementptr inbounds %struct.ice_aqc_set_mac_lb, %struct.ice_aqc_set_mac_lb* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %21 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %6, align 8
  %22 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %20, %struct.ice_aq_desc* %8, i32* null, i32 0, %struct.ice_sq_cd* %21)
  ret i32 %22
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
