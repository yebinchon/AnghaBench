; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.ath_hw*, %struct.ieee80211_hw* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.ath_hw = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath_tx_control = type { i32, %struct.TYPE_10__, i32, i32, i32 }

@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PAPRD TX failed\0A\00", align 1
@ATH_PAPRD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Timeout waiting for paprd training on TX chain %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.sk_buff*, i32)* @ath_paprd_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_paprd_send_frame(%struct.ath_softc* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_tx_control, align 8
  %13 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %17)
  store %struct.ieee80211_tx_info* %18, %struct.ieee80211_tx_info** %9, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 3
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %10, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %11, align 8
  %24 = bitcast %struct.ath_tx_control* %12 to %struct.ieee80211_tx_info*
  %25 = call i32 @memset(%struct.ieee80211_tx_info* %24, i32 0, i32 32)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @IEEE80211_AC_BE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %12, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %35 = call i32 @memset(%struct.ieee80211_tx_info* %34, i32 0, i32 32)
  %36 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %62 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %61, i32* %67, align 4
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 4
  %74 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 0
  %76 = call i32 @init_completion(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %12, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = bitcast %struct.ath_tx_control* %12 to %struct.ieee80211_tx_info*
  %83 = call i64 @ath_tx_start(%struct.ieee80211_hw* %80, %struct.sk_buff* %81, %struct.ieee80211_tx_info* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %3
  %86 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %87 = load i32, i32* @CALIBRATE, align 4
  %88 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %86, i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %89)
  store i32 0, i32* %4, align 4
  br label %110

91:                                               ; preds = %3
  %92 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 0
  %94 = load i32, i32* @ATH_PAPRD_TIMEOUT, align 4
  %95 = call i32 @msecs_to_jiffies(i32 %94)
  %96 = call i64 @wait_for_completion_timeout(i32* %93, i32 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %91
  %100 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %101 = load i32, i32* @CALIBRATE, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %100, i32 %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %91
  %105 = load i64, i64* %13, align 8
  %106 = icmp ne i64 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %85
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ath_tx_start(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
