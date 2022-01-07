; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_reset_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_reset_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_WA = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@AR_RC_AHB = common dso_local global i32 0, align 4
@AR_RTC_RESET = common dso_local global i32 0, align 4
@AR_RTC_STATUS = common dso_local global i32 0, align 4
@AR_RTC_STATUS_M = common dso_local global i32 0, align 4
@AR_RTC_STATUS_ON = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RTC not waking up\0A\00", align 1
@ATH9K_RESET_WARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_set_reset_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_set_reset_power_on(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %5 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %4)
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i32, i32* @AR_WA, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @REG_WRITE(%struct.ath_hw* %10, i32 %11, i32 %14)
  %16 = call i32 @udelay(i32 10)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %20 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %21 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %18, i32 %19, i32 %22)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = call i32 @AR_SREV_9100(%struct.ath_hw* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_RC, align 4
  %34 = load i32, i32* @AR_RC_AHB, align 4
  %35 = call i32 @REG_WRITE(%struct.ath_hw* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %27, %17
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* @AR_RTC_RESET, align 4
  %39 = call i32 @REG_WRITE(%struct.ath_hw* %37, i32 %38, i32 0)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %40)
  %42 = call i32 @udelay(i32 2)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = call i32 @AR_SREV_9100(%struct.ath_hw* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %36
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_RC, align 4
  %53 = call i32 @REG_WRITE(%struct.ath_hw* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %46, %36
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = load i32, i32* @AR_RTC_RESET, align 4
  %57 = call i32 @REG_WRITE(%struct.ath_hw* %55, i32 %56, i32 1)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* @AR_RTC_STATUS, align 4
  %60 = load i32, i32* @AR_RTC_STATUS_M, align 4
  %61 = load i32, i32* @AR_RTC_STATUS_ON, align 4
  %62 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %63 = call i32 @ath9k_hw_wait(%struct.ath_hw* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = call i32 @ath9k_hw_common(%struct.ath_hw* %66)
  %68 = load i32, i32* @RESET, align 4
  %69 = call i32 @ath_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %54
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = load i32, i32* @ATH9K_RESET_WARM, align 4
  %73 = call i32 @ath9k_hw_set_reset(%struct.ath_hw* %71, i32 %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_reset(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
