; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_get_chan_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_get_chan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_channel_band = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@SEC_CHAN_ABOVE = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_chan_type(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_channel_band, align 4
  %5 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %7 = call i32 @mwifiex_get_chan_info(%struct.mwifiex_private* %6, %struct.mwifiex_channel_band* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mwifiex_channel_band, %struct.mwifiex_channel_band* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %32 [
    i32 129, label %14
    i32 128, label %22
  ]

14:                                               ; preds = %10
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %16 = call i32 @IS_11N_ENABLED(%struct.mwifiex_private* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @NL80211_CHAN_HT20, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.mwifiex_channel_band, %struct.mwifiex_channel_band* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SEC_CHAN_ABOVE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %10
  %33 = load i32, i32* @NL80211_CHAN_HT20, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @NL80211_CHAN_HT20, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %30, %28, %20, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @mwifiex_get_chan_info(%struct.mwifiex_private*, %struct.mwifiex_channel_band*) #1

declare dso_local i32 @IS_11N_ENABLED(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
