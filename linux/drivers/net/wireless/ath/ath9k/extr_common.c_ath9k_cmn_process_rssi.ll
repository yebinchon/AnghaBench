; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_process_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_process_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ath_rx_status = type { i32, i32*, i64, i64 }
%struct.ieee80211_rx_status = type { i32, i32*, i32, i32 }

@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@ATH9K_RSSI_BAD = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ATH_RSSI_DUMMY_MARKER = common dso_local global i32 0, align 4
@ATH_RSSI_EP_MULTIPLIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_process_rssi(%struct.ath_common* %0, %struct.ieee80211_hw* %1, %struct.ath_rx_status* %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath_rx_status*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.ath_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %6, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %7, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %8, align 8
  %15 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %16 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %15, i32 0, i32 1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %9, align 8
  %18 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %19 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %22 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %27 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %152

31:                                               ; preds = %4
  %32 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %33 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATH9K_RSSI_BAD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %39 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %152

43:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %92, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %47 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ARRAY_SIZE(i32* %48)
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %44
  %52 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %92

60:                                               ; preds = %51
  %61 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ATH9K_RSSI_BAD, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %60
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %71, %60
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %89, %59
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %44

95:                                               ; preds = %44
  %96 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %97 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %95
  %101 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %102 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %108 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %106, %100
  %113 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %114 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %117 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ATH_RSSI_LPF(i32 %115, i32 %118)
  %120 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %121 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  %125 = icmp ne i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @likely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %112
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @ATH_RSSI_EP_MULTIPLIER, align 4
  %132 = call i32 @ATH_EP_RND(i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %129, %112
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %140 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  br label %142

142:                                              ; preds = %137, %106, %95
  %143 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %144 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %147 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %145, %148
  %150 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %151 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %142, %37, %25
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ATH_RSSI_LPF(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ATH_EP_RND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
