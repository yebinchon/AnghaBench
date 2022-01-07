; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_mcast_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_mcast_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm_vif = type { i32, i32, i32, %struct.iwl_mvm_int_sta }
%struct.iwl_mvm_int_sta = type { i32, i32 }
%struct.iwl_trans_txq_scd_cfg = type { i32, i32, i32, i32, i32 }

@iwl_mvm_add_mcast_sta._maddr = internal constant [6 x i32] [i32 3, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@IWL_FRAME_LIMIT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IWL_MVM_TX_FIFO_MCAST = common dso_local global i32 0, align 4
@IWL_MVM_TX_FIFO_BE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@IWL_MVM_DQA_GCAST_QUEUE = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_STA_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_add_mcast_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mvm_int_sta*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %6, align 8
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 3
  store %struct.iwl_mvm_int_sta* %16, %struct.iwl_mvm_int_sta** %7, align 8
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @iwl_mvm_add_mcast_sta._maddr, i64 0, i64 0), i32** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %9, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %9, i32 0, i32 1
  %19 = load i32, i32* @IWL_FRAME_LIMIT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %9, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %9, i32 0, i32 3
  %22 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %9, i32 0, i32 4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IWL_MVM_TX_FIFO_MCAST, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @IWL_MVM_TX_FIFO_BE, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %25, align 4
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = call i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm* %37, %struct.ieee80211_vif* %38, i32 0, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 1
  %42 = call i32 @lockdep_assert_held(i32* %41)
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %53 = icmp ne i64 %51, %52
  br label %54

54:                                               ; preds = %48, %35
  %55 = phi i1 [ false, %35 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %154

62:                                               ; preds = %54
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @IWL_MVM_DQA_GCAST_QUEUE, align 4
  %70 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %74 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %72
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %82 = call i64 @fw_has_api(i32* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %86 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %85, i32* null, i32 %88, i32 0, %struct.iwl_trans_txq_scd_cfg* %9, i32 %89)
  %91 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BIT(i32 %93)
  %95 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %84, %76, %72
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %101 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm* %100, %struct.iwl_mvm_int_sta* %101, i32* %102, i32 %105, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %149

113:                                              ; preds = %99
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %115 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %119 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm* %118, i32 %121, i32 0, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %11, align 4
  br label %149

128:                                              ; preds = %117
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %131 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %148

132:                                              ; preds = %113
  %133 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %138 = call i64 @fw_has_api(i32* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %132
  %141 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %142 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %143 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %141, i32* null, i32 %144, i32 0, %struct.iwl_trans_txq_scd_cfg* %9, i32 %145)
  br label %147

147:                                              ; preds = %140, %132
  br label %148

148:                                              ; preds = %147, %128
  store i32 0, i32* %3, align 4
  br label %154

149:                                              ; preds = %126, %112
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %151 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %152 = call i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm* %150, %struct.iwl_mvm_int_sta* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %149, %148, %59
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_enable_txq(%struct.iwl_mvm*, i32*, i32, i32, %struct.iwl_trans_txq_scd_cfg*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*, i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
