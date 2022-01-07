; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_init_rate_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_init_rate_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR9300_11NA_OFDM_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NA_HT_SS_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NA_HT_DS_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NA_HT_TS_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NG_OFDM_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NG_HT_SS_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NG_HT_DS_SHIFT = common dso_local global i32 0, align 4
@AR9300_11NG_HT_TS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_init_rate_txpower(%struct.ath_hw* %0, i32* %1, %struct.ath9k_channel* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ath9k_channel* %2, %struct.ath9k_channel** %6, align 8
  %7 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %8 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @AR9300_11NA_OFDM_SHIFT, align 4
  %14 = call i32 @ar9003_hw_init_txpower_ofdm(%struct.ath_hw* %11, i32* %12, i32 %13)
  %15 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %16 = call i64 @IS_CHAN_HT20(%struct.ath9k_channel* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %20 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18, %10
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @AR9300_11NA_HT_SS_SHIFT, align 4
  %26 = load i32, i32* @AR9300_11NA_HT_DS_SHIFT, align 4
  %27 = load i32, i32* @AR9300_11NA_HT_TS_SHIFT, align 4
  %28 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %29 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %28)
  %30 = call i32 @ar9003_hw_init_txpower_ht(%struct.ath_hw* %23, i32* %24, i32 %25, i32 %26, i32 %27, i64 %29)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %32 = load i32, i32* @AR9300_11NA_HT_SS_SHIFT, align 4
  %33 = load i32, i32* @AR9300_11NA_HT_DS_SHIFT, align 4
  %34 = load i32, i32* @AR9300_11NA_HT_TS_SHIFT, align 4
  %35 = call i32 @ar9003_hw_init_txpower_stbc(%struct.ath_hw* %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %22, %18
  br label %67

37:                                               ; preds = %3
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ar9003_hw_init_txpower_cck(%struct.ath_hw* %38, i32* %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @AR9300_11NG_OFDM_SHIFT, align 4
  %44 = call i32 @ar9003_hw_init_txpower_ofdm(%struct.ath_hw* %41, i32* %42, i32 %43)
  %45 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %46 = call i64 @IS_CHAN_HT20(%struct.ath9k_channel* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %50 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48, %37
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @AR9300_11NG_HT_SS_SHIFT, align 4
  %56 = load i32, i32* @AR9300_11NG_HT_DS_SHIFT, align 4
  %57 = load i32, i32* @AR9300_11NG_HT_TS_SHIFT, align 4
  %58 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %59 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %58)
  %60 = call i32 @ar9003_hw_init_txpower_ht(%struct.ath_hw* %53, i32* %54, i32 %55, i32 %56, i32 %57, i64 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %62 = load i32, i32* @AR9300_11NG_HT_SS_SHIFT, align 4
  %63 = load i32, i32* @AR9300_11NG_HT_DS_SHIFT, align 4
  %64 = load i32, i32* @AR9300_11NG_HT_TS_SHIFT, align 4
  %65 = call i32 @ar9003_hw_init_txpower_stbc(%struct.ath_hw* %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %52, %48
  br label %67

67:                                               ; preds = %66, %36
  ret void
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_init_txpower_ofdm(%struct.ath_hw*, i32*, i32) #1

declare dso_local i64 @IS_CHAN_HT20(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_init_txpower_ht(%struct.ath_hw*, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @ar9003_hw_init_txpower_stbc(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ar9003_hw_init_txpower_cck(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
