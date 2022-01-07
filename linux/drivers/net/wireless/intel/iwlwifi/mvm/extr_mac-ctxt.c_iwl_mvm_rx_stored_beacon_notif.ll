; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_rx_stored_beacon_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_rx_stored_beacon_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_stored_beacon_notif = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i8*, i32, i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@RX_FLAG_MACTIME_PLCP_START = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_BAND_24 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_stored_beacon_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_stored_beacon_notif*, align 8
  %7 = alloca %struct.ieee80211_rx_status, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %11, %struct.iwl_rx_packet** %5, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_stored_beacon_notif*
  store %struct.iwl_stored_beacon_notif* %16, %struct.iwl_stored_beacon_notif** %6, align 8
  %17 = load %struct.iwl_stored_beacon_notif*, %struct.iwl_stored_beacon_notif** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_stored_beacon_notif, %struct.iwl_stored_beacon_notif* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le32_to_cpu(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %86

25:                                               ; preds = %2
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @alloc_skb(i64 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = call i32 @IWL_ERR(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %86

34:                                               ; preds = %25
  %35 = call i32 @memset(%struct.ieee80211_rx_status* %7, i32 0, i32 24)
  %36 = load %struct.iwl_stored_beacon_notif*, %struct.iwl_stored_beacon_notif** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_stored_beacon_notif, %struct.iwl_stored_beacon_notif* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %7, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @RX_FLAG_MACTIME_PLCP_START, align 4
  %42 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %7, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = load %struct.iwl_stored_beacon_notif*, %struct.iwl_stored_beacon_notif** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_stored_beacon_notif, %struct.iwl_stored_beacon_notif* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %7, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load %struct.iwl_stored_beacon_notif*, %struct.iwl_stored_beacon_notif** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_stored_beacon_notif, %struct.iwl_stored_beacon_notif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RX_RES_PHY_FLAGS_BAND_24, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %61

59:                                               ; preds = %34
  %60 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.iwl_stored_beacon_notif*, %struct.iwl_stored_beacon_notif** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_stored_beacon_notif, %struct.iwl_stored_beacon_notif* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ieee80211_channel_to_frequency(i32 %67, i32 %69)
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %7, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load %struct.iwl_stored_beacon_notif*, %struct.iwl_stored_beacon_notif** %6, align 8
  %74 = getelementptr inbounds %struct.iwl_stored_beacon_notif, %struct.iwl_stored_beacon_notif* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @skb_put_data(%struct.sk_buff* %72, i32 %75, i64 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %78)
  %80 = call i32 @memcpy(i32 %79, %struct.ieee80211_rx_status* %7, i32 24)
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @ieee80211_rx_napi(i32 %83, i32* null, %struct.sk_buff* %84, i32* null)
  br label %86

86:                                               ; preds = %61, %31, %24
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_napi(i32, i32*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
