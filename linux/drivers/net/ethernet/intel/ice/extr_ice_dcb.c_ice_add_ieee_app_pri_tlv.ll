; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_app_pri_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_add_ieee_app_pri_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_lldp_org_tlv = type { i64*, i32, i32 }
%struct.ice_dcbx_cfg = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ICE_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@ICE_LLDP_TLV_OUI_S = common dso_local global i32 0, align 4
@ICE_IEEE_SUBTYPE_APP_PRI = common dso_local global i32 0, align 4
@ICE_IEEE_APP_PRIO_S = common dso_local global i64 0, align 8
@ICE_DCBX_MAX_APPS = common dso_local global i64 0, align 8
@ICE_TLV_TYPE_ORG = common dso_local global i64 0, align 8
@ICE_LLDP_TLV_TYPE_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*)* @ice_add_ieee_app_pri_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_add_ieee_app_pri_tlv(%struct.ice_lldp_org_tlv* %0, %struct.ice_dcbx_cfg* %1) #0 {
  %3 = alloca %struct.ice_lldp_org_tlv*, align 8
  %4 = alloca %struct.ice_dcbx_cfg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.ice_lldp_org_tlv* %0, %struct.ice_lldp_org_tlv** %3, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %14 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %11, align 8
  %16 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %116

21:                                               ; preds = %2
  %22 = load i32, i32* @ICE_IEEE_8021QAZ_OUI, align 4
  %23 = load i32, i32* @ICE_LLDP_TLV_OUI_S, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @ICE_IEEE_SUBTYPE_APP_PRI, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %30 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %101, %21
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %102

39:                                               ; preds = %33
  %40 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 7
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %50 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 7
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ICE_IEEE_APP_PRIO_S, align 8
  %60 = shl i64 %58, %59
  %61 = load i64, i64* %9, align 8
  %62 = or i64 %60, %61
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  %66 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  %80 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %81 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 255
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 2
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %88, i64* %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @ICE_DCBX_MAX_APPS, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %39
  br label %102

101:                                              ; preds = %39
  br label %33

102:                                              ; preds = %100, %33
  %103 = load i64, i64* %10, align 8
  %104 = mul i64 %103, 3
  %105 = add i64 5, %104
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* @ICE_TLV_TYPE_ORG, align 8
  %107 = load i64, i64* @ICE_LLDP_TLV_TYPE_S, align 8
  %108 = shl i64 %106, %107
  %109 = load i64, i64* %6, align 8
  %110 = and i64 %109, 511
  %111 = or i64 %108, %110
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @htons(i64 %112)
  %114 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %115 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %102, %20
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
