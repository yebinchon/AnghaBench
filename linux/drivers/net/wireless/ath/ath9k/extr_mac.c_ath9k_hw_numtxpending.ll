; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_numtxpending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_numtxpending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_Q_STS_PEND_FR_CNT = common dso_local global i32 0, align 4
@AR_Q_TXE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_numtxpending(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @AR_QSTS(i32 %7)
  %9 = call i32 @REG_READ(%struct.ath_hw* %6, i32 %8)
  %10 = load i32, i32* @AR_Q_STS_PEND_FR_CNT, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load i32, i32* @AR_Q_TXE, align 4
  %17 = call i32 @REG_READ(%struct.ath_hw* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_QSTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
