; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_pfc_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_pfc_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_lldp_org_tlv = type { i32*, i32, i32 }
%struct.ice_dcbx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@ICE_TLV_TYPE_ORG = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_TYPE_S = common dso_local global i32 0, align 4
@ICE_IEEE_PFC_TLV_LEN = common dso_local global i32 0, align 4
@ICE_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_OUI_S = common dso_local global i32 0, align 4
@ICE_IEEE_SUBTYPE_PFC_CFG = common dso_local global i32 0, align 4
@ICE_IEEE_PFC_WILLING_S = common dso_local global i32 0, align 4
@ICE_IEEE_PFC_MBC_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*)* @ice_add_ieee_pfc_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_add_ieee_pfc_tlv(%struct.ice_lldp_org_tlv* %0, %struct.ice_dcbx_cfg* %1) #0 {
  %3 = alloca %struct.ice_lldp_org_tlv*, align 8
  %4 = alloca %struct.ice_dcbx_cfg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ice_lldp_org_tlv* %0, %struct.ice_lldp_org_tlv** %3, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %4, align 8
  %8 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %9 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @ICE_TLV_TYPE_ORG, align 4
  %12 = load i32, i32* @ICE_LLDP_TLV_TYPE_S, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @ICE_IEEE_PFC_TLV_LEN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @htons(i32 %16)
  %18 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %19 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ICE_IEEE_8021QAZ_OUI, align 4
  %21 = load i32, i32* @ICE_LLDP_TLV_OUI_S, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @ICE_IEEE_SUBTYPE_PFC_CFG, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %28 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @ICE_IEEE_PFC_WILLING_S, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @ICE_IEEE_PFC_MBC_S, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %39
  %53 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 15
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
