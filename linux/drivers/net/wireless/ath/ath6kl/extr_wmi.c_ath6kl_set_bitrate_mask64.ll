; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_set_bitrate_mask64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_set_bitrate_mask64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.wmi_set_tx_select_rates64_cmd = type { i32* }

@ATH6KL_NUM_BANDS = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Ratemask 64 bit: 2.4:%llx 5:%llx\0A\00", align 1
@WMI_RATES_MODE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_RATES_MODE_11A = common dso_local global i32 0, align 4
@WMI_RATES_MODE_11A_HT20 = common dso_local global i32 0, align 4
@WMI_RATES_MODE_11A_HT40 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@WMI_SET_TX_SELECT_RATES_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32, %struct.cfg80211_bitrate_mask*)* @ath6kl_set_bitrate_mask64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_bitrate_mask64(%struct.wmi* %0, i32 %1, %struct.cfg80211_bitrate_mask* %2) #0 {
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
  %15 = alloca %struct.wmi_set_tx_select_rates64_cmd*, align 8
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

25:                                               ; preds = %96, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %99

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
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 8
  store i32 %69, i32* %12, align 4
  %70 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %71 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = shl i32 %82, 12
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %20, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 28
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %20, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %57
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %25

99:                                               ; preds = %25
  %100 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %101 = getelementptr inbounds i32, i32* %20, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = getelementptr inbounds i32, i32* %20, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ath6kl_dbg(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %104)
  %106 = load i32, i32* @WMI_RATES_MODE_MAX, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %8, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %99
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %164

116:                                              ; preds = %99
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.wmi_set_tx_select_rates64_cmd*
  store %struct.wmi_set_tx_select_rates64_cmd* %120, %struct.wmi_set_tx_select_rates64_cmd** %15, align 8
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %153, %116
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @WMI_RATES_MODE_MAX, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %156

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @WMI_RATES_MODE_11A, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @WMI_RATES_MODE_11A_HT20, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @WMI_RATES_MODE_11A_HT40, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133, %129, %125
  %138 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %138, i32* %11, align 4
  br label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %20, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cpu_to_le64(i32 %145)
  %147 = load %struct.wmi_set_tx_select_rates64_cmd*, %struct.wmi_set_tx_select_rates64_cmd** %15, align 8
  %148 = getelementptr inbounds %struct.wmi_set_tx_select_rates64_cmd, %struct.wmi_set_tx_select_rates64_cmd* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %121

156:                                              ; preds = %121
  %157 = load %struct.wmi*, %struct.wmi** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = load i32, i32* @WMI_SET_TX_SELECT_RATES_CMDID, align 4
  %161 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %162 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %157, i32 %158, %struct.sk_buff* %159, i32 %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %164

164:                                              ; preds = %156, %113
  %165 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #2

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

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
