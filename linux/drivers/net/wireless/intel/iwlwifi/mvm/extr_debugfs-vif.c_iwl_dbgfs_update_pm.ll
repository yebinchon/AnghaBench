; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_update_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_update_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_dbgfs_pm }
%struct.iwl_dbgfs_pm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"debugfs: set keep_alive= %d sec\0A\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"debugfs: keep alive period (%ld msec) is less than minimum required (%d msec)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"skip_over_dtim %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"skip_dtim_periods=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"rx_data_timeout=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"tx_data_timeout=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"lprx %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"lprx_rssi_threshold=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"snooze_enable=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"uapsd_misbehaving_enable=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"use_ps_poll=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32)* @iwl_dbgfs_update_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_dbgfs_update_pm(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca %struct.iwl_dbgfs_pm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %9, align 8
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 0
  store %struct.iwl_dbgfs_pm* %16, %struct.iwl_dbgfs_pm** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %19 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %129 [
    i32 137, label %23
    i32 132, label %60
    i32 133, label %70
    i32 134, label %77
    i32 130, label %84
    i32 136, label %91
    i32 135, label %101
    i32 131, label %108
    i32 129, label %115
    i32 128, label %122
  ]

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %27, %29 ], [ 1, %30 ]
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %33, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MSEC_PER_SEC, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = mul nsw i32 3, %45
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %31
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MSEC_PER_SEC, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 3, %53
  %55 = call i32 @IWL_WARN(%struct.iwl_mvm* %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %48, %31
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %59 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %129

60:                                               ; preds = %4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %69 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %129

70:                                               ; preds = %4
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %76 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %129

77:                                               ; preds = %4
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %83 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  br label %129

84:                                               ; preds = %4
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %90 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %129

91:                                               ; preds = %4
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %97 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %100 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  br label %129

101:                                              ; preds = %4
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %107 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  br label %129

108:                                              ; preds = %4
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %114 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  br label %129

115:                                              ; preds = %4
  %116 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %121 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  br label %129

122:                                              ; preds = %4
  %123 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_POWER(%struct.iwl_mvm* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.iwl_dbgfs_pm*, %struct.iwl_dbgfs_pm** %10, align 8
  %128 = getelementptr inbounds %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_pm* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %4, %122, %115, %108, %101, %91, %84, %77, %70, %60, %56
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
