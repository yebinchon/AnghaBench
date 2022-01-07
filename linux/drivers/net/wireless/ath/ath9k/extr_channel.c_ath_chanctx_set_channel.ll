; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_channel.c_ath_chanctx_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_channel.c_ath_chanctx_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_chanctx*, i32 }
%struct.ath_chanctx = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ath_common = type { i32 }

@CHAN_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Current context differs from the new context\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_chanctx_set_channel(%struct.ath_softc* %0, %struct.ath_chanctx* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_chanctx*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_chanctx* %1, %struct.ath_chanctx** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %7, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %17 = icmp ne %struct.cfg80211_chan_def* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ath_chanctx*, %struct.ath_chanctx** %5, align 8
  %20 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %19, i32 0, i32 0
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.cfg80211_chan_def* %21, i32 4)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 1
  %26 = load %struct.ath_chanctx*, %struct.ath_chanctx** %25, align 8
  %27 = load %struct.ath_chanctx*, %struct.ath_chanctx** %5, align 8
  %28 = icmp eq %struct.ath_chanctx* %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %37 = load i32, i32* @CHAN_CTX, align 4
  %38 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = call i32 @ath_set_channel(%struct.ath_softc* %40)
  br label %42

42:                                               ; preds = %39, %35
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath_set_channel(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
