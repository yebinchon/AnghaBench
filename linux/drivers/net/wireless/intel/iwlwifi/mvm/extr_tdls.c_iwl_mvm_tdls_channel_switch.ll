; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.cfg80211_chan_def, i32 }
%struct.iwl_mvm_sta = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"TDLS channel switch with %pM ch %d width %d\0A\00", align 1
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Existing peer. Can't start switch with %pM\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TDLS_SEND_CHAN_SW_REQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tdls_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, %struct.cfg80211_chan_def* %4, %struct.sk_buff* %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_chan_def*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_mvm*, align 8
  %16 = alloca %struct.iwl_mvm_sta*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.cfg80211_chan_def* %4, %struct.cfg80211_chan_def** %12, align 8
  store %struct.sk_buff* %5, %struct.sk_buff** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %20 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %19)
  store %struct.iwl_mvm* %20, %struct.iwl_mvm** %15, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %12, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %12, align 8
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TDLS(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %35)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %7
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TDLS(%struct.iwl_mvm* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %18, align 4
  br label %139

52:                                               ; preds = %7
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %55 = load i32, i32* @TDLS_SEND_CHAN_SW_REQ, align 4
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %12, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @iwl_mvm_tdls_config_channel_switch(%struct.iwl_mvm* %53, %struct.ieee80211_vif* %54, i32 %55, i32 %58, i32 %61, i32 %62, %struct.cfg80211_chan_def* %63, i32 0, i32 0, i32 0, %struct.sk_buff* %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %139

70:                                               ; preds = %52
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @skb_copy(%struct.sk_buff* %71, i32 %72)
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  store i32 %73, i32* %77, align 8
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %70
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %18, align 4
  br label %139

87:                                               ; preds = %70
  %88 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %89 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %88)
  store %struct.iwl_mvm_sta* %89, %struct.iwl_mvm_sta** %16, align 8
  %90 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %16, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 8
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %12, align 8
  %102 = bitcast %struct.cfg80211_chan_def* %100 to i8*
  %103 = bitcast %struct.cfg80211_chan_def* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 16, i1 false)
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i32 %106, i32* %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 8
  %121 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %122 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %124, %128
  %130 = call i32 @TU_TO_MS(i32 %129)
  %131 = mul nsw i32 2, %130
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* @system_wq, align 4
  %133 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @msecs_to_jiffies(i32 %136)
  %138 = call i32 @mod_delayed_work(i32 %132, i32* %135, i32 %137)
  br label %139

139:                                              ; preds = %87, %84, %69, %44
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  %141 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i32, i32* %18, align 4
  ret i32 %143
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @iwl_mvm_tdls_config_channel_switch(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32, i32, %struct.cfg80211_chan_def*, i32, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TU_TO_MS(i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
