; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_cancel_remain_on_chnl_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_cancel_remain_on_chnl_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i64, i64, i32 }
%struct.wmi_cancel_remain_on_chnl_event = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cancel_remain_on_chnl: freq=%u dur=%u status=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cancel_remain_on_chnl: Unknown channel (freq=%u)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_cancel_remain_on_chnl_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_cancel_remain_on_chnl_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_cancel_remain_on_chnl_event*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca %struct.ath6kl*, align 8
  %15 = alloca i64, align 8
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %9, align 8
  %16 = load %struct.wmi*, %struct.wmi** %6, align 8
  %17 = getelementptr inbounds %struct.wmi, %struct.wmi* %16, i32 0, i32 0
  %18 = load %struct.ath6kl*, %struct.ath6kl** %17, align 8
  store %struct.ath6kl* %18, %struct.ath6kl** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 12
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %87

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.wmi_cancel_remain_on_chnl_event*
  store %struct.wmi_cancel_remain_on_chnl_event* %27, %struct.wmi_cancel_remain_on_chnl_event** %10, align 8
  %28 = load %struct.wmi_cancel_remain_on_chnl_event*, %struct.wmi_cancel_remain_on_chnl_event** %10, align 8
  %29 = getelementptr inbounds %struct.wmi_cancel_remain_on_chnl_event, %struct.wmi_cancel_remain_on_chnl_event* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.wmi_cancel_remain_on_chnl_event*, %struct.wmi_cancel_remain_on_chnl_event** %10, align 8
  %33 = getelementptr inbounds %struct.wmi_cancel_remain_on_chnl_event, %struct.wmi_cancel_remain_on_chnl_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.wmi_cancel_remain_on_chnl_event*, %struct.wmi_cancel_remain_on_chnl_event** %10, align 8
  %40 = getelementptr inbounds %struct.wmi_cancel_remain_on_chnl_event, %struct.wmi_cancel_remain_on_chnl_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38, i32 %41)
  %43 = load %struct.ath6kl*, %struct.ath6kl** %14, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %45, i64 %46)
  store %struct.ieee80211_channel* %47, %struct.ieee80211_channel** %13, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %49 = icmp ne %struct.ieee80211_channel* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %25
  %51 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %87

56:                                               ; preds = %25
  %57 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %58 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %63 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %67 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %72 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %15, align 8
  br label %78

74:                                               ; preds = %61, %56
  %75 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %76 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %80 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %82 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %81, i32 0, i32 2
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %85 = load i32, i32* @GFP_ATOMIC, align 4
  %86 = call i32 @cfg80211_remain_on_channel_expired(i32* %82, i64 %83, %struct.ieee80211_channel* %84, i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %50, %22
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, ...) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i64) #1

declare dso_local i32 @cfg80211_remain_on_channel_expired(i32*, i64, %struct.ieee80211_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
