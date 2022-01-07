; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_bb_watchdog_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_bb_watchdog_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR9300_DFS_FIRPWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_hw_bb_watchdog_check(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %57 [
    i32 67110201, label %8
    i32 318767114, label %41
    i32 67108874, label %42
    i32 67111689, label %42
    i32 67109897, label %43
  ]

8:                                                ; preds = %1
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %11 = call i32 @REG_READ(%struct.ath_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %17 = call i32 @SM(i32 127, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 %22)
  %24 = call i32 @udelay(i32 1)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %27 = call i32 @REG_READ(%struct.ath_hw* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @AR9300_DFS_FIRPWR, align 4
  %33 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %34 = call i32 @SM(i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @REG_WRITE(%struct.ath_hw* %37, i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %58

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

42:                                               ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %58

43:                                               ; preds = %1
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = call i32 @AR_SREV_9340(%struct.ath_hw* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = call i32 @AR_SREV_9531(%struct.ath_hw* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = call i32 @AR_SREV_9561(%struct.ath_hw* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %43
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %58

57:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %55, %42, %41, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9561(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
