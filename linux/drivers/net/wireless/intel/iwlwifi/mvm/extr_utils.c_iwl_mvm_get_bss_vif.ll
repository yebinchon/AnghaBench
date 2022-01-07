; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_get_bss_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_get_bss_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_bss_iter_data = type { %struct.ieee80211_vif*, i64 }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_bss_iface_iterator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"More than one managed interface active!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_vif* @iwl_mvm_get_bss_vif(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.ieee80211_vif*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_bss_iter_data, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %5 = bitcast %struct.iwl_bss_iter_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %10 = load i32, i32* @iwl_mvm_bss_iface_iterator, align 4
  %11 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %8, i32 %9, i32 %10, %struct.iwl_bss_iter_data* %4)
  %12 = getelementptr inbounds %struct.iwl_bss_iter_data, %struct.iwl_bss_iter_data* %4, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = call i32 @IWL_ERR(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ieee80211_vif* @ERR_PTR(i32 %19)
  store %struct.ieee80211_vif* %20, %struct.ieee80211_vif** %2, align 8
  br label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.iwl_bss_iter_data, %struct.iwl_bss_iter_data* %4, i32 0, i32 0
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %22, align 8
  store %struct.ieee80211_vif* %23, %struct.ieee80211_vif** %2, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %2, align 8
  ret %struct.ieee80211_vif* %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_bss_iter_data*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #2

declare dso_local %struct.ieee80211_vif* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
