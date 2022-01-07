; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_tx_complete_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_tx_complete_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.ath_txq** }
%struct.ath_txq = type { i32, i64 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"tx hung, resetting the chip\0A\00", align 1
@RESET_TYPE_TX_HANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_tx_complete_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_tx_complete_check(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_txq*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %48, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ath_txq**, %struct.ath_txq*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %20, i64 %22
  %24 = load %struct.ath_txq*, %struct.ath_txq** %23, align 8
  store %struct.ath_txq* %24, %struct.ath_txq** %4, align 8
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %27 = call i32 @ath_txq_lock(%struct.ath_softc* %25, %struct.ath_txq* %26)
  %28 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %29 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %16
  %33 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %34 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %40 = call i32 @ath_txq_unlock(%struct.ath_softc* %38, %struct.ath_txq* %39)
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %43 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %16
  %45 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %46 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %47 = call i32 @ath_txq_unlock(%struct.ath_softc* %45, %struct.ath_txq* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %12

51:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %62

52:                                               ; preds = %37
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath9k_hw_common(i32 %55)
  %57 = load i32, i32* @RESET, align 4
  %58 = call i32 @ath_dbg(i32 %56, i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %60 = load i32, i32* @RESET_TYPE_TX_HANG, align 4
  %61 = call i32 @ath9k_queue_reset(%struct.ath_softc* %59, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %52, %51, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ath_txq_lock(%struct.ath_softc*, %struct.ath_txq*) #1

declare dso_local i32 @ath_txq_unlock(%struct.ath_softc*, %struct.ath_txq*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
