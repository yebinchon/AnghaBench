; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_pass_packet_to_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_pass_packet_to_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.napi_struct = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.napi_struct*, %struct.sk_buff*, %struct.ieee80211_hdr*, i32, i32, %struct.iwl_rx_cmd_buffer*)* @iwl_mvm_pass_packet_to_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.napi_struct* %2, %struct.sk_buff* %3, %struct.ieee80211_hdr* %4, i32 %5, i32 %6, %struct.iwl_rx_cmd_buffer* %7) #0 {
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.napi_struct*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %9, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %10, align 8
  store %struct.napi_struct* %2, %struct.napi_struct** %11, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store %struct.ieee80211_hdr* %4, %struct.ieee80211_hdr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.iwl_rx_cmd_buffer* %7, %struct.iwl_rx_cmd_buffer** %16, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ieee80211_hdrlen(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = load i32, i32* %17, align 4
  %26 = and i32 %25, 3
  %27 = call i32 @skb_reserve(%struct.sk_buff* %24, i32 %26)
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = call i32 @skb_tailroom(%struct.sk_buff* %29)
  %31 = icmp ule i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* %14, align 4
  br label %39

34:                                               ; preds = %8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add i32 %35, %36
  %38 = add i32 %37, 8
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  store i32 %40, i32* %17, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @skb_put_data(%struct.sk_buff* %41, %struct.ieee80211_hdr* %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %17, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %39
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %52 = bitcast %struct.ieee80211_hdr* %51 to i8*
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %16, align 8
  %57 = call i8* @rxb_addr(%struct.iwl_rx_cmd_buffer* %56)
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %16, align 8
  %62 = call i32 @rxb_offset(%struct.iwl_rx_cmd_buffer* %61)
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %16, align 8
  %68 = call i32 @rxb_steal_page(%struct.iwl_rx_cmd_buffer* %67)
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %16, align 8
  %72 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @skb_add_rx_frag(%struct.sk_buff* %66, i32 0, i32 %68, i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %50, %39
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load %struct.napi_struct*, %struct.napi_struct** %11, align 8
  %82 = call i32 @ieee80211_rx_napi(i32 %78, %struct.ieee80211_sta* %79, %struct.sk_buff* %80, %struct.napi_struct* %81)
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.ieee80211_hdr*, i32) #1

declare dso_local i8* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @rxb_offset(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rxb_steal_page(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @ieee80211_rx_napi(i32, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
