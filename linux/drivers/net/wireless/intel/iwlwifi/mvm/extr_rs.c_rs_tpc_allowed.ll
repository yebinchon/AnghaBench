; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tpc_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tpc_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rs_rate = type { i32, i32 }

@iwlmvm_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IWL_POWER_SCHEME_CAM = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"cam: %d sta_ps_disabled %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"check rate, table type: %d\0A\00", align 1
@IWL_RATE_54M_INDEX = common dso_local global i32 0, align 4
@IWL_RATE_MCS_7_INDEX = common dso_local global i32 0, align 4
@IWL_RATE_MCS_8_INDEX = common dso_local global i32 0, align 4
@IWL_RATE_MCS_9_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.rs_rate*, i32)* @rs_tpc_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tpc_allowed(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.rs_rate* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.rs_rate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.rs_rate* %2, %struct.rs_rate** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %14 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %17 = load i64, i64* @IWL_POWER_SCHEME_CAM, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %25, %4
  %33 = phi i1 [ false, %4 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41, %32
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @iwl_mvm_bt_coex_is_tpc_allowed(%struct.iwl_mvm* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %94

50:                                               ; preds = %44, %41
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %52 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %53 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %57 = call i64 @is_legacy(%struct.rs_rate* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @IWL_RATE_54M_INDEX, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %94

64:                                               ; preds = %50
  %65 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %66 = call i64 @is_ht(%struct.rs_rate* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @IWL_RATE_MCS_7_INDEX, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %94

73:                                               ; preds = %64
  %74 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %75 = call i64 @is_vht(%struct.rs_rate* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @IWL_RATE_MCS_7_INDEX, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @IWL_RATE_MCS_8_INDEX, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @IWL_RATE_MCS_9_INDEX, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81, %77
  %90 = phi i1 [ true, %81 ], [ true, %77 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %94

92:                                               ; preds = %73
  %93 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %89, %68, %59, %49
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @iwl_mvm_bt_coex_is_tpc_allowed(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @is_legacy(%struct.rs_rate*) #1

declare dso_local i64 @is_ht(%struct.rs_rate*) #1

declare dso_local i64 @is_vht(%struct.rs_rate*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
