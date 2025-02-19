; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_rfmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_rfmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@AR_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF5GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF2GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYN_CCK_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_set_rfmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_set_rfmode(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %7 = icmp eq %struct.ath9k_channel* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %53

9:                                                ; preds = %2
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @AR_PHY_MODE_OFDM, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %27 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @AR_PHY_MODE_RF5GHZ, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @AR_PHY_MODE_RF2GHZ, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %40 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %38, %struct.ath9k_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %44 = load i32, i32* @AR_PHY_MODE_DYN_CCK_DISABLE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* @AR_PHY_MODE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @REG_WRITE(%struct.ath_hw* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %8
  ret void
}

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
