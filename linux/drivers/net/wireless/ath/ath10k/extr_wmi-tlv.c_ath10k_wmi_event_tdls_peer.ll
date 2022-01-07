; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_event_tdls_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_event_tdls_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wmi_tlv_tdls_peer_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_vif = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tdls peer failed to parse tlv\00", align 1
@WMI_TLV_TAG_STRUCT_TDLS_PEER_EVENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"tdls peer NULL event\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"did not find station from tdls peer event\00", align 1
@NL80211_TDLS_TEARDOWN = common dso_local global i32 0, align 4
@WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_event_tdls_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_event_tdls_peer(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.wmi_tlv_tdls_peer_event*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %9, i32 %12, i32 %15, i32 %16)
  store i8** %17, i8*** %7, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = call i64 @IS_ERR(i8** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = call i32 @ath10k_warn(%struct.ath10k* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %78

24:                                               ; preds = %2
  %25 = load i8**, i8*** %7, align 8
  %26 = load i64, i64* @WMI_TLV_TAG_STRUCT_TDLS_PEER_EVENT, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.wmi_tlv_tdls_peer_event*
  store %struct.wmi_tlv_tdls_peer_event* %29, %struct.wmi_tlv_tdls_peer_event** %6, align 8
  %30 = load %struct.wmi_tlv_tdls_peer_event*, %struct.wmi_tlv_tdls_peer_event** %6, align 8
  %31 = icmp ne %struct.wmi_tlv_tdls_peer_event* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load i8**, i8*** %7, align 8
  %34 = call i32 @kfree(i8** %33)
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = call i32 @ath10k_warn(%struct.ath10k* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %78

37:                                               ; preds = %24
  %38 = load %struct.wmi_tlv_tdls_peer_event*, %struct.wmi_tlv_tdls_peer_event** %6, align 8
  %39 = getelementptr inbounds %struct.wmi_tlv_tdls_peer_event, %struct.wmi_tlv_tdls_peer_event* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__le32_to_cpu(i32 %40)
  switch i32 %41, label %75 [
    i32 128, label %42
    i32 129, label %42
    i32 130, label %42
  ]

42:                                               ; preds = %37, %37, %37
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmi_tlv_tdls_peer_event*, %struct.wmi_tlv_tdls_peer_event** %6, align 8
  %47 = getelementptr inbounds %struct.wmi_tlv_tdls_peer_event, %struct.wmi_tlv_tdls_peer_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %45, i32 %49, i32* null)
  store %struct.ieee80211_sta* %50, %struct.ieee80211_sta** %5, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %52 = icmp ne %struct.ieee80211_sta* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %55 = call i32 @ath10k_warn(%struct.ath10k* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8**, i8*** %7, align 8
  %57 = call i32 @kfree(i8** %56)
  br label %78

58:                                               ; preds = %42
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = load %struct.wmi_tlv_tdls_peer_event*, %struct.wmi_tlv_tdls_peer_event** %6, align 8
  %61 = getelementptr inbounds %struct.wmi_tlv_tdls_peer_event, %struct.wmi_tlv_tdls_peer_event* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__le32_to_cpu(i32 %62)
  %64 = call %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %59, i32 %63)
  store %struct.ath10k_vif* %64, %struct.ath10k_vif** %8, align 8
  %65 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %66 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NL80211_TDLS_TEARDOWN, align 4
  %72 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE, align 4
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @ieee80211_tdls_oper_request(i32 %67, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %37, %58
  %76 = load i8**, i8*** %7, align 8
  %77 = call i32 @kfree(i8** %76)
  br label %78

78:                                               ; preds = %75, %53, %32, %21
  ret void
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k*, i32) #1

declare dso_local i32 @ieee80211_tdls_oper_request(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
