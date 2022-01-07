; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_process_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_process_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ath_rx_status = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32 }

@RATE_INFO_BW_5 = common dso_local global i32 0, align 4
@RATE_INFO_BW_10 = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_cmn_process_rate(%struct.ath_common* %0, %struct.ieee80211_hw* %1, %struct.ath_rx_status* %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ath_rx_status*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_hw*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %6, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %7, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %8, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %15 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %14, i32 0, i32 0
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  store %struct.ath_hw* %16, %struct.ath_hw** %13, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, i64 %30
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, align 8
  store %struct.ieee80211_supported_band* %32, %struct.ieee80211_supported_band** %10, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call i64 @IS_CHAN_QUARTER_RATE(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load i32, i32* @RATE_INFO_BW_5, align 4
  %40 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %53

42:                                               ; preds = %4
  %43 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = call i64 @IS_CHAN_HALF_RATE(%struct.TYPE_9__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @RATE_INFO_BW_10, align 4
  %50 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %55 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load i32, i32* @RX_ENC_HT, align 4
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %64 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %71 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %76 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 127
  %79 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %5, align 4
  br label %134

81:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %128, %81
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %98 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %88
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  store i32 0, i32* %5, align 4
  br label %134

105:                                              ; preds = %88
  %106 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %107 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %115 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %105
  %119 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %5, align 4
  br label %134

127:                                              ; preds = %105
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %82

131:                                              ; preds = %82
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %131, %118, %101, %59
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
