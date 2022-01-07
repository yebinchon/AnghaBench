; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_set_powermode_wow_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_set_powermode_wow_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXD = common dso_local global i32 0, align 4
@AR_CR_RXE = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Failed to stop Rx DMA in 10ms AR_CR=0x%08x AR_DIAG_SW=0x%08x\0A\00", align 1
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_MAC_PCU_GEN_TIMER_TSF_SEL = common dso_local global i32 0, align 4
@AR_DIRECT_CONNECT = common dso_local global i32 0, align 4
@AR_DC_TSF2_ENABLE = common dso_local global i32 0, align 4
@AR_NDP2_TIMER_MODE = common dso_local global i32 0, align 4
@AR_GEN_TIMERS2_MODE_ENABLE_MASK = common dso_local global i32 0, align 4
@AR_RTC_KEEP_AWAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_set_powermode_wow_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_powermode_wow_sleep(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call i32 @ath9k_hw_set_sta_powersave(%struct.ath_hw* %6)
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i32, i32* @AR_CR, align 4
  %10 = load i32, i32* @AR_CR_RXD, align 4
  %11 = call i32 @REG_WRITE(%struct.ath_hw* %8, i32 %9, i32 %10)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = load i32, i32* @AR_CR, align 4
  %14 = load i32, i32* @AR_CR_RXE, align 4
  %15 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %16 = call i32 @ath9k_hw_wait(%struct.ath_hw* %12, i32 %13, i32 %14, i32 0, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_CR, align 4
  %22 = call i32 @REG_READ(%struct.ath_hw* %20, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_DIAG_SW, align 4
  %25 = call i32 @REG_READ(%struct.ath_hw* %23, i32 %24)
  %26 = call i32 @ath_err(%struct.ath_common* %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %77

27:                                               ; preds = %1
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = call i64 @AR_SREV_9462(%struct.ath_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = call i64 @AR_SREV_9565(%struct.ath_hw* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31, %27
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %38 = call i32 @REG_READ(%struct.ath_hw* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = load i32, i32* @AR_DIRECT_CONNECT, align 4
  %43 = load i32, i32* @AR_DC_TSF2_ENABLE, align 4
  %44 = call i32 @REG_CLR_BIT(%struct.ath_hw* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %64

46:                                               ; preds = %31
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = call i64 @AR_SREV_9485(%struct.ath_hw* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %52 = load i32, i32* @AR_NDP2_TIMER_MODE, align 4
  %53 = call i32 @REG_READ(%struct.ath_hw* %51, i32 %52)
  %54 = load i32, i32* @AR_GEN_TIMERS2_MODE_ENABLE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %59 = load i32, i32* @AR_DIRECT_CONNECT, align 4
  %60 = load i32, i32* @AR_DC_TSF2_ENABLE, align 4
  %61 = call i32 @REG_CLR_BIT(%struct.ath_hw* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = load i32, i32* @AR_RTC_KEEP_AWAKE, align 4
  %71 = call i32 @REG_WRITE(%struct.ath_hw* %69, i32 %70, i32 2)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %75 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %18
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_sta_powersave(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
