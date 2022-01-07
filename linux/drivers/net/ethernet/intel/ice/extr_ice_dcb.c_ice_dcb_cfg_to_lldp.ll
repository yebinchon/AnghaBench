; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_dcb_cfg_to_lldp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_dcb_cfg_to_lldp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_dcbx_cfg = type { i32 }
%struct.ice_lldp_org_tlv = type { i32 }

@ICE_TLV_ID_START = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_LEN_M = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_LEN_S = common dso_local global i32 0, align 4
@ICE_TLV_ID_END_OF_LLDPPDU = common dso_local global i32 0, align 4
@ICE_LLDPDU_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.ice_dcbx_cfg*)* @ice_dcb_cfg_to_lldp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_dcb_cfg_to_lldp(i32* %0, i32* %1, %struct.ice_dcbx_cfg* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ice_dcbx_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_lldp_org_tlv*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ice_dcbx_cfg* %2, %struct.ice_dcbx_cfg** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @ICE_TLV_ID_START, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.ice_lldp_org_tlv*
  store %struct.ice_lldp_org_tlv* %14, %struct.ice_lldp_org_tlv** %10, align 8
  br label %15

15:                                               ; preds = %3, %57
  %16 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %10, align 8
  %17 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = call i32 @ice_add_dcb_tlv(%struct.ice_lldp_org_tlv* %16, %struct.ice_dcbx_cfg* %17, i32 %18)
  %21 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %10, align 8
  %22 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ICE_LLDP_TLV_LEN_M, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @ICE_LLDP_TLV_LEN_S, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 2
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %15
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ICE_TLV_ID_END_OF_LLDPPDU, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ICE_LLDPDU_SIZE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  br label %58

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %10, align 8
  %51 = bitcast %struct.ice_lldp_org_tlv* %50 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to %struct.ice_lldp_org_tlv*
  store %struct.ice_lldp_org_tlv* %56, %struct.ice_lldp_org_tlv** %10, align 8
  br label %57

57:                                               ; preds = %49, %46
  br label %15

58:                                               ; preds = %45
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  ret void
}

declare dso_local i32 @ice_add_dcb_tlv(%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
