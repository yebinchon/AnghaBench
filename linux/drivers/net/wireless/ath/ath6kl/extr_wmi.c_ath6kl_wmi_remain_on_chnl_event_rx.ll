; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_remain_on_chnl_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_remain_on_chnl_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32, i32 }
%struct.wmi_remain_on_chnl_event = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"remain_on_chnl: freq=%u dur=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"remain_on_chnl: Unknown channel (freq=%u)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_remain_on_chnl_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_remain_on_chnl_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_remain_on_chnl_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca %struct.ath6kl*, align 8
  %15 = alloca i32, align 4
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
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %64

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.wmi_remain_on_chnl_event*
  store %struct.wmi_remain_on_chnl_event* %27, %struct.wmi_remain_on_chnl_event** %10, align 8
  %28 = load %struct.wmi_remain_on_chnl_event*, %struct.wmi_remain_on_chnl_event** %10, align 8
  %29 = getelementptr inbounds %struct.wmi_remain_on_chnl_event, %struct.wmi_remain_on_chnl_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.wmi_remain_on_chnl_event*, %struct.wmi_remain_on_chnl_event** %10, align 8
  %33 = getelementptr inbounds %struct.wmi_remain_on_chnl_event, %struct.wmi_remain_on_chnl_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.ath6kl*, %struct.ath6kl** %14, align 8
  %41 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %42, i32 %43)
  store %struct.ieee80211_channel* %44, %struct.ieee80211_channel** %13, align 8
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %46 = icmp ne %struct.ieee80211_channel* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %25
  %48 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %64

53:                                               ; preds = %25
  %54 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %55 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  %57 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %58 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @cfg80211_ready_on_channel(i32* %58, i32 %59, %struct.ieee80211_channel* %60, i32 %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %53, %47, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i32 @cfg80211_ready_on_channel(i32*, i32, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
