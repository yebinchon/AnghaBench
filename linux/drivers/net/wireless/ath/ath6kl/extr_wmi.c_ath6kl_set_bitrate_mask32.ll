; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_set_bitrate_mask32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_set_bitrate_mask32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.wmi_set_tx_select_rates32_cmd = type { i32* }

@ATH6KL_NUM_BANDS = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Ratemask 32 bit: 2.4:%x 5:%x\0A\00", align 1
@WMI_RATES_MODE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_RATES_MODE_11A = common dso_local global i32 0, align 4
@WMI_RATES_MODE_11A_HT20 = common dso_local global i32 0, align 4
@WMI_RATES_MODE_11A_HT40 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@WMI_SET_TX_SELECT_RATES_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32, %struct.cfg80211_bitrate_mask*)* @ath6kl_set_bitrate_mask32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_bitrate_mask32(%struct.wmi* %0, i32 %1, %struct.cfg80211_bitrate_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wmi_set_tx_select_rates32_cmd*, align 8
  %16 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %7, align 8
  %17 = load i32, i32* @ATH6KL_NUM_BANDS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = bitcast i32* %20 to i32**
  %22 = mul nuw i64 4, %18
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32** %21, i32 0, i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %82, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %31 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %20, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %29
  %45 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %46 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %20, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %44, %29
  %58 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %59 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 12
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %20, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 %75, 20
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %20, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %57
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %25

85:                                               ; preds = %25
  %86 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %87 = getelementptr inbounds i32, i32* %20, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = getelementptr inbounds i32, i32* %20, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ath6kl_dbg(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %90)
  %92 = load i32, i32* @WMI_RATES_MODE_MAX, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %8, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %85
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %150

102:                                              ; preds = %85
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.wmi_set_tx_select_rates32_cmd*
  store %struct.wmi_set_tx_select_rates32_cmd* %106, %struct.wmi_set_tx_select_rates32_cmd** %15, align 8
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %139, %102
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @WMI_RATES_MODE_MAX, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %142

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @WMI_RATES_MODE_11A, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @WMI_RATES_MODE_11A_HT20, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @WMI_RATES_MODE_11A_HT40, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %115, %111
  %124 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %124, i32* %11, align 4
  br label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %20, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @cpu_to_le32(i32 %131)
  %133 = load %struct.wmi_set_tx_select_rates32_cmd*, %struct.wmi_set_tx_select_rates32_cmd** %15, align 8
  %134 = getelementptr inbounds %struct.wmi_set_tx_select_rates32_cmd, %struct.wmi_set_tx_select_rates32_cmd* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %107

142:                                              ; preds = %107
  %143 = load %struct.wmi*, %struct.wmi** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %146 = load i32, i32* @WMI_SET_TX_SELECT_RATES_CMDID, align 4
  %147 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %148 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %143, i32 %144, %struct.sk_buff* %145, i32 %146, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %150

150:                                              ; preds = %142, %99
  %151 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #2

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
