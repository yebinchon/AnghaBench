; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_bfer_active_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_bfer_active_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.rs_bfer_active_iter_data = type { %struct.iwl_mvm_sta*, %struct.ieee80211_sta* }
%struct.iwl_mvm_sta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iwl_lq_cmd }
%struct.iwl_lq_cmd = type { i32 }

@LQ_SS_BFER_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*)* @rs_bfer_active_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_bfer_active_iter(i8* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.rs_bfer_active_iter_data*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca %struct.iwl_lq_cmd*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.rs_bfer_active_iter_data*
  store %struct.rs_bfer_active_iter_data* %10, %struct.rs_bfer_active_iter_data** %5, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %12 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %11)
  store %struct.iwl_mvm_sta* %12, %struct.iwl_mvm_sta** %6, align 8
  %13 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.iwl_lq_cmd* %16, %struct.iwl_lq_cmd** %7, align 8
  %17 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %22 = load %struct.rs_bfer_active_iter_data*, %struct.rs_bfer_active_iter_data** %5, align 8
  %23 = getelementptr inbounds %struct.rs_bfer_active_iter_data, %struct.rs_bfer_active_iter_data* %22, i32 0, i32 1
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %23, align 8
  %25 = icmp eq %struct.ieee80211_sta* %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LQ_SS_BFER_ALLOWED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.rs_bfer_active_iter_data*, %struct.rs_bfer_active_iter_data** %5, align 8
  %34 = getelementptr inbounds %struct.rs_bfer_active_iter_data, %struct.rs_bfer_active_iter_data* %33, i32 0, i32 0
  %35 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %34, align 8
  %36 = icmp ne %struct.iwl_mvm_sta* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  %39 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %40 = load %struct.rs_bfer_active_iter_data*, %struct.rs_bfer_active_iter_data** %5, align 8
  %41 = getelementptr inbounds %struct.rs_bfer_active_iter_data, %struct.rs_bfer_active_iter_data* %40, i32 0, i32 0
  store %struct.iwl_mvm_sta* %39, %struct.iwl_mvm_sta** %41, align 8
  br label %42

42:                                               ; preds = %26, %32, %27
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
