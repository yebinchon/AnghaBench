; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c__iwl_dbgfs_inject_beacon_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c__iwl_dbgfs_inject_beacon_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm_vif = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.iwl_mac_beacon_cmd = type { i32, i32, i32, i8*, i8* }

@U8_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE = common dso_local global i32 0, align 4
@NUM_MAC_INDEX_DRIVER = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i64 0, align 8
@IWL_MAC_BEACON_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i8*, i32)* @_iwl_dbgfs_inject_beacon_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_iwl_dbgfs_inject_beacon_ie(%struct.iwl_mvm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.iwl_mac_beacon_cmd, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast %struct.iwl_mac_beacon_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @U8_MAX, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %168

25:                                               ; preds = %3
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %27 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %168

32:                                               ; preds = %25
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %34 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* @IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE, align 4
  %42 = call i32 @fw_has_api(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %168

47:                                               ; preds = %36, %32
  %48 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %68, %47
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @NUM_MAC_INDEX_DRIVER, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm* %54, i32 %55, i32 1)
  store %struct.ieee80211_vif* %56, %struct.ieee80211_vif** %8, align 8
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %58 = icmp ne %struct.ieee80211_vif* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %53
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %49

71:                                               ; preds = %66, %49
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @NUM_MAC_INDEX_DRIVER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %77 = icmp ne %struct.ieee80211_vif* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %71
  br label %164

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %89 = call %struct.sk_buff* @ieee80211_beacon_get_template(%struct.TYPE_4__* %87, %struct.ieee80211_vif* %88, i32* null)
  store %struct.sk_buff* %89, %struct.sk_buff** %10, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %79
  br label %164

93:                                               ; preds = %79
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @skb_put_zero(%struct.sk_buff* %97, i32 %98)
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @hex2bin(i32 %99, i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %106 = call i32 @dev_kfree_skb(%struct.sk_buff* %105)
  br label %164

107:                                              ; preds = %96, %93
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %111 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %110)
  store %struct.iwl_mvm_vif* %111, %struct.iwl_mvm_vif** %9, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %112)
  store %struct.ieee80211_tx_info* %113, %struct.ieee80211_tx_info** %11, align 8
  %114 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %116 = call i64 @iwl_mvm_mac_ctxt_get_lowest_rate(%struct.ieee80211_tx_info* %114, %struct.ieee80211_vif* %115)
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @iwl_mvm_mac80211_idx_to_hwrate(i64 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* @IWL_FIRST_CCK_RATE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %107
  %123 = load i32, i32* @IWL_MAC_BEACON_CCK, align 4
  %124 = load i32, i32* %14, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %122, %107
  %127 = load i32, i32* %14, align 4
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %12, i32 0, i32 4
  store i8* %128, i8** %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i8* @cpu_to_le16(i32 %133)
  %135 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %12, i32 0, i32 3
  store i8* %134, i8** %135, align 8
  %136 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %137 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @cpu_to_le32(i32 %139)
  %141 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %12, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %143 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %12, i32 0, i32 1
  %144 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %12, i32 0, i32 0
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @iwl_mvm_mac_ctxt_set_tim(%struct.iwl_mvm* %142, i32* %143, i32* %144, i32 %147, i64 %150)
  %152 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %153 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %152, i32 0, i32 1
  %154 = call i32 @mutex_lock(i32* %153)
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = call i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(%struct.iwl_mvm* %155, %struct.sk_buff* %156, %struct.iwl_mac_beacon_cmd* %12, i32 32)
  %158 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %159 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %162 = call i32 @dev_kfree_skb(%struct.sk_buff* %161)
  %163 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %168

164:                                              ; preds = %104, %92, %78
  %165 = call i32 (...) @rcu_read_unlock()
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %164, %126, %44, %29, %22
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #2

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #2

declare dso_local i32 @fw_has_api(i32*, i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm*, i32, i32) #2

declare dso_local %struct.sk_buff* @ieee80211_beacon_get_template(%struct.TYPE_4__*, %struct.ieee80211_vif*, i32*) #2

declare dso_local i64 @hex2bin(i32, i8*, i32) #2

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i64 @iwl_mvm_mac_ctxt_get_lowest_rate(%struct.ieee80211_tx_info*, %struct.ieee80211_vif*) #2

declare dso_local i32 @iwl_mvm_mac80211_idx_to_hwrate(i64) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_set_tim(%struct.iwl_mvm*, i32*, i32*, i32, i64) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_mac_beacon_cmd*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
