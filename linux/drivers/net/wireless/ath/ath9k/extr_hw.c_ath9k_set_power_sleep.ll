; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_set_power_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_set_power_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_NDP2_TIMER_MODE = common dso_local global i32 0, align 4
@AR_SLP32_INC = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@AR_RC_AHB = common dso_local global i32 0, align 4
@AR_RC_HOSTIF = common dso_local global i32 0, align 4
@AR_RTC_RESET = common dso_local global i32 0, align 4
@AR_RTC_RESET_EN = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_set_power_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_power_sleep(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = load i32, i32* @AR_STA_ID1, align 4
  %5 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %6 = call i32 @REG_SET_BIT(%struct.ath_hw* %3, i32 %4, i32 %5)
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call i64 @AR_SREV_9462(%struct.ath_hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i64 @AR_SREV_9565(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10, %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_TIMER_MODE, align 4
  %17 = call i32 @REG_CLR_BIT(%struct.ath_hw* %15, i32 %16, i32 255)
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = load i32, i32* @AR_NDP2_TIMER_MODE, align 4
  %20 = call i32 @REG_CLR_BIT(%struct.ath_hw* %18, i32 %19, i32 255)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load i32, i32* @AR_SLP32_INC, align 4
  %23 = call i32 @REG_CLR_BIT(%struct.ath_hw* %21, i32 %22, i32 1048575)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_EN, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 %25, i32 0)
  %27 = call i32 @udelay(i32 100)
  br label %28

28:                                               ; preds = %14, %10
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %31 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %32 = call i32 @REG_CLR_BIT(%struct.ath_hw* %29, i32 %30, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @udelay(i32 100)
  br label %38

38:                                               ; preds = %36, %28
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i32 @AR_SREV_9100(%struct.ath_hw* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = load i32, i32* @AR_RC, align 4
  %49 = load i32, i32* @AR_RC_AHB, align 4
  %50 = load i32, i32* @AR_RC_HOSTIF, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @REG_WRITE(%struct.ath_hw* %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %42, %38
  %54 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %55 = call i32 @AR_SREV_5416(%struct.ath_hw* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %59 = call i32 @AR_SREV_9271(%struct.ath_hw* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = load i32, i32* @AR_RTC_RESET, align 4
  %64 = load i32, i32* @AR_RTC_RESET_EN, align 4
  %65 = call i32 @REG_CLR_BIT(%struct.ath_hw* %62, i32 %63, i32 %64)
  %66 = call i32 @udelay(i32 2)
  br label %67

67:                                               ; preds = %61, %57, %53
  %68 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %69 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %73 = load i32, i32* @AR_WA, align 4
  %74 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @REG_WRITE(%struct.ath_hw* %72, i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %71, %67
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_5416(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
