; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_rx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_rx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }
%struct.ath9k_htc_rxbuf = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath_common = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ath_htc_rx_status = type { i32, i32 }
%struct.ath_rx_status = type { i32, i32, i32 }

@HTC_RX_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Corrupted RX frame, dropping (len: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Corrupted RX data len, dropping (dlen: %d, skblen: %d)\0A\00", align 1
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ath9k_htc_rxbuf*, %struct.ieee80211_rx_status*)* @ath9k_rx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rx_prepare(%struct.ath9k_htc_priv* %0, %struct.ath9k_htc_rxbuf* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath9k_htc_rxbuf*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_hw*, align 8
  %13 = alloca %struct.ath_htc_rx_status*, align 8
  %14 = alloca %struct.ath_rx_status, align 4
  %15 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store %struct.ath9k_htc_rxbuf* %1, %struct.ath9k_htc_rxbuf** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %9, align 8
  %19 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.ath_common* @ath9k_hw_common(i32 %24)
  store %struct.ath_common* %25, %struct.ath_common** %11, align 8
  %26 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %27 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %26, i32 0, i32 0
  %28 = load %struct.ath_hw*, %struct.ath_hw** %27, align 8
  store %struct.ath_hw* %28, %struct.ath_hw** %12, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.ath_common*, i8*, i64, ...) @ath_err(%struct.ath_common* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %160

40:                                               ; preds = %3
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ath_htc_rx_status*
  store %struct.ath_htc_rx_status* %44, %struct.ath_htc_rx_status** %13, align 8
  %45 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %13, align 8
  %46 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be16_to_cpu(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %53 = sub nsw i64 %51, %52
  %54 = sub nsw i64 %48, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %40
  %57 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %58 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %13, align 8
  %59 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.ath_common*, i8*, i64, ...) @ath_err(%struct.ath_common* %57, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %64)
  br label %160

66:                                               ; preds = %40
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %68 = call i32 @memset(%struct.ieee80211_rx_status* %67, i32 0, i32 20)
  %69 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %13, align 8
  %70 = call i32 @rx_status_htc_to_ath(%struct.ath_rx_status* %14, %struct.ath_htc_rx_status* %69)
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %72 = call i32 @ath9k_htc_err_stat_rx(%struct.ath9k_htc_priv* %71, %struct.ath_rx_status* %14)
  %73 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %13, align 8
  %74 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be64_to_cpu(i32 %75)
  %77 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %81 = call i32 @skb_pull(%struct.sk_buff* %79, i64 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %85, %struct.ieee80211_hdr** %8, align 8
  %86 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %66
  %92 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %93 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %92, i32 0, i32 1
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %95 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %96 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ath_cmn_process_fft(i32* %93, %struct.ieee80211_hdr* %94, %struct.ath_rx_status* %14, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %91
  br label %160

102:                                              ; preds = %66
  %103 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %104 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %106 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %107 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ath9k_cmn_rx_accept(%struct.ath_common* %103, %struct.ieee80211_hdr* %104, %struct.ieee80211_rx_status* %105, %struct.ath_rx_status* %14, i32* %15, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  br label %160

112:                                              ; preds = %102
  %113 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %115 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @ath9k_cmn_rx_skb_postprocess(%struct.ath_common* %113, %struct.sk_buff* %114, %struct.ath_rx_status* %14, %struct.ieee80211_rx_status* %115, i32 %116)
  %118 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %121 = call i64 @ath9k_cmn_process_rate(%struct.ath_common* %118, %struct.ieee80211_hw* %119, %struct.ath_rx_status* %14, %struct.ieee80211_rx_status* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %160

124:                                              ; preds = %112
  %125 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %127 = call i32 @ath_is_mybeacon(%struct.ath_common* %125, %struct.ieee80211_hdr* %126)
  %128 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %14, i32 0, i32 2
  store i32 %127, i32* %128, align 4
  %129 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %131 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %132 = call i32 @ath9k_cmn_process_rssi(%struct.ath_common* %129, %struct.ieee80211_hw* %130, %struct.ath_rx_status* %14, %struct.ieee80211_rx_status* %131)
  %133 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %143 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %150 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %14, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %156 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %157 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  store i32 1, i32* %4, align 4
  br label %161

160:                                              ; preds = %123, %111, %101, %56, %34
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %124
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @rx_status_htc_to_ath(%struct.ath_rx_status*, %struct.ath_htc_rx_status*) #1

declare dso_local i32 @ath9k_htc_err_stat_rx(%struct.ath9k_htc_priv*, %struct.ath_rx_status*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @ath_cmn_process_fft(i32*, %struct.ieee80211_hdr*, %struct.ath_rx_status*, i32) #1

declare dso_local i32 @ath9k_cmn_rx_accept(%struct.ath_common*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, %struct.ath_rx_status*, i32*, i32) #1

declare dso_local i32 @ath9k_cmn_rx_skb_postprocess(%struct.ath_common*, %struct.sk_buff*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i64 @ath9k_cmn_process_rate(%struct.ath_common*, %struct.ieee80211_hw*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ath_is_mybeacon(%struct.ath_common*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @ath9k_cmn_process_rssi(%struct.ath_common*, %struct.ieee80211_hw*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
