; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_tx_80211_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_tx_80211_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@P54_HDR_FLAG_DATA_OUT_SEQNR = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@P54_HDR_FLAG_DATA_OUT_NOCANCEL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@P54_QUEUE_DATA = common dso_local global i64 0, align 8
@P54_HDR_FLAG_DATA_OUT_PROMISC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@P54_QUEUE_CAB = common dso_local global i64 0, align 8
@P54_HDR_FLAG_DATA_OUT_TIMESTAMP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_INJECTED = common dso_local global i32 0, align 4
@P54_QUEUE_BEACON = common dso_local global i64 0, align 8
@IEEE80211_MAX_TIM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i64*, i32*, i32*, i32*, i32*)* @p54_tx_80211_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_tx_80211_header(%struct.p54_common* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_sta* %3, i64* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.p54_common*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %12, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %19, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ieee80211_is_data_qos(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %9
  %30 = load i32*, i32** %18, align 8
  store i32 1, i32* %30, align 4
  br label %33

31:                                               ; preds = %9
  %32 = load i32*, i32** %18, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_SEQNR, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_NOCANCEL, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_NOCANCEL, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %70)
  %72 = load i64, i64* @P54_QUEUE_DATA, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  %75 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %76 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %153 [
    i32 129, label %78
    i32 128, label %84
    i32 131, label %86
    i32 132, label %86
    i32 130, label %86
  ]

78:                                               ; preds = %69
  %79 = load i32*, i32** %17, align 8
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_PROMISC, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %153

84:                                               ; preds = %69
  %85 = load i32*, i32** %17, align 8
  store i32 1, i32* %85, align 4
  br label %153

86:                                               ; preds = %69, %69, %69
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32*, i32** %17, align 8
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* @P54_QUEUE_CAB, align 8
  %96 = load i64*, i64** %14, align 8
  store i64 %95, i64* %96, align 8
  br label %153

97:                                               ; preds = %86
  %98 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ieee80211_is_mgmt(i32 %100)
  %102 = call i32 @unlikely(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %97
  %105 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ieee80211_is_probe_resp(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i32*, i32** %17, align 8
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_TIMESTAMP, align 4
  %113 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_NOCANCEL, align 4
  %114 = or i32 %112, %113
  %115 = load i32*, i32** %16, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %153

118:                                              ; preds = %104
  %119 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %120 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ieee80211_is_beacon(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load i32*, i32** %17, align 8
  store i32 0, i32* %125, align 4
  %126 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %127 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IEEE80211_TX_CTL_INJECTED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %153

133:                                              ; preds = %124
  %134 = load i32, i32* @P54_HDR_FLAG_DATA_OUT_TIMESTAMP, align 4
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = load i64, i64* @P54_QUEUE_BEACON, align 8
  %139 = load i64*, i64** %14, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i32, i32* @IEEE80211_MAX_TIM_LEN, align 4
  %141 = load i32*, i32** %15, align 8
  store i32 %140, i32* %141, align 4
  br label %153

142:                                              ; preds = %118
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %97
  %145 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %146 = icmp ne %struct.ieee80211_sta* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %17, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %144
  br label %153

153:                                              ; preds = %93, %110, %132, %133, %69, %152, %84, %78
  ret void
}

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
