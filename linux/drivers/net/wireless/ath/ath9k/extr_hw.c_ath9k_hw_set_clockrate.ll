; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_clockrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_clockrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, %struct.ath9k_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_CLOCK_RATE_CCK = common dso_local global i32 0, align 4
@ATH9K_CLOCK_RATE_2GHZ_OFDM = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_FASTCLOCK = common dso_local global i32 0, align 4
@ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM = common dso_local global i32 0, align 4
@ATH9K_CLOCK_RATE_5GHZ_OFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_set_clockrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_clockrate(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 1
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  store %struct.ath9k_channel* %10, %struct.ath9k_channel** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i64 @AR_SREV_9287(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 117, i32* %5, align 4
  br label %45

19:                                               ; preds = %14, %1
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %21 = icmp ne %struct.ath9k_channel* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ATH9K_CLOCK_RATE_CCK, align 4
  store i32 %23, i32* %5, align 4
  br label %44

24:                                               ; preds = %19
  %25 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %26 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ATH9K_CLOCK_RATE_2GHZ_OFDM, align 4
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %24
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATH9K_HW_CAP_FASTCLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @ATH9K_CLOCK_RATE_5GHZ_OFDM, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %47 = icmp ne %struct.ath9k_channel* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %50 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = mul i32 %53, 2
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %57 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = udiv i32 %60, 2
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %64 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = udiv i32 %67, 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %73 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
