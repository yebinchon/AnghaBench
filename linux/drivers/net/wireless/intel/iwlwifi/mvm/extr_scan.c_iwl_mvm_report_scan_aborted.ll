; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_report_scan_aborted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_report_scan_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.iwl_mvm = type { i32, i32, i8*, i32, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_REGULAR = common dso_local global i32 0, align 4
@__const.iwl_mvm_report_scan_aborted.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@IWL_MVM_SCAN_SCHED = common dso_local global i32 0, align 4
@SCHED_SCAN_PASS_ALL_DISABLED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"UMAC scan UID %d status was not cleaned\0A\00", align 1
@__const.iwl_mvm_report_scan_aborted.info.1 = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_report_scan_aborted(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_info, align 4
  %6 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 6
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %12 = call i64 @fw_has_capa(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %87

14:                                               ; preds = %1
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %17 = call i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = bitcast %struct.cfg80211_scan_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.iwl_mvm_report_scan_aborted.info to i8*), i64 4, i1 false)
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ieee80211_scan_completed(i32 %24, %struct.cfg80211_scan_info* %5)
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 5
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %20, %14
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %34 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %35 = call i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ieee80211_sched_scan_stopped(i32 %46)
  %48 = load i8*, i8** @SCHED_SCAN_PASS_ALL_DISABLED, align 8
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 5
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %43, %38, %32
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %65, i32 0, i32 5
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @WARN_ONCE(i64 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %58

86:                                               ; preds = %58
  br label %121

87:                                               ; preds = %1
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = bitcast %struct.cfg80211_scan_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.iwl_mvm_report_scan_aborted.info.1 to i8*), i64 4, i1 false)
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ieee80211_scan_completed(i32 %98, %struct.cfg80211_scan_info* %6)
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %107
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %114 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ieee80211_sched_scan_stopped(i32 %115)
  %117 = load i8*, i8** @SCHED_SCAN_PASS_ALL_DISABLED, align 8
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %112, %107, %100
  br label %121

121:                                              ; preds = %120, %86
  ret void
}

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @ieee80211_sched_scan_stopped(i32) #1

declare dso_local i64 @WARN_ONCE(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
