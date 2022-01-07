; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_control = type { %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iwl_mvm = type { i32*, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Dropping - RF/CT KILL\0A\00", align 1
@IWL_MVM_STATUS_ROC_RUNNING = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_ROC_AUX_RUNNING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @iwl_mvm_mac_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %14)
  store %struct.iwl_mvm* %15, %struct.iwl_mvm** %7, align 8
  %16 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %25, %struct.ieee80211_hdr** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %33 = call i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %37 = call i32 @IWL_DEBUG_DROP(%struct.iwl_mvm* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %145

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* @IWL_MVM_STATUS_ROC_RUNNING, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 1
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @IWL_MVM_STATUS_ROC_AUX_RUNNING, align 4
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 1
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %145

54:                                               ; preds = %47, %41, %38
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %63, %54
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ieee80211_is_mgmt(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ieee80211_is_bufferable_mmpdu(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %8, align 8
  br label %85

85:                                               ; preds = %84, %78, %72, %63
  %86 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %87 = icmp ne %struct.ieee80211_sta* %86, null
  br i1 %87, label %127, label %88

88:                                               ; preds = %85
  %89 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %97
  %101 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %102 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_4__* %104)
  store %struct.iwl_mvm_vif* %105, %struct.iwl_mvm_vif** %12, align 8
  %106 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @READ_ONCE(i32 %108)
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %100
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.ieee80211_sta* @rcu_dereference(i32 %119)
  store %struct.ieee80211_sta* %120, %struct.ieee80211_sta** %8, align 8
  %121 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %122 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %145

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %100
  br label %127

127:                                              ; preds = %126, %97, %88, %85
  %128 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %129 = icmp ne %struct.ieee80211_sta* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %134 = call i64 @iwl_mvm_tx_skb(%struct.iwl_mvm* %131, %struct.sk_buff* %132, %struct.ieee80211_sta* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %145

137:                                              ; preds = %130
  br label %149

138:                                              ; preds = %127
  %139 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = call i64 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm* %139, %struct.sk_buff* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %145

144:                                              ; preds = %138
  br label %149

145:                                              ; preds = %143, %136, %124, %53, %35
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %146, %struct.sk_buff* %147)
  br label %149

149:                                              ; preds = %145, %144, %137
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_is_bufferable_mmpdu(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_4__*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i64 @iwl_mvm_tx_skb(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_sta*) #1

declare dso_local i64 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
