; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_setrxabort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_setrxabort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_OBS_BUS_1 = common dso_local global i32 0, align 4
@AR_OBS_BUS_1_RX_STATE = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RX failed to go idle in 10 ms RXSM=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_setrxabort(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = load i32, i32* @AR_DIAG_SW, align 4
  %12 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %13 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @REG_SET_BIT(%struct.ath_hw* %10, i32 %11, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = load i32, i32* @AR_OBS_BUS_1, align 4
  %18 = load i32, i32* @AR_OBS_BUS_1_RX_STATE, align 4
  %19 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %20 = call i32 @ath9k_hw_wait(%struct.ath_hw* %16, i32 %17, i32 %18, i32 0, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %9
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = load i32, i32* @AR_DIAG_SW, align 4
  %25 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %26 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @REG_CLR_BIT(%struct.ath_hw* %23, i32 %24, i32 %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = load i32, i32* @AR_OBS_BUS_1, align 4
  %31 = call i32 @REG_READ(%struct.ath_hw* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = call i32 @ath9k_hw_common(%struct.ath_hw* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ath_err(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %3, align 4
  br label %45

36:                                               ; preds = %9
  br label %44

37:                                               ; preds = %2
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32, i32* @AR_DIAG_SW, align 4
  %40 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %41 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @REG_CLR_BIT(%struct.ath_hw* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %36
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
