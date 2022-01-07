; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_set_chanspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_set_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_10__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.txpwr_limits = type { i32 }

@IEEE80211_CHAN_NO_OFDM = common dso_local global i32 0, align 4
@GMODE_LEGACY_B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_channel_set_chanspec(%struct.brcms_cm_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_cm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcms_c_info*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.txpwr_limits, align 4
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %10, i32 0, i32 0
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %11, align 8
  store %struct.brcms_c_info* %12, %struct.brcms_c_info** %7, align 8
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %14 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  store %struct.ieee80211_channel* %21, %struct.ieee80211_channel** %8, align 8
  %22 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @brcms_c_channel_reg_limits(%struct.brcms_cm_info* %22, i32 %23, %struct.txpwr_limits* %9)
  %25 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @brcms_c_channel_min_txpower_limits_with_local_constraint(%struct.brcms_cm_info* %25, %struct.txpwr_limits* %9, i32 %26)
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_CHAN_NO_OFDM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %36 = load i32, i32* @GMODE_LEGACY_B, align 4
  %37 = call i32 @brcms_c_set_gmode(%struct.brcms_c_info* %35, i32 %36, i32 0)
  br label %46

38:                                               ; preds = %3
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @brcms_c_set_gmode(%struct.brcms_c_info* %39, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %38, %34
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @brcms_b_set_chanspec(i32 %49, i32 %50, i32 %59, %struct.txpwr_limits* %9)
  ret void
}

declare dso_local i32 @brcms_c_channel_reg_limits(%struct.brcms_cm_info*, i32, %struct.txpwr_limits*) #1

declare dso_local i32 @brcms_c_channel_min_txpower_limits_with_local_constraint(%struct.brcms_cm_info*, %struct.txpwr_limits*, i32) #1

declare dso_local i32 @brcms_c_set_gmode(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i32 @brcms_b_set_chanspec(i32, i32, i32, %struct.txpwr_limits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
