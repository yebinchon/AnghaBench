; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_channel.c_ath_chanctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_channel.c_ath_chanctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_chanctx*, i32 }
%struct.ath_chanctx = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ath_common = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { %struct.ieee80211_channel*, i32 }
%struct.ieee80211_channel = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ATH9K_NUM_CHANCTX = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@ATH_TXPOWER_MAX = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_chanctx_init(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_chanctx*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %4, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %16 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %15, i64 %16
  store %struct.ieee80211_supported_band* %17, %struct.ieee80211_supported_band** %5, align 8
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %24 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, align 8
  %26 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i64 %26
  store %struct.ieee80211_supported_band* %27, %struct.ieee80211_supported_band** %5, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i64 0
  store %struct.ieee80211_channel* %32, %struct.ieee80211_channel** %6, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %95, %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ATH9K_NUM_CHANCTX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 0
  %40 = load %struct.ath_chanctx*, %struct.ath_chanctx** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %40, i64 %42
  store %struct.ath_chanctx* %43, %struct.ath_chanctx** %3, align 8
  %44 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %45 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %44, i32 0, i32 4
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %47 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %48 = call i32 @cfg80211_chandef_create(i32* %45, %struct.ieee80211_channel* %46, i32 %47)
  %49 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %50 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %49, i32 0, i32 3
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load i32, i32* @ATH_TXPOWER_MAX, align 4
  %53 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %54 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @HZ, align 4
  %56 = sdiv i32 %55, 5
  %57 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %58 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %91, %37
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %62 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %63)
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %59
  %67 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %68 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %76 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.ath_chanctx*, %struct.ath_chanctx** %3, align 8
  %84 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @spin_lock_init(i32* %89)
  br label %91

91:                                               ; preds = %66
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %59

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %33

98:                                               ; preds = %33
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @cfg80211_chandef_create(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
