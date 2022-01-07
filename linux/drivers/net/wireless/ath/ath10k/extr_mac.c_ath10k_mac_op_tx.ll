; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { %struct.ath10k_htt, i32 }
%struct.ath10k_htt = type { i32 }
%struct.ieee80211_tx_control = type { %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_txq = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@ATH10K_MAC_TX_HTT = common dso_local global i32 0, align 4
@ATH10K_MAC_TX_HTT_MGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to increase tx pending count: %d, dropping\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"failed to increase tx mgmt pending count: %d, dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to transmit frame: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @ath10k_mac_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.ath10k_htt*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.ieee80211_txq*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.ath10k*, %struct.ath10k** %22, align 8
  store %struct.ath10k* %23, %struct.ath10k** %7, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  store %struct.ath10k_htt* %25, %struct.ath10k_htt** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %9, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  store %struct.ieee80211_vif* %31, %struct.ieee80211_vif** %10, align 8
  %32 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %32, i32 0, i32 0
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %33, align 8
  store %struct.ieee80211_sta* %34, %struct.ieee80211_sta** %11, align 8
  store %struct.ieee80211_txq* null, %struct.ieee80211_txq** %12, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %39, %struct.ieee80211_hdr** %13, align 8
  %40 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %41 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @ath10k_mac_update_airtime(%struct.ath10k* %40, %struct.ieee80211_txq* %41, %struct.sk_buff* %42)
  store i32 %43, i32* %20, align 4
  %44 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %46 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @ath10k_mac_tx_h_fill_cb(%struct.ath10k* %44, %struct.ieee80211_vif* %45, %struct.ieee80211_txq* %46, %struct.sk_buff* %47, i32 %48)
  %50 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @ath10k_mac_tx_h_get_txmode(%struct.ath10k* %50, %struct.ieee80211_vif* %51, %struct.ieee80211_sta* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @ath10k_mac_tx_h_get_txpath(%struct.ath10k* %55, %struct.sk_buff* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @ATH10K_MAC_TX_HTT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %3
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @ATH10K_MAC_TX_HTT_MGMT, align 4
  %65 = icmp eq i32 %63, %64
  br label %66

66:                                               ; preds = %62, %3
  %67 = phi i1 [ true, %3 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @ATH10K_MAC_TX_HTT_MGMT, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %66
  %76 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ieee80211_is_probe_resp(i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load %struct.ath10k_htt*, %struct.ath10k_htt** %8, align 8
  %85 = call i32 @ath10k_htt_tx_inc_pending(%struct.ath10k_htt* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %75
  %89 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @ath10k_warn(%struct.ath10k* %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %93 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_bh(i32* %94)
  %96 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %97 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @ieee80211_free_txskb(i32 %98, %struct.sk_buff* %99)
  br label %162

101:                                              ; preds = %75
  %102 = load %struct.ath10k_htt*, %struct.ath10k_htt** %8, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @ath10k_htt_tx_mgmt_inc_pending(%struct.ath10k_htt* %102, i32 %103, i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %110 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @ath10k_dbg(%struct.ath10k* %109, i32 %110, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.ath10k_htt*, %struct.ath10k_htt** %8, align 8
  %114 = call i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt* %113)
  %115 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %116 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %120 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = call i32 @ieee80211_free_txskb(i32 %121, %struct.sk_buff* %122)
  br label %162

124:                                              ; preds = %101
  %125 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %126 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_bh(i32* %127)
  br label %129

129:                                              ; preds = %124, %66
  %130 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32 @ath10k_mac_tx(%struct.ath10k* %130, %struct.ieee80211_vif* %131, i32 %132, i32 %133, %struct.sk_buff* %134)
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %129
  %139 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @ath10k_warn(%struct.ath10k* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %138
  %145 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %146 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %146, i32 0, i32 0
  %148 = call i32 @spin_lock_bh(i32* %147)
  %149 = load %struct.ath10k_htt*, %struct.ath10k_htt** %8, align 8
  %150 = call i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt* %149)
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %144
  %154 = load %struct.ath10k_htt*, %struct.ath10k_htt** %8, align 8
  %155 = call i32 @ath10k_htt_tx_mgmt_dec_pending(%struct.ath10k_htt* %154)
  br label %156

156:                                              ; preds = %153, %144
  %157 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %158 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %158, i32 0, i32 0
  %160 = call i32 @spin_unlock_bh(i32* %159)
  br label %161

161:                                              ; preds = %156, %138
  br label %162

162:                                              ; preds = %88, %108, %161, %129
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_update_airtime(%struct.ath10k*, %struct.ieee80211_txq*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_tx_h_fill_cb(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_txq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_mac_tx_h_get_txmode(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_tx_h_get_txpath(%struct.ath10k*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ath10k_htt_tx_inc_pending(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_mgmt_inc_pending(%struct.ath10k_htt*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_mac_tx(%struct.ath10k*, %struct.ieee80211_vif*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_mgmt_dec_pending(%struct.ath10k_htt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
