; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_init_rate_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_init_rate_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR5008_11NA_OFDM_SHIFT = common dso_local global i32 0, align 4
@AR5008_11NA_HT_SS_SHIFT = common dso_local global i32 0, align 4
@AR5008_11NA_HT_DS_SHIFT = common dso_local global i32 0, align 4
@AR5008_11NG_OFDM_SHIFT = common dso_local global i32 0, align 4
@AR5008_11NG_HT_SS_SHIFT = common dso_local global i32 0, align 4
@AR5008_11NG_HT_DS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5008_hw_init_rate_txpower(%struct.ath_hw* %0, i32* %1, %struct.ath9k_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ath9k_channel* %2, %struct.ath9k_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %10 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @AR5008_11NA_OFDM_SHIFT, align 4
  %16 = call i32 @ar5008_hw_init_txpower_ofdm(%struct.ath_hw* %13, i32* %14, i32 %15)
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %18 = call i64 @IS_CHAN_HT20(%struct.ath9k_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %22 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %12
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @AR5008_11NA_HT_SS_SHIFT, align 4
  %28 = load i32, i32* @AR5008_11NA_HT_DS_SHIFT, align 4
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %30 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ar5008_hw_init_txpower_ht(%struct.ath_hw* %25, i32* %26, i32 %27, i32 %28, i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %20
  br label %59

34:                                               ; preds = %4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ar5008_hw_init_txpower_cck(%struct.ath_hw* %35, i32* %36)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @AR5008_11NG_OFDM_SHIFT, align 4
  %41 = call i32 @ar5008_hw_init_txpower_ofdm(%struct.ath_hw* %38, i32* %39, i32 %40)
  %42 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %43 = call i64 @IS_CHAN_HT20(%struct.ath9k_channel* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %47 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45, %34
  %50 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @AR5008_11NG_HT_SS_SHIFT, align 4
  %53 = load i32, i32* @AR5008_11NG_HT_DS_SHIFT, align 4
  %54 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %55 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ar5008_hw_init_txpower_ht(%struct.ath_hw* %50, i32* %51, i32 %52, i32 %53, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %45
  br label %59

59:                                               ; preds = %58, %33
  ret void
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_init_txpower_ofdm(%struct.ath_hw*, i32*, i32) #1

declare dso_local i64 @IS_CHAN_HT20(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_init_txpower_ht(%struct.ath_hw*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @ar5008_hw_init_txpower_cck(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
