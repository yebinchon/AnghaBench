; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_send_add_bcast_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_send_add_bcast_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.iwl_mvm_vif = type { i32, i32, %struct.iwl_mvm_int_sta }
%struct.iwl_mvm_int_sta = type { i64, i32 }
%struct.iwl_trans_txq_scd_cfg = type { i64, i32, i32, i32, i32 }

@iwl_mvm_send_add_bcast_sta._baddr = internal constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@IWL_FRAME_LIMIT = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_MVM_TX_FIFO_VO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Missing required TXQ for adding bcast STA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_send_add_bcast_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mvm_int_sta*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_trans_txq_scd_cfg, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %6, align 8
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 2
  store %struct.iwl_mvm_int_sta* %16, %struct.iwl_mvm_int_sta** %7, align 8
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @iwl_mvm_send_add_bcast_sta._baddr, i64 0, i64 0), i32** %8, align 8
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %19 = call i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm* %17, %struct.ieee80211_vif* %18, i32 0, i32 0)
  store i32 %19, i32* %11, align 4
  %20 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %12, i32 0, i32 0
  %21 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %20, align 8
  %25 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %12, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %12, i32 0, i32 2
  %27 = load i32, i32* @IWL_FRAME_LIMIT, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %12, i32 0, i32 3
  %29 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %12, i32 0, i32 4
  %31 = load i32, i32* @IWL_MVM_TX_FIFO_VO, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 2
  %34 = call i32 @lockdep_assert_held(i32* %33)
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %2
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %38
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  br label %69

54:                                               ; preds = %44
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  br label %68

64:                                               ; preds = %54
  %65 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %168

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %76, i32* null, i32 %77, i32 0, %struct.iwl_trans_txq_scd_cfg* %12, i32 %78)
  br label %80

80:                                               ; preds = %69, %2
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %8, align 8
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @WARN_ON_ONCE(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %168

103:                                              ; preds = %91
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %105 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm* %104, %struct.iwl_mvm_int_sta* %105, i32* %106, i32 %109, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %3, align 4
  br label %168

118:                                              ; preds = %103
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %120 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %167

122:                                              ; preds = %118
  %123 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %124 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %125 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm* %123, i64 %126, i32 %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %134 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm* %133, i64 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %168

139:                                              ; preds = %122
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %141 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %147 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145, %139
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  br label %166

155:                                              ; preds = %145
  %156 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %157 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %164 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %151
  br label %167

167:                                              ; preds = %166, %118
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %132, %116, %100, %64
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_mvm_enable_txq(%struct.iwl_mvm*, i32*, i32, i32, %struct.iwl_trans_txq_scd_cfg*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*, i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm*, i64, i32, i32) #1

declare dso_local i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
