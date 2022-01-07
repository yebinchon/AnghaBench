; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_lldp_to_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_lldp_to_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_dcbx_cfg = type { i32 }
%struct.ice_lldp_org_tlv = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_TYPE_M = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_TYPE_S = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_LEN_M = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_LEN_S = common dso_local global i32 0, align 4
@ICE_TLV_TYPE_END = common dso_local global i32 0, align 4
@ICE_LLDPDU_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ice_dcbx_cfg*)* @ice_lldp_to_dcb_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_lldp_to_dcb_cfg(i32* %0, %struct.ice_dcbx_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ice_dcbx_cfg*, align 8
  %6 = alloca %struct.ice_lldp_org_tlv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %16 = icmp ne %struct.ice_dcbx_cfg* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %14
  %20 = load i32, i32* @ETH_HLEN, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to %struct.ice_lldp_org_tlv*
  store %struct.ice_lldp_org_tlv* %25, %struct.ice_lldp_org_tlv** %6, align 8
  br label %26

26:                                               ; preds = %19, %63
  %27 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %6, align 8
  %28 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ICE_LLDP_TLV_TYPE_M, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @ICE_LLDP_TLV_TYPE_S, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ICE_LLDP_TLV_LEN_M, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @ICE_LLDP_TLV_LEN_S, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 4, %42
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ICE_TLV_TYPE_END, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %26
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ICE_LLDPDU_SIZE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %26
  br label %71

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %62 [
    i32 128, label %58
  ]

58:                                               ; preds = %56
  %59 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %6, align 8
  %60 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %61 = call i32 @ice_parse_org_tlv(%struct.ice_lldp_org_tlv* %59, %struct.ice_dcbx_cfg* %60)
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %58
  %64 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %6, align 8
  %65 = bitcast %struct.ice_lldp_org_tlv* %64 to i8*
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to %struct.ice_lldp_org_tlv*
  store %struct.ice_lldp_org_tlv* %70, %struct.ice_lldp_org_tlv** %6, align 8
  br label %26

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ice_parse_org_tlv(%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
