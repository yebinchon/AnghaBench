; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_lldp_to_dcb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_lldp_to_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_dcbx_config = type { i32 }
%struct.i40e_lldp_org_tlv = type { i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_TYPE_MASK = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_LEN_MASK = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_LEN_SHIFT = common dso_local global i64 0, align 8
@I40E_TLV_TYPE_END = common dso_local global i64 0, align 8
@I40E_LLDPDU_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_lldp_to_dcb_config(i32* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_dcbx_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %5, align 8
  %16 = icmp ne %struct.i40e_dcbx_config* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %14
  %20 = load i32, i32* @ETH_HLEN, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to %struct.i40e_lldp_org_tlv*
  store %struct.i40e_lldp_org_tlv* %25, %struct.i40e_lldp_org_tlv** %7, align 8
  br label %26

26:                                               ; preds = %19, %60
  %27 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %7, align 8
  %28 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ntohs(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @I40E_LLDP_TLV_TYPE_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @I40E_LLDP_TLV_TYPE_SHIFT, align 8
  %35 = ashr i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @I40E_LLDP_TLV_LEN_MASK, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @I40E_LLDP_TLV_LEN_SHIFT, align 8
  %40 = ashr i64 %38, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 8, %41
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @I40E_TLV_TYPE_END, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %26
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @I40E_LLDPDU_SIZE, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %26
  br label %67

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  switch i64 %54, label %59 [
    i64 128, label %55
  ]

55:                                               ; preds = %53
  %56 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %7, align 8
  %57 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %5, align 8
  %58 = call i32 @i40e_parse_org_tlv(%struct.i40e_lldp_org_tlv* %56, %struct.i40e_dcbx_config* %57)
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %55
  %61 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %7, align 8
  %62 = bitcast %struct.i40e_lldp_org_tlv* %61 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = bitcast i8* %65 to %struct.i40e_lldp_org_tlv*
  store %struct.i40e_lldp_org_tlv* %66, %struct.i40e_lldp_org_tlv** %7, align 8
  br label %26

67:                                               ; preds = %52
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @i40e_parse_org_tlv(%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
