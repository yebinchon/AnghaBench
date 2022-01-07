; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_check_pn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_check_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32* }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.iwl_mvm_key_pn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@IEEE80211_CCMP_PN_LEN = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"expected hw-decrypted unicast frame for station\0A\00", align 1
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@RX_FLAG_ALLOW_SAME_PN = common dso_local global i32 0, align 4
@RX_FLAG_PN_VALIDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.sk_buff*, i32, %struct.ieee80211_sta*)* @iwl_mvm_check_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_check_pn(%struct.iwl_mvm* %0, %struct.sk_buff* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ieee80211_rx_status*, align 8
  %13 = alloca %struct.iwl_mvm_key_pn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.ieee80211_hdr* @iwl_mvm_skb_get_hdr(%struct.sk_buff* %21)
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %23)
  store %struct.ieee80211_rx_status* %24, %struct.ieee80211_rx_status** %12, align 8
  %25 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_is_data(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_multicast_ether_addr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

53:                                               ; preds = %49
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %55 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %59 = call i32 @IWL_ERR(%struct.iwl_mvm* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

60:                                               ; preds = %53
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %62 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %61)
  store %struct.iwl_mvm_sta* %62, %struct.iwl_mvm_sta** %10, align 8
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %64 = bitcast %struct.ieee80211_hdr* %63 to i32*
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ieee80211_hdrlen(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  store i32* %70, i32** %19, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 6
  store i32 %74, i32* %16, align 4
  %75 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.iwl_mvm_key_pn* @rcu_dereference(i32 %81)
  store %struct.iwl_mvm_key_pn* %82, %struct.iwl_mvm_key_pn** %13, align 8
  %83 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %13, align 8
  %84 = icmp ne %struct.iwl_mvm_key_pn* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

86:                                               ; preds = %60
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ieee80211_is_data_qos(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %94 = call i32 @ieee80211_get_tid(%struct.ieee80211_hdr* %93)
  store i32 %94, i32* %15, align 4
  br label %96

95:                                               ; preds = %86
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

101:                                              ; preds = %96
  %102 = load i32*, i32** %19, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %104, i32* %105, align 16
  %106 = load i32*, i32** %19, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %19, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %112, i32* %113, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %19, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 %120, i32* %121, align 16
  %122 = load i32*, i32** %19, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds i32, i32* %28, i64 5
  store i32 %124, i32* %125, align 4
  %126 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %13, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_key_pn, %struct.iwl_mvm_key_pn* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %139 = call i32 @memcmp(i32* %28, i32 %137, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %101
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

143:                                              ; preds = %101
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %148 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RX_FLAG_ALLOW_SAME_PN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

154:                                              ; preds = %146, %143
  %155 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %13, align 8
  %156 = getelementptr inbounds %struct.iwl_mvm_key_pn, %struct.iwl_mvm_key_pn* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %168 = call i32 @memcpy(i32 %166, i32* %28, i32 %167)
  %169 = load i32, i32* @RX_FLAG_PN_VALIDATED, align 4
  %170 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %171 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %174

174:                                              ; preds = %154, %153, %142, %100, %85, %57, %52, %48, %40
  %175 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local %struct.ieee80211_hdr* @iwl_mvm_skb_get_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local %struct.iwl_mvm_key_pn* @rcu_dereference(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
