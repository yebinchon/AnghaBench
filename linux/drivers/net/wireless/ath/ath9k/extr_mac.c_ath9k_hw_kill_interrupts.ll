; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_kill_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_kill_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"disable IER\0A\00", align 1
@AR_IER = common dso_local global i32 0, align 4
@AR_IER_DISABLE = common dso_local global i32 0, align 4
@AR_INTR_ASYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_kill_interrupts(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %7 = load i32, i32* @INTERRUPT, align 4
  %8 = call i32 @ath_dbg(%struct.ath_common* %6, i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = load i32, i32* @AR_IER, align 4
  %11 = load i32, i32* @AR_IER_DISABLE, align 4
  %12 = call i32 @REG_WRITE(%struct.ath_hw* %9, i32 %10, i32 %11)
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = load i32, i32* @AR_IER, align 4
  %15 = call i32 @REG_READ(%struct.ath_hw* %13, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = call i32 @AR_SREV_9100(%struct.ath_hw* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_INTR_ASYNC_ENABLE, align 4
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 0)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_INTR_ASYNC_ENABLE, align 4
  %25 = call i32 @REG_READ(%struct.ath_hw* %23, i32 %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %28 = call i32 @REG_WRITE(%struct.ath_hw* %26, i32 %27, i32 0)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %31 = call i32 @REG_READ(%struct.ath_hw* %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
