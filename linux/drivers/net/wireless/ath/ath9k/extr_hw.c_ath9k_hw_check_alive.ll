; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_check_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_check_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_CFG = common dso_local global i32 0, align 4
@AR_OBS_BUS_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_check_alive(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 50, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = load i32, i32* @AR_CFG, align 4
  %9 = call i32 @REG_READ(%struct.ath_hw* %7, i32 %8)
  %10 = icmp eq i32 %9, -559038737
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call i64 @AR_SREV_9300(%struct.ath_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i32 @ath9k_hw_detect_mac_hang(%struct.ath_hw* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %12
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %56

27:                                               ; preds = %22
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load i32, i32* @AR_OBS_BUS_1, align 4
  %30 = call i32 @REG_READ(%struct.ath_hw* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_OBS_BUS_1, align 4
  %34 = call i32 @REG_READ(%struct.ath_hw* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %56

39:                                               ; preds = %31
  %40 = call i32 @udelay(i32 1)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 2122317807
  %44 = icmp eq i32 %43, 7349248
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 2113932032
  switch i32 %48, label %50 [
    i32 503316480, label %49
    i32 1375734528, label %49
    i32 402656000, label %49
  ]

49:                                               ; preds = %46, %46, %46
  br label %51

50:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %56

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %31, label %55

55:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %38, %26, %16, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_detect_mac_hang(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
