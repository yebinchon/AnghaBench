; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_agg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_agg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.iwl_tid_data** }
%struct.iwl_tid_data = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_rxon_context = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"TX AGG request on ra = %pM tid = %d\0A\00", align 1
@IWL_INVALID_STATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Start AGG on invalid station\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Start AGG when state is not IWL_AGG_OFF !\0A\00", align 1
@tid_to_ac = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"No free aggregation queue for %pM/%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Can proceed: ssn = next_recl = %d\0A\00", align 1
@IWL_AGG_STARTING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Can't proceed: ssn %d, next_reclaimed = %d\0A\00", align 1
@IWL_EMPTYING_HW_QUEUE_ADDBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_tx_agg_start(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.iwl_rxon_context*, align 8
  %13 = alloca %struct.iwl_tid_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %18 = call %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %17)
  store %struct.iwl_rxon_context* %18, %struct.iwl_rxon_context** %12, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @IWL_DEBUG_HT(%struct.iwl_priv* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %26 = call i32 @iwl_sta_id(%struct.ieee80211_sta* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @IWL_INVALID_STATION, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %32 = call i32 @IWL_ERR(%struct.iwl_priv* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %167

35:                                               ; preds = %5
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %38 = icmp uge i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %167

45:                                               ; preds = %35
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 1
  %48 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %48, i64 %50
  %52 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %52, i64 %53
  %55 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IWL_AGG_OFF, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %62 = call i32 @IWL_ERR(%struct.iwl_priv* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %167

65:                                               ; preds = %45
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %67 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %68 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64*, i64** @tid_to_ac, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @iwlagn_alloc_agg_txq(%struct.iwl_priv* %66, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 (%struct.iwl_priv*, i8*, i64, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %84)
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %167

87:                                               ; preds = %65
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @iwl_sta_tx_modify_enable_tid(%struct.iwl_priv* %88, i32 %89, i64 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %6, align 4
  br label %167

96:                                               ; preds = %87
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %98 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %97, i32 0, i32 0
  %99 = call i32 @spin_lock_bh(i32* %98)
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %100, i32 0, i32 1
  %102 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %102, i64 %104
  %106 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %106, i64 %107
  store %struct.iwl_tid_data* %108, %struct.iwl_tid_data** %13, align 8
  %109 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %110 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IEEE80211_SEQ_TO_SN(i32 %111)
  %113 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %114 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %118 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %121 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %11, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %128 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %96
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %133 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %134 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (%struct.iwl_priv*, i8*, i64, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %136)
  %138 = load i64, i64* @IWL_AGG_STARTING, align 8
  %139 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %140 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %143 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %142, i64 %145, i64 %146)
  br label %162

148:                                              ; preds = %96
  %149 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %150 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %151 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %155 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (%struct.iwl_priv*, i8*, i64, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %153, i64 %156)
  %158 = load i64, i64* @IWL_EMPTYING_HW_QUEUE_ADDBA, align 8
  %159 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, align 8
  %160 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  br label %162

162:                                              ; preds = %148, %131
  %163 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %164 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %163, i32 0, i32 0
  %165 = call i32 @spin_unlock_bh(i32* %164)
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %162, %94, %79, %60, %42, %30
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_priv*, i8*, i64, i64) #1

declare dso_local i32 @iwl_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwlagn_alloc_agg_txq(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, i64, ...) #1

declare dso_local i32 @iwl_sta_tx_modify_enable_tid(%struct.iwl_priv*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i64, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
