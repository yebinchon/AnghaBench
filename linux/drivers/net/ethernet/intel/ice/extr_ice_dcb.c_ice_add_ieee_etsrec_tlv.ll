; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_etsrec_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_etsrec_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_lldp_org_tlv = type { i32, i32, i32* }
%struct.ice_dcbx_cfg = type { %struct.ice_dcb_ets_cfg }
%struct.ice_dcb_ets_cfg = type { i32 }

@ICE_TLV_TYPE_ORG = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_TYPE_S = common dso_local global i32 0, align 4
@ICE_IEEE_ETS_TLV_LEN = common dso_local global i32 0, align 4
@ICE_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_OUI_S = common dso_local global i32 0, align 4
@ICE_IEEE_SUBTYPE_ETS_REC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*)* @ice_add_ieee_etsrec_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_add_ieee_etsrec_tlv(%struct.ice_lldp_org_tlv* %0, %struct.ice_dcbx_cfg* %1) #0 {
  %3 = alloca %struct.ice_lldp_org_tlv*, align 8
  %4 = alloca %struct.ice_dcbx_cfg*, align 8
  %5 = alloca %struct.ice_dcb_ets_cfg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ice_lldp_org_tlv* %0, %struct.ice_lldp_org_tlv** %3, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %4, align 8
  %9 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %10 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @ICE_TLV_TYPE_ORG, align 4
  %13 = load i32, i32* @ICE_LLDP_TLV_TYPE_S, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @ICE_IEEE_ETS_TLV_LEN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @htons(i32 %17)
  %19 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %20 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ICE_IEEE_8021QAZ_OUI, align 4
  %22 = load i32, i32* @ICE_LLDP_TLV_OUI_S, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @ICE_IEEE_SUBTYPE_ETS_REC, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @htonl(i32 %26)
  %28 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %29 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %30, i32 0, i32 0
  store %struct.ice_dcb_ets_cfg* %31, %struct.ice_dcb_ets_cfg** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.ice_dcb_ets_cfg*, %struct.ice_dcb_ets_cfg** %5, align 8
  %35 = call i32 @ice_add_ieee_ets_common_tlv(i32* %33, %struct.ice_dcb_ets_cfg* %34)
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ice_add_ieee_ets_common_tlv(i32*, %struct.ice_dcb_ets_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
