; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_release_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_release_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_mvm_baid_data = type { i64, i32, %struct.iwl_mvm_reorder_buf_entry* }
%struct.iwl_mvm_reorder_buf_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.iwl_mvm_reorder_buffer = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@IWL_MVM_RELEASE_FROM_RSS_SYNC = common dso_local global i32 0, align 4
@IWL_MVM_RELEASE_SEND_RSS_SYNC = common dso_local global i32 0, align 4
@RX_REORDER_BUF_TIMEOUT_MQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.napi_struct*, %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_reorder_buffer*, i32, i32)* @iwl_mvm_release_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_release_frames(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.napi_struct* %2, %struct.iwl_mvm_baid_data* %3, %struct.iwl_mvm_reorder_buffer* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.napi_struct*, align 8
  %11 = alloca %struct.iwl_mvm_baid_data*, align 8
  %12 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_mvm_reorder_buf_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff_head*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %9, align 8
  store %struct.napi_struct* %2, %struct.napi_struct** %10, align 8
  store %struct.iwl_mvm_baid_data* %3, %struct.iwl_mvm_baid_data** %11, align 8
  store %struct.iwl_mvm_reorder_buffer* %4, %struct.iwl_mvm_reorder_buffer** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %11, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %21, i32 0, i32 2
  %23 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %22, align 8
  %24 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %11, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %26, %29
  %31 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %23, i64 %30
  store %struct.iwl_mvm_reorder_buf_entry* %31, %struct.iwl_mvm_reorder_buf_entry** %15, align 8
  %32 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %35, i32 0, i32 6
  %37 = call i32 @lockdep_assert_held(i32* %36)
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @IWL_MVM_RELEASE_FROM_RSS_SYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %7
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i64 @ieee80211_sn_less(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %120

48:                                               ; preds = %42, %7
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @iwl_mvm_is_sn_less(i32 %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %120

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %115, %57
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @iwl_mvm_is_sn_less(i32 %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %58
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %67, %70
  store i32 %71, i32* %17, align 4
  %72 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %15, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store %struct.sk_buff_head* %77, %struct.sk_buff_head** %18, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @ieee80211_sn_inc(i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @IWL_MVM_RELEASE_SEND_RSS_SYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %66
  %85 = load i32, i32* %16, align 4
  %86 = icmp eq i32 %85, 2048
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87, %84
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %92 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %11, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @iwl_mvm_sync_nssn(%struct.iwl_mvm* %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %87, %66
  br label %98

98:                                               ; preds = %102, %97
  %99 = load %struct.sk_buff_head*, %struct.sk_buff_head** %18, align 8
  %100 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %19, align 8
  %101 = icmp ne %struct.sk_buff* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %104 = load %struct.napi_struct*, %struct.napi_struct** %10, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %106 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %110 = call i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm* %103, %struct.napi_struct* %104, %struct.sk_buff* %105, i64 %108, %struct.ieee80211_sta* %109, i32 0)
  %111 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %112, align 8
  br label %98

115:                                              ; preds = %98
  br label %58

116:                                              ; preds = %58
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %56, %47
  %121 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %122 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %168

125:                                              ; preds = %120
  %126 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %168, label %130

130:                                              ; preds = %125
  %131 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = srem i32 %133, %136
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %147, %130
  %139 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %15, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %139, i64 %141
  %143 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = call i64 @skb_queue_empty(%struct.sk_buff_head* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  %150 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %151 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = srem i32 %149, %152
  store i32 %153, i32* %20, align 4
  br label %138

154:                                              ; preds = %138
  %155 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %156 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %155, i32 0, i32 3
  %157 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %15, align 8
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %157, i64 %159
  %161 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  %165 = load i64, i64* @RX_REORDER_BUF_TIMEOUT_MQ, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @mod_timer(i32* %156, i64 %166)
  br label %172

168:                                              ; preds = %125, %120
  %169 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %12, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %169, i32 0, i32 3
  %171 = call i32 @del_timer(i32* %170)
  br label %172

172:                                              ; preds = %168, %154
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ieee80211_sn_less(i32, i32) #1

declare dso_local i64 @iwl_mvm_is_sn_less(i32, i32, i32) #1

declare dso_local i32 @ieee80211_sn_inc(i32) #1

declare dso_local i32 @iwl_mvm_sync_nssn(%struct.iwl_mvm*, i32, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm*, %struct.napi_struct*, %struct.sk_buff*, i64, %struct.ieee80211_sta*, i32) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
