; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_oldsn_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_oldsn_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_reorder_buffer = type { i64, i32, i64 }
%struct.iwl_mvm_sta = type { i32 }

@IWL_RX_MPDU_REORDER_BA_OLD_SN = common dso_local global i64 0, align 8
@IWL_MVM_AMPDU_CONSEC_DROPS_DELBA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"reached %d old SN frames from %pM on queue %d, stopping BA session on TID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, %struct.iwl_mvm_reorder_buffer*, i64, i64, i32)* @iwl_mvm_oldsn_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_oldsn_workaround(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, %struct.iwl_mvm_reorder_buffer* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.iwl_mvm_reorder_buffer* %3, %struct.iwl_mvm_reorder_buffer** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %17 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %16)
  store %struct.iwl_mvm_sta* %17, %struct.iwl_mvm_sta** %15, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %7
  %24 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %42

35:                                               ; preds = %7
  %36 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %82

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @IWL_RX_MPDU_REORDER_BA_OLD_SN, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %82

48:                                               ; preds = %42
  %49 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IWL_MVM_AMPDU_CONSEC_DROPS_DELBA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %48
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %62 = load i64, i64* @IWL_MVM_AMPDU_CONSEC_DROPS_DELBA, align 8
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @IWL_WARN(%struct.iwl_mvm* %61, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %62, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %15, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ieee80211_stop_rx_ba_session(i32 %71, i32 %73, i32 %76)
  %78 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  %80 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %40, %47, %60, %48
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @ieee80211_stop_rx_ba_session(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
