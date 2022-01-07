; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_process_mib_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_process_mib_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.qed_hw_info }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.dcbx_ets_feature, %struct.dcbx_app_priority_feature }
%struct.dcbx_ets_feature = type { i32, i32* }
%struct.dcbx_app_priority_feature = type { i32, %struct.dcbx_app_priority_entry* }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.qed_hw_info = type { i8* }
%struct.qed_ptt = type { i32 }
%struct.qed_dcbx_results = type { i32, i32, i32 }

@DCBX_CONFIG_VERSION = common dso_local global i32 0, align 4
@DCBX_APP_NUM_ENTRIES = common dso_local global i32 0, align 4
@DCBX_ETS_MAX_TCS = common dso_local global i32 0, align 4
@DCBX_OOO_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_dcbx_process_mib_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dcbx_process_mib_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.dcbx_app_priority_feature*, align 8
  %7 = alloca %struct.dcbx_app_priority_entry*, align 8
  %8 = alloca %struct.qed_dcbx_results, align 4
  %9 = alloca %struct.dcbx_ets_feature*, align 8
  %10 = alloca %struct.qed_hw_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %16 = bitcast %struct.qed_dcbx_results* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  store i32 0, i32* %15, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @DCBX_CONFIG_VERSION, align 4
  %25 = call i8* @QED_MFW_GET_FIELD(i32 %23, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store %struct.dcbx_app_priority_feature* %31, %struct.dcbx_app_priority_feature** %6, align 8
  %32 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %33 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %32, i32 0, i32 1
  %34 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %33, align 8
  store %struct.dcbx_app_priority_entry* %34, %struct.dcbx_app_priority_entry** %7, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.dcbx_ets_feature* %40, %struct.dcbx_ets_feature** %9, align 8
  %41 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %9, align 8
  %42 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %46, i32 0, i32 3
  store %struct.qed_hw_info* %47, %struct.qed_hw_info** %10, align 8
  %48 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %49 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DCBX_APP_NUM_ENTRIES, align 4
  %52 = call i8* @QED_MFW_GET_FIELD(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %56 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @qed_dcbx_process_tlv(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, %struct.qed_dcbx_results* %8, %struct.dcbx_app_priority_entry* %56, i32 %57, i32 %58, i8* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %3, align 4
  br label %98

65:                                               ; preds = %2
  %66 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %9, align 8
  %67 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DCBX_ETS_MAX_TCS, align 4
  %70 = call i8* @QED_MFW_GET_FIELD(i32 %68, i32 %69)
  %71 = load %struct.qed_hw_info*, %struct.qed_hw_info** %10, align 8
  %72 = getelementptr inbounds %struct.qed_hw_info, %struct.qed_hw_info* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %9, align 8
  %74 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DCBX_OOO_TC, align 4
  %77 = call i8* @QED_MFW_GET_FIELD(i32 %75, i32 %76)
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %82 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %8, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = icmp ne i8* %85, null
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %8, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %92 = call i32 @qed_dcbx_dp_protocol(%struct.qed_hwfn* %91, %struct.qed_dcbx_results* %8)
  %93 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %94 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @memcpy(i32* %96, %struct.qed_dcbx_results* %8, i32 12)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %65, %63
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @QED_MFW_GET_FIELD(i32, i32) #2

declare dso_local i32 @qed_dcbx_process_tlv(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_dcbx_results*, %struct.dcbx_app_priority_entry*, i32, i32, i8*) #2

declare dso_local i32 @qed_dcbx_dp_protocol(%struct.qed_hwfn*, %struct.qed_dcbx_results*) #2

declare dso_local i32 @memcpy(i32*, %struct.qed_dcbx_results*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
