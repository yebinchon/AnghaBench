; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_update_last_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_update_last_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64*, i64 }
%struct.ieee80211_rx_status = type { i32, i64* }

@S8_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs_update_last_rssi(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %9 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.iwl_lq_sta* %11, %struct.iwl_lq_sta** %7, align 8
  %12 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %22, i64* %27, align 8
  %28 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 %32, i64* %37, align 8
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  store i64 %42, i64* %47, align 8
  %48 = load i64, i64* @S8_MIN, align 8
  %49 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %50 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %97, %3
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @ARRAY_SIZE(i64* %57)
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %52
  %61 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %97

70:                                               ; preds = %60
  %71 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %72 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %78, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %70
  %85 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %86 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %70
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %52

100:                                              ; preds = %52
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
