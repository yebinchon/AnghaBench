; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_sta_add_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_sta_add_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"aggr_mode\00", align 1
@fops_aggr_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"addba\00", align 1
@fops_addba = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"addba_resp\00", align 1
@fops_addba_resp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"delba\00", align 1
@fops_delba = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"peer_debug_trigger\00", align 1
@fops_peer_debug_trigger = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"dump_tid_stats\00", align 1
@fops_tid_stats_dump = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"tx_stats\00", align 1
@fops_tx_stats = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"peer_ps_state\00", align 1
@fops_peer_ps_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_sta_add_debugfs(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.ath10k*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %9, align 8
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 420, %struct.dentry* %13, %struct.ieee80211_sta* %14, i32* @fops_aggr_mode)
  %16 = load %struct.dentry*, %struct.dentry** %8, align 8
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %18 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 128, %struct.dentry* %16, %struct.ieee80211_sta* %17, i32* @fops_addba)
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 128, %struct.dentry* %19, %struct.ieee80211_sta* %20, i32* @fops_addba_resp)
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %24 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 128, %struct.dentry* %22, %struct.ieee80211_sta* %23, i32* @fops_delba)
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %25, %struct.ieee80211_sta* %26, i32* @fops_peer_debug_trigger)
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %30 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 256, %struct.dentry* %28, %struct.ieee80211_sta* %29, i32* @fops_tid_stats_dump)
  %31 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %32 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %36 = call i64 @ath10k_debug_is_extd_tx_stats_enabled(%struct.ath10k* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %41 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 256, %struct.dentry* %39, %struct.ieee80211_sta* %40, i32* @fops_tx_stats)
  br label %42

42:                                               ; preds = %38, %34, %4
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 256, %struct.dentry* %43, %struct.ieee80211_sta* %44, i32* @fops_peer_ps_state)
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ieee80211_sta*, i32*) #1

declare dso_local i64 @ath10k_peer_stats_enabled(%struct.ath10k*) #1

declare dso_local i64 @ath10k_debug_is_extd_tx_stats_enabled(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
