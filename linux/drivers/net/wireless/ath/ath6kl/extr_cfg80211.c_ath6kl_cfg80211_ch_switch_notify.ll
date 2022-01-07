; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_ch_switch_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_ch_switch_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ath6kl_vif = type { %struct.TYPE_5__, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"channel switch notify nw_type %d freq %d mode %d\0A\00", align 1
@WMI_11G_HT20 = common dso_local global i32 0, align 4
@ath6kl_band_2ghz = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_cfg80211_ch_switch_notify(%struct.ath6kl_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_chan_def, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %9 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ath6kl_dbg(i32 %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ieee80211_get_channel(i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WMI_11G_HT20, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ath6kl_band_2ghz, i32 0, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @NL80211_CHAN_HT20, align 4
  br label %32

30:                                               ; preds = %25, %3
  %31 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %7, i32 %21, i32 %33)
  %35 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %36 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %40 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cfg80211_ch_switch_notify(i32 %41, %struct.cfg80211_chan_def* %7)
  %43 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %44 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @ieee80211_get_channel(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_ch_switch_notify(i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
