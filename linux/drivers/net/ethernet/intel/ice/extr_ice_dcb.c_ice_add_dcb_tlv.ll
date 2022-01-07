; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_dcb_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_dcb_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_lldp_org_tlv = type { i32 }
%struct.ice_dcbx_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*, i32)* @ice_add_dcb_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_add_dcb_tlv(%struct.ice_lldp_org_tlv* %0, %struct.ice_dcbx_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.ice_lldp_org_tlv*, align 8
  %5 = alloca %struct.ice_dcbx_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.ice_lldp_org_tlv* %0, %struct.ice_lldp_org_tlv** %4, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %24 [
    i32 130, label %8
    i32 129, label %12
    i32 128, label %16
    i32 131, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %4, align 8
  %10 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %11 = call i32 @ice_add_ieee_ets_tlv(%struct.ice_lldp_org_tlv* %9, %struct.ice_dcbx_cfg* %10)
  br label %25

12:                                               ; preds = %3
  %13 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %4, align 8
  %14 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %15 = call i32 @ice_add_ieee_etsrec_tlv(%struct.ice_lldp_org_tlv* %13, %struct.ice_dcbx_cfg* %14)
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %4, align 8
  %18 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %19 = call i32 @ice_add_ieee_pfc_tlv(%struct.ice_lldp_org_tlv* %17, %struct.ice_dcbx_cfg* %18)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %4, align 8
  %22 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %23 = call i32 @ice_add_ieee_app_pri_tlv(%struct.ice_lldp_org_tlv* %21, %struct.ice_dcbx_cfg* %22)
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @ice_add_ieee_ets_tlv(%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*) #1

declare dso_local i32 @ice_add_ieee_etsrec_tlv(%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*) #1

declare dso_local i32 @ice_add_ieee_pfc_tlv(%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*) #1

declare dso_local i32 @ice_add_ieee_app_pri_tlv(%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
