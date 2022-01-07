; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_ets_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_ets_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_lldp_org_tlv = type { i32*, i32, i32 }
%struct.ice_dcbx_cfg = type { %struct.ice_dcb_ets_cfg }
%struct.ice_dcb_ets_cfg = type { i32, i64 }

@ICE_TLV_TYPE_ORG = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_TYPE_S = common dso_local global i32 0, align 4
@ICE_IEEE_ETS_TLV_LEN = common dso_local global i32 0, align 4
@ICE_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_OUI_S = common dso_local global i32 0, align 4
@ICE_IEEE_SUBTYPE_ETS_CFG = common dso_local global i32 0, align 4
@ICE_IEEE_ETS_WILLING_S = common dso_local global i32 0, align 4
@ICE_IEEE_ETS_MAXTC_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*)* @ice_add_ieee_ets_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_add_ieee_ets_tlv(%struct.ice_lldp_org_tlv* %0, %struct.ice_dcbx_cfg* %1) #0 {
  %3 = alloca %struct.ice_lldp_org_tlv*, align 8
  %4 = alloca %struct.ice_dcbx_cfg*, align 8
  %5 = alloca %struct.ice_dcb_ets_cfg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_lldp_org_tlv* %0, %struct.ice_lldp_org_tlv** %3, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %4, align 8
  %10 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %11 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @ICE_TLV_TYPE_ORG, align 4
  %14 = load i32, i32* @ICE_LLDP_TLV_TYPE_S, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @ICE_IEEE_ETS_TLV_LEN, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %21 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ICE_IEEE_8021QAZ_OUI, align 4
  %23 = load i32, i32* @ICE_LLDP_TLV_OUI_S, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @ICE_IEEE_SUBTYPE_ETS_CFG, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %30 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %31, i32 0, i32 0
  store %struct.ice_dcb_ets_cfg* %32, %struct.ice_dcb_ets_cfg** %5, align 8
  %33 = load %struct.ice_dcb_ets_cfg*, %struct.ice_dcb_ets_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ICE_IEEE_ETS_WILLING_S, align 4
  %39 = call i32 @BIT(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %2
  %41 = load %struct.ice_dcb_ets_cfg*, %struct.ice_dcb_ets_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ICE_IEEE_ETS_MAXTC_M, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load %struct.ice_dcb_ets_cfg*, %struct.ice_dcb_ets_cfg** %5, align 8
  %54 = call i32 @ice_add_ieee_ets_common_tlv(i32* %52, %struct.ice_dcb_ets_cfg* %53)
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ice_add_ieee_ets_common_tlv(i32*, %struct.ice_dcb_ets_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
