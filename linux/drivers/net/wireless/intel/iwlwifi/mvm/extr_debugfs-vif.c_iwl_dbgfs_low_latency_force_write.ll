; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_low_latency_force_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_low_latency_force_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32 }

@NUM_LOW_LATENCY_FORCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LOW_LATENCY_FORCE_UNSET = common dso_local global i64 0, align 8
@LOW_LATENCY_DEBUGFS_FORCE = common dso_local global i32 0, align 4
@LOW_LATENCY_DEBUGFS_FORCE_ENABLE = common dso_local global i32 0, align 4
@LOW_LATENCY_FORCE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_vif*, i8*, i64, i32*)* @iwl_dbgfs_low_latency_force_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbgfs_low_latency_force_write(%struct.ieee80211_vif* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %14)
  store %struct.iwl_mvm_vif* %15, %struct.iwl_mvm_vif** %10, align 8
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 0
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %17, align 8
  store %struct.iwl_mvm* %18, %struct.iwl_mvm** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @kstrtou8(i8* %19, i32 0, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %67

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @NUM_LOW_LATENCY_FORCE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %25
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @LOW_LATENCY_FORCE_UNSET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %42 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE, align 4
  %43 = call i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm* %40, %struct.ieee80211_vif* %41, i32 0, i32 %42)
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE_ENABLE, align 4
  %47 = call i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm* %44, %struct.ieee80211_vif* %45, i32 0, i32 %46)
  br label %61

48:                                               ; preds = %32
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @LOW_LATENCY_FORCE_ON, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE, align 4
  %56 = call i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm* %49, %struct.ieee80211_vif* %50, i32 %54, i32 %55)
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %59 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE_ENABLE, align 4
  %60 = call i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm* %57, %struct.ieee80211_vif* %58, i32 1, i32 %59)
  br label %61

61:                                               ; preds = %48, %39
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %29, %23
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
