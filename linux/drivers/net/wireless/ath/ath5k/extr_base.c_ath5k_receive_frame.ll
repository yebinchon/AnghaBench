; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }
%struct.sk_buff = type { i64 }
%struct.ath5k_rx_status = type { i32, i32, i64, i64, i32 }
%struct.ieee80211_rx_status = type { i64, i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@AR5K_RXERR_MIC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_CRC = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@RATE_INFO_BW_5 = common dso_local global i32 0, align 4
@RATE_INFO_BW_10 = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.sk_buff*, %struct.ath5k_rx_status*)* @ath5k_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_receive_frame(%struct.ath5k_hw* %0, %struct.sk_buff* %1, %struct.ath5k_rx_status* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath5k_rx_status*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca %struct.ath_common*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ath5k_rx_status* %2, %struct.ath5k_rx_status** %6, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %10 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @ath5k_remove_padding(%struct.sk_buff* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %13)
  store %struct.ieee80211_rx_status* %14, %struct.ieee80211_rx_status** %7, align 8
  %15 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %15, i32 0, i32 5
  store i32 0, i32* %16, align 8
  %17 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %18 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AR5K_RXERR_MIC, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %26 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %32 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %40 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %30
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %46 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %47 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ath5k_extend_tsf(%struct.ath5k_hw* %45, i32 %48)
  %50 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %57, i32 0, i32 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %75 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %78, i32 0, i32 6
  store i64 %77, i64* %79, align 8
  %80 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %81 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %86 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %44
  %90 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %91 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 5
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %100 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %114

106:                                              ; preds = %89, %44
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %108 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %106, %94
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %116 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %117 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @ath5k_hw_to_driver_rix(%struct.ath5k_hw* %115, i64 %118)
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %125 = call i32 @ath5k_rx_decrypted(%struct.ath5k_hw* %122, %struct.sk_buff* %123, %struct.ath5k_rx_status* %124)
  %126 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %141 [
    i32 128, label %133
    i32 129, label %137
  ]

133:                                              ; preds = %114
  %134 = load i32, i32* @RATE_INFO_BW_5, align 4
  %135 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %136 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  br label %142

137:                                              ; preds = %114
  %138 = load i32, i32* @RATE_INFO_BW_10, align 4
  %139 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  br label %142

141:                                              ; preds = %114
  br label %142

142:                                              ; preds = %141, %137, %133
  %143 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %144 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %147 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %146, i32 0, i32 5
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %150 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %149, i32 0, i32 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %158 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %145, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %142
  %165 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %166 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %142
  %171 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = call i32 @trace_ath5k_rx(%struct.ath5k_hw* %171, %struct.sk_buff* %172)
  %174 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.ieee80211_hdr*
  %179 = call i64 @ath_is_mybeacon(%struct.ath_common* %174, %struct.ieee80211_hdr* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %170
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %183 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %182, i32 0, i32 3
  %184 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %185 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @ewma_beacon_rssi_add(i32* %183, i64 %186)
  %188 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %189 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %181
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %197 = call i32 @ath5k_check_ibss_tsf(%struct.ath5k_hw* %194, %struct.sk_buff* %195, %struct.ieee80211_rx_status* %196)
  br label %198

198:                                              ; preds = %193, %181
  br label %199

199:                                              ; preds = %198, %170
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %201 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = call i32 @ieee80211_rx(i32 %202, %struct.sk_buff* %203)
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_remove_padding(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath5k_extend_tsf(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @ath5k_hw_to_driver_rix(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_rx_decrypted(%struct.ath5k_hw*, %struct.sk_buff*, %struct.ath5k_rx_status*) #1

declare dso_local i32 @trace_ath5k_rx(%struct.ath5k_hw*, %struct.sk_buff*) #1

declare dso_local i64 @ath_is_mybeacon(%struct.ath_common*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @ewma_beacon_rssi_add(i32*, i64) #1

declare dso_local i32 @ath5k_check_ibss_tsf(%struct.ath5k_hw*, %struct.sk_buff*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
