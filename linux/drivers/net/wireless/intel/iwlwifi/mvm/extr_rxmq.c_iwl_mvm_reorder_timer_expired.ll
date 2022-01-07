; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_reorder_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_reorder_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_reorder_buffer = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.timer_list = type { i32 }
%struct.iwl_mvm_baid_data = type { i64, i64, i32, %struct.iwl_mvm_reorder_buf_entry* }
%struct.iwl_mvm_reorder_buf_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@reorder_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RX_REORDER_BUF_TIMEOUT_MQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Releasing expired frames for sta %u, sn %d\0A\00", align 1
@IWL_MVM_RELEASE_SEND_RSS_SYNC = common dso_local global i32 0, align 4
@buf = common dso_local global %struct.iwl_mvm_reorder_buffer* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_reorder_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %4 = alloca %struct.iwl_mvm_baid_data*, align 8
  %5 = alloca %struct.iwl_mvm_reorder_buf_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %14 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %15 = ptrtoint %struct.iwl_mvm_reorder_buffer* %14 to i32
  %16 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %17 = load i32, i32* @reorder_timer, align 4
  %18 = call %struct.iwl_mvm_reorder_buffer* @from_timer(i32 %15, %struct.timer_list* %16, i32 %17)
  store %struct.iwl_mvm_reorder_buffer* %18, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %19 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %20 = call %struct.iwl_mvm_baid_data* @iwl_mvm_baid_data_from_reorder_buf(%struct.iwl_mvm_reorder_buffer* %19)
  store %struct.iwl_mvm_baid_data* %20, %struct.iwl_mvm_baid_data** %4, align 8
  %21 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %21, i32 0, i32 3
  %23 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %22, align 8
  %24 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %26, %29
  %31 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %23, i64 %30
  store %struct.iwl_mvm_reorder_buf_entry* %31, %struct.iwl_mvm_reorder_buf_entry** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %32 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %32, i32 0, i32 3
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %1
  %45 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock(i32* %46)
  br label %163

48:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %97, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = srem i32 %60, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  %66 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %66, i64 %67
  %69 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i64 @skb_queue_empty(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %97

74:                                               ; preds = %55
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @jiffies, align 4
  %79 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %5, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %79, i64 %80
  %82 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RX_REORDER_BUF_TIMEOUT_MQ, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @time_after(i32 %78, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %100

90:                                               ; preds = %77, %74
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %91 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i64 @ieee80211_sn_add(i32 %93, i32 %95)
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %90, %73
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %49

100:                                              ; preds = %89, %49
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %146

103:                                              ; preds = %100
  %104 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %13, align 8
  %107 = call i32 (...) @rcu_read_lock()
  %108 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %108, i32 0, i32 5
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.ieee80211_sta* @rcu_dereference(i32 %115)
  store %struct.ieee80211_sta* %116, %struct.ieee80211_sta** %11, align 8
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %118 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %117)
  store %struct.iwl_mvm_sta* %118, %struct.iwl_mvm_sta** %12, align 8
  %119 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %119, i32 0, i32 5
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @IWL_DEBUG_HT(%struct.TYPE_6__* %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %122, i64 %123)
  %125 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %126 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %132 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @iwl_mvm_event_frame_timeout_callback(%struct.TYPE_6__* %127, i32 %130, %struct.ieee80211_sta* %131, i32 %134)
  %136 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %137 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %140 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %141 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i32, i32* @IWL_MVM_RELEASE_SEND_RSS_SYNC, align 4
  %144 = call i32 @iwl_mvm_release_frames(%struct.TYPE_6__* %138, %struct.ieee80211_sta* %139, i32* null, %struct.iwl_mvm_baid_data* %140, %struct.iwl_mvm_reorder_buffer* %141, i64 %142, i32 %143)
  %145 = call i32 (...) @rcu_read_unlock()
  br label %159

146:                                              ; preds = %100
  %147 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %148 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %147, i32 0, i32 4
  %149 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %5, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %149, i64 %150
  %152 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  %156 = load i64, i64* @RX_REORDER_BUF_TIMEOUT_MQ, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @mod_timer(i32* %148, i64 %157)
  br label %159

159:                                              ; preds = %146, %103
  %160 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %3, align 8
  %161 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %160, i32 0, i32 3
  %162 = call i32 @spin_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %44
  ret void
}

declare dso_local %struct.iwl_mvm_reorder_buffer* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.iwl_mvm_baid_data* @iwl_mvm_baid_data_from_reorder_buf(%struct.iwl_mvm_reorder_buffer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @ieee80211_sn_add(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.TYPE_6__*, i8*, i64, i64) #1

declare dso_local i32 @iwl_mvm_event_frame_timeout_callback(%struct.TYPE_6__*, i32, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_release_frames(%struct.TYPE_6__*, %struct.ieee80211_sta*, i32*, %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_reorder_buffer*, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
