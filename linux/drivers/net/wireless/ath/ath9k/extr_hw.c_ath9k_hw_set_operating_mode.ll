; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_operating_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_operating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_STA_ID1_STA_AP = common dso_local global i32 0, align 4
@AR_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR_STA_ID1_KSRCH_MODE = common dso_local global i32 0, align 4
@AR_CFG = common dso_local global i32 0, align 4
@AR_CFG_AP_ADHOC_INDICATION = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ath9k_hw_set_operating_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_operating_mode(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %8 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @AR_STA_ID1_KSRCH_MODE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %36 [
    i32 132, label %14
    i32 129, label %27
    i32 130, label %27
    i32 131, label %27
    i32 128, label %31
  ]

14:                                               ; preds = %2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call i32 @AR_SREV_9340_13(%struct.ath_hw* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @AR_CFG, align 4
  %24 = load i32, i32* @AR_CFG_AP_ADHOC_INDICATION, align 4
  %25 = call i32 @REG_SET_BIT(%struct.ath_hw* %22, i32 %23, i32 %24)
  br label %43

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %2, %2, %2, %26
  %28 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %2, %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_CFG, align 4
  %34 = load i32, i32* @AR_CFG_AP_ADHOC_INDICATION, align 4
  %35 = call i32 @REG_CLR_BIT(%struct.ath_hw* %32, i32 %33, i32 %34)
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %36
  br label %43

43:                                               ; preds = %42, %31, %18
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_STA_ID1, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @REG_RMW(%struct.ath_hw* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %49)
  ret void
}

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340_13(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
