; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_disable_phy_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_disable_phy_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@AR_PHY_WATCHDOG_RX_OFDM_SM = common dso_local global i32 0, align 4
@AR_PHY_RESTART = common dso_local global i32 0, align 4
@AR_PHY_RESTART_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_disable_phy_restart(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AR_PHY_WATCHDOG_RX_OFDM_SM, align 4
  %9 = call i32 @MS(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12, %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_PHY_RESTART, align 4
  %22 = call i32 @REG_READ(%struct.ath_hw* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @AR_PHY_RESTART_ENA, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_PHY_RESTART, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
