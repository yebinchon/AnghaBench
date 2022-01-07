; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, %struct.TYPE_8__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_mvm_sta = type { i64, i64, i32, i32, i32 }

@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@IWL_MVM_QUEUE_RESERVED = common dso_local global i32 0, align 4
@IWL_MVM_QUEUE_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sta_id %d reserved txq %d status %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_MVM_INVALID_STA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rm_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %15)
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %8, align 8
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %18 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %17)
  store %struct.iwl_mvm_sta* %18, %struct.iwl_mvm_sta** %9, align 8
  %19 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 4
  %24 = call i32 @lockdep_assert_held(i32* %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %26 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %35 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %36 = call i32 @iwl_mvm_drain_sta(%struct.iwl_mvm* %34, %struct.iwl_mvm_sta* %35, i32 1)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %187

41:                                               ; preds = %33
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %43 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %44 = call i32 @iwl_mvm_flush_sta(%struct.iwl_mvm* %42, %struct.iwl_mvm_sta* %43, i32 0, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %187

49:                                               ; preds = %41
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %51 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %55 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %56 = call i32 @iwl_mvm_wait_sta_queues_empty(%struct.iwl_mvm* %54, %struct.iwl_mvm_sta* %55)
  store i32 %56, i32* %11, align 4
  br label %66

57:                                               ; preds = %49
  %58 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @iwl_trans_wait_tx_queues_empty(i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %57, %53
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %187

71:                                               ; preds = %66
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %73 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %74 = call i32 @iwl_mvm_drain_sta(%struct.iwl_mvm* %72, %struct.iwl_mvm_sta* %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %78 = call i32 @iwl_mvm_disable_sta_queues(%struct.iwl_mvm* %75, %struct.ieee80211_vif* %76, %struct.ieee80211_sta* %77)
  %79 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %71
  %85 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %13, align 8
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32* %93, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IWL_MVM_QUEUE_RESERVED, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %84
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IWL_MVM_QUEUE_FREE, align 4
  %102 = icmp ne i32 %100, %101
  br label %103

103:                                              ; preds = %98, %84
  %104 = phi i1 [ false, %84 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @WARN(i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %106, i64 %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %187

115:                                              ; preds = %103
  %116 = load i32, i32* @IWL_MVM_QUEUE_FREE, align 4
  %117 = load i32*, i32** %14, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %71
  %119 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %126 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %4, align 4
  br label %187

138:                                              ; preds = %130
  %139 = load i8*, i8** @IWL_MVM_INVALID_STA, align 8
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %124, %118
  %144 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @WARN_ON_ONCE(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %143
  %155 = load i8*, i8** @IWL_MVM_INVALID_STA, align 8
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %158 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store i64 %156, i64* %160, align 8
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %162 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = call i32 @cancel_delayed_work(i32* %163)
  br label %165

165:                                              ; preds = %154, %143
  %166 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %166, i32 0, i32 2
  %168 = call i32 @spin_lock_bh(i32* %167)
  %169 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %169, i32 0, i32 2
  %171 = call i32 @spin_unlock_bh(i32* %170)
  %172 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %173 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm* %172, i64 %175)
  store i32 %176, i32* %11, align 4
  %177 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %178 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %181 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @RCU_INIT_POINTER(i32 %184, i32* null)
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %165, %136, %112, %69, %47, %39
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iwl_mvm_drain_sta(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @iwl_mvm_flush_sta(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32, i32) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_wait_sta_queues_empty(%struct.iwl_mvm*, %struct.iwl_mvm_sta*) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(i32, i32) #1

declare dso_local i32 @iwl_mvm_disable_sta_queues(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i64 @WARN(i32, i8*, i64, i64, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
