; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_get_cee_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_get_cee_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_cee_dcb_cfg_resp = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aq_desc = type { i32 }

@ice_aqc_opc_get_cee_dcb_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_aqc_get_cee_dcb_cfg_resp*, %struct.ice_sq_cd*)* @ice_aq_get_cee_dcb_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_get_cee_dcb_cfg(%struct.ice_hw* %0, %struct.ice_aqc_get_cee_dcb_cfg_resp* %1, %struct.ice_sq_cd* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_aqc_get_cee_dcb_cfg_resp*, align 8
  %6 = alloca %struct.ice_sq_cd*, align 8
  %7 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_aqc_get_cee_dcb_cfg_resp* %1, %struct.ice_aqc_get_cee_dcb_cfg_resp** %5, align 8
  store %struct.ice_sq_cd* %2, %struct.ice_sq_cd** %6, align 8
  %8 = load i32, i32* @ice_aqc_opc_get_cee_dcb_cfg, align 4
  %9 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %7, i32 %8)
  %10 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %11 = load %struct.ice_aqc_get_cee_dcb_cfg_resp*, %struct.ice_aqc_get_cee_dcb_cfg_resp** %5, align 8
  %12 = bitcast %struct.ice_aqc_get_cee_dcb_cfg_resp* %11 to i8*
  %13 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %6, align 8
  %14 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %10, %struct.ice_aq_desc* %7, i8* %12, i32 4, %struct.ice_sq_cd* %13)
  ret i32 %14
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
