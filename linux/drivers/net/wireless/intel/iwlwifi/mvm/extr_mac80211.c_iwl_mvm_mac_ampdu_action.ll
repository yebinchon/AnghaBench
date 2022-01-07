; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, i64, i32, i64, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.iwl_mvm_tcm_mac* }
%struct.iwl_mvm_tcm_mac = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_vif = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"A-MPDU action on addr %pM tid %d: action %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @iwl_mvm_mac_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.iwl_mvm_vif*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.iwl_mvm_tcm_mac*, align 8
  %20 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %21)
  store %struct.iwl_mvm* %22, %struct.iwl_mvm** %8, align 8
  %23 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 6
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %24, align 8
  store %struct.ieee80211_sta* %25, %struct.ieee80211_sta** %10, align 8
  %26 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %32, i32 0, i32 2
  store i64* %33, i64** %13, align 8
  %34 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %15, align 4
  %40 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %16, align 8
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @IWL_DEBUG_HT(%struct.iwl_mvm* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47, i32 %48)
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %3
  %57 = load i32, i32* @EACCES, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %173

59:                                               ; preds = %3
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load i32, i32* %11, align 4
  switch i32 %63, label %147 [
    i32 134, label %64
    i32 133, label %107
    i32 131, label %114
    i32 130, label %127
    i32 129, label %133
    i32 128, label %133
    i32 132, label %139
  ]

64:                                               ; preds = %59
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %65)
  %67 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %70 = call %struct.TYPE_6__* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %64
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %76 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %75)
  %77 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %18, align 8
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %81, align 8
  %83 = load i64, i64* %18, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %82, i64 %83
  store %struct.iwl_mvm_tcm_mac* %84, %struct.iwl_mvm_tcm_mac** %19, align 8
  %85 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %19, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %88 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %87)
  store %struct.iwl_mvm_vif* %88, %struct.iwl_mvm_vif** %17, align 8
  %89 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %17, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %89, i32 0, i32 1
  %91 = call i32 @cancel_delayed_work(i32* %90)
  br label %92

92:                                               ; preds = %74, %64
  %93 = call i32 (...) @iwl_enable_rx_ampdu()
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %151

98:                                               ; preds = %92
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64*, i64** %13, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %16, align 8
  %106 = call i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm* %99, %struct.ieee80211_sta* %100, i64 %101, i64 %103, i32 1, i64 %104, i64 %105)
  store i32 %106, i32* %9, align 4
  br label %151

107:                                              ; preds = %59
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm* %108, %struct.ieee80211_sta* %109, i64 %110, i64 0, i32 0, i64 %111, i64 %112)
  store i32 %113, i32* %9, align 4
  br label %151

114:                                              ; preds = %59
  %115 = call i32 (...) @iwl_enable_tx_ampdu()
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %9, align 4
  br label %151

120:                                              ; preds = %114
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %123 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = call i32 @iwl_mvm_sta_tx_agg_start(%struct.iwl_mvm* %121, %struct.ieee80211_vif* %122, %struct.ieee80211_sta* %123, i64 %124, i64* %125)
  store i32 %126, i32* %9, align 4
  br label %151

127:                                              ; preds = %59
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %129 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %130 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @iwl_mvm_sta_tx_agg_stop(%struct.iwl_mvm* %128, %struct.ieee80211_vif* %129, %struct.ieee80211_sta* %130, i64 %131)
  store i32 %132, i32* %9, align 4
  br label %151

133:                                              ; preds = %59, %59
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %135 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @iwl_mvm_sta_tx_agg_flush(%struct.iwl_mvm* %134, %struct.ieee80211_vif* %135, %struct.ieee80211_sta* %136, i64 %137)
  store i32 %138, i32* %9, align 4
  br label %151

139:                                              ; preds = %59
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %141 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %142 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @iwl_mvm_sta_tx_agg_oper(%struct.iwl_mvm* %140, %struct.ieee80211_vif* %141, %struct.ieee80211_sta* %142, i64 %143, i64 %144, i32 %145)
  store i32 %146, i32* %9, align 4
  br label %151

147:                                              ; preds = %59
  %148 = call i32 @WARN_ON_ONCE(i32 1)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %147, %139, %133, %127, %120, %117, %107, %98, %95
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %151
  store i64 0, i64* %20, align 8
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 134
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64*, i64** %13, align 8
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %20, align 8
  br label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %162 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %163 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* %20, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @iwl_mvm_ampdu_check_trigger(%struct.iwl_mvm* %161, %struct.ieee80211_vif* %162, %struct.ieee80211_sta* %163, i64 %164, i64 %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %151
  %169 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %56
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_mvm*, i8*, i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.TYPE_6__* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @iwl_enable_rx_ampdu(...) #1

declare dso_local i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm*, %struct.ieee80211_sta*, i64, i64, i32, i64, i64) #1

declare dso_local i32 @iwl_enable_tx_ampdu(...) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_start(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64, i64*) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_stop(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_flush(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_oper(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64, i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_ampdu_check_trigger(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
