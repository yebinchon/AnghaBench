; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_uapsd_misbehaving_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_uapsd_misbehaving_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_vif*, i8*, i64, i32*)* @iwl_dbgfs_uapsd_misbehaving_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_uapsd_misbehaving_write(%struct.ieee80211_vif* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca %struct.iwl_mvm*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %9, align 8
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %14, i32 0, i32 1
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  store %struct.iwl_mvm* %16, %struct.iwl_mvm** %10, align 8
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mac_pton(i8* %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  br label %35

32:                                               ; preds = %4
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i64 [ %31, %30 ], [ %34, %32 ]
  ret i64 %36
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mac_pton(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
