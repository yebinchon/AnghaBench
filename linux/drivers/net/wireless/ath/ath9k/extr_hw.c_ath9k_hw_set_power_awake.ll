; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_power_awake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_power_awake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_WA = common dso_local global i32 0, align 4
@AR_RTC_STATUS = common dso_local global i32 0, align 4
@AR_RTC_STATUS_M = common dso_local global i32 0, align 4
@AR_RTC_STATUS_SHUTDOWN = common dso_local global i32 0, align 4
@ATH9K_RESET_POWER_ON = common dso_local global i32 0, align 4
@AR_RTC_RESET = common dso_local global i32 0, align 4
@AR_RTC_RESET_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@POWER_UP_TIME = common dso_local global i32 0, align 4
@AR_RTC_STATUS_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to wakeup in %uus\0A\00", align 1
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_set_power_awake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_set_power_awake(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
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
  %19 = load i32, i32* @AR_RTC_STATUS, align 4
  %20 = call i32 @REG_READ(%struct.ath_hw* %18, i32 %19)
  %21 = load i32, i32* @AR_RTC_STATUS_M, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @AR_RTC_STATUS_SHUTDOWN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i32, i32* @ATH9K_RESET_POWER_ON, align 4
  %28 = call i32 @ath9k_hw_set_reset_reg(%struct.ath_hw* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = call i32 @ath9k_hw_init_pll(%struct.ath_hw* %36, i32* null)
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = call i64 @AR_SREV_9100(%struct.ath_hw* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_RTC_RESET, align 4
  %46 = load i32, i32* @AR_RTC_RESET_EN, align 4
  %47 = call i32 @REG_SET_BIT(%struct.ath_hw* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %51 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %52 = call i32 @REG_SET_BIT(%struct.ath_hw* %49, i32 %50, i32 %51)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = call i64 @AR_SREV_9100(%struct.ath_hw* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 @mdelay(i32 10)
  br label %60

58:                                               ; preds = %48
  %59 = call i32 @udelay(i32 50)
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, i32* @POWER_UP_TIME, align 4
  %62 = sdiv i32 %61, 50
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %82, %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = load i32, i32* @AR_RTC_STATUS, align 4
  %69 = call i32 @REG_READ(%struct.ath_hw* %67, i32 %68)
  %70 = load i32, i32* @AR_RTC_STATUS_M, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @AR_RTC_STATUS_ON, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %85

76:                                               ; preds = %66
  %77 = call i32 @udelay(i32 50)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %80 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %81 = call i32 @REG_SET_BIT(%struct.ath_hw* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %63

85:                                               ; preds = %75, %63
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = call i32 @ath9k_hw_common(%struct.ath_hw* %89)
  %91 = load i32, i32* @POWER_UP_TIME, align 4
  %92 = sdiv i32 %91, 20
  %93 = call i32 @ath_err(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 0, i32* %2, align 4
  br label %106

94:                                               ; preds = %85
  %95 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %96 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %100 = call i32 @ar9003_mci_set_power_awake(%struct.ath_hw* %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = load i32, i32* @AR_STA_ID1, align 4
  %104 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %105 = call i32 @REG_CLR_BIT(%struct.ath_hw* %102, i32 %103, i32 %104)
  store i32 1, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %88, %30
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_reset_reg(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_init_pll(%struct.ath_hw*, i32*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_set_power_awake(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
