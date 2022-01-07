; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9550_hw_get_modes_txgain_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9550_hw_get_modes_txgain_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9550_hw_get_modes_txgain_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9550_hw_get_modes_txgain_index(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %8 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %12 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 7, i32* %3, align 4
  br label %44

15:                                               ; preds = %10
  store i32 8, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 5350
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 5350
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %29 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 5600
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 3, i32* %6, align 4
  br label %34

33:                                               ; preds = %27, %22
  store i32 5, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %37 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %15, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
