; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_push_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_push_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { %struct.ath10k_htt }
%struct.ath10k_htt = type { i32 }
%struct.ieee80211_txq = type { %struct.ieee80211_sta*, %struct.ieee80211_vif*, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath10k_txq = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hdr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ATH10K_MAC_TX_HTT_MGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to push frame: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_mac_tx_push_txq(%struct.ieee80211_hw* %0, %struct.ieee80211_txq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_txq*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_htt*, align 8
  %8 = alloca %struct.ath10k_txq*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %5, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = load %struct.ath10k*, %struct.ath10k** %21, align 8
  store %struct.ath10k* %22, %struct.ath10k** %6, align 8
  %23 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  store %struct.ath10k_htt* %24, %struct.ath10k_htt** %7, align 8
  %25 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.ath10k_txq*
  store %struct.ath10k_txq* %29, %struct.ath10k_txq** %8, align 8
  %30 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %30, i32 0, i32 1
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %31, align 8
  store %struct.ieee80211_vif* %32, %struct.ieee80211_vif** %9, align 8
  %33 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %34, align 8
  store %struct.ieee80211_sta* %35, %struct.ieee80211_sta** %10, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.ath10k_htt*, %struct.ath10k_htt** %7, align 8
  %41 = call i32 @ath10k_htt_tx_inc_pending(%struct.ath10k_htt* %40)
  store i32 %41, i32* %18, align 4
  %42 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %3, align 4
  br label %176

50:                                               ; preds = %2
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %52 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %53 = call %struct.sk_buff* @ieee80211_tx_dequeue(%struct.ieee80211_hw* %51, %struct.ieee80211_txq* %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %13, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.ath10k_htt*, %struct.ath10k_htt** %7, align 8
  %62 = call i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt* %61)
  %63 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %176

69:                                               ; preds = %50
  %70 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %71 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = call i32 @ath10k_mac_update_airtime(%struct.ath10k* %70, %struct.ieee80211_txq* %71, %struct.sk_buff* %72)
  store i32 %73, i32* %19, align 4
  %74 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %76 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @ath10k_mac_tx_h_fill_cb(%struct.ath10k* %74, %struct.ieee80211_vif* %75, %struct.ieee80211_txq* %76, %struct.sk_buff* %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %15, align 8
  %83 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = call i32 @ath10k_mac_tx_h_get_txmode(%struct.ath10k* %83, %struct.ieee80211_vif* %84, %struct.ieee80211_sta* %85, %struct.sk_buff* %86)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ath10k_mac_tx_h_get_txpath(%struct.ath10k* %88, %struct.sk_buff* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @ATH10K_MAC_TX_HTT_MGMT, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %69
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %102, %struct.ieee80211_hdr** %14, align 8
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ieee80211_is_probe_resp(i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %108 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %108, i32 0, i32 0
  %110 = call i32 @spin_lock_bh(i32* %109)
  %111 = load %struct.ath10k_htt*, %struct.ath10k_htt** %7, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @ath10k_htt_tx_mgmt_inc_pending(%struct.ath10k_htt* %111, i32 %112, i32 %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %98
  %118 = load %struct.ath10k_htt*, %struct.ath10k_htt** %7, align 8
  %119 = call i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt* %118)
  %120 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %121 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock_bh(i32* %122)
  %124 = load i32, i32* %18, align 4
  store i32 %124, i32* %3, align 4
  br label %176

125:                                              ; preds = %98
  %126 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_bh(i32* %128)
  br label %130

130:                                              ; preds = %125, %69
  %131 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %132 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = call i32 @ath10k_mac_tx(%struct.ath10k* %131, %struct.ieee80211_vif* %132, i32 %133, i32 %134, %struct.sk_buff* %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %130
  %141 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @ath10k_warn(%struct.ath10k* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %145 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %145, i32 0, i32 0
  %147 = call i32 @spin_lock_bh(i32* %146)
  %148 = load %struct.ath10k_htt*, %struct.ath10k_htt** %7, align 8
  %149 = call i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt* %148)
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load %struct.ath10k_htt*, %struct.ath10k_htt** %7, align 8
  %154 = call i32 @ath10k_htt_tx_mgmt_dec_pending(%struct.ath10k_htt* %153)
  br label %155

155:                                              ; preds = %152, %140
  %156 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %157 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %157, i32 0, i32 0
  %159 = call i32 @spin_unlock_bh(i32* %158)
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %3, align 4
  br label %176

161:                                              ; preds = %130
  %162 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %163 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %163, i32 0, i32 0
  %165 = call i32 @spin_lock_bh(i32* %164)
  %166 = load %struct.ath10k_txq*, %struct.ath10k_txq** %8, align 8
  %167 = getelementptr inbounds %struct.ath10k_txq, %struct.ath10k_txq* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %171 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %171, i32 0, i32 0
  %173 = call i32 @spin_unlock_bh(i32* %172)
  %174 = load i64, i64* %15, align 8
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %161, %155, %117, %56, %48
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_htt_tx_inc_pending(%struct.ath10k_htt*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_tx_dequeue(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_mac_update_airtime(%struct.ath10k*, %struct.ieee80211_txq*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_tx_h_fill_cb(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_txq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_mac_tx_h_get_txmode(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_tx_h_get_txpath(%struct.ath10k*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ath10k_htt_tx_mgmt_inc_pending(%struct.ath10k_htt*, i32, i32) #1

declare dso_local i32 @ath10k_mac_tx(%struct.ath10k*, %struct.ieee80211_vif*, i32, i32, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_htt_tx_mgmt_dec_pending(%struct.ath10k_htt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
