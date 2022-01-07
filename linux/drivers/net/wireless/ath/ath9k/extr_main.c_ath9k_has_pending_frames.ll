; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_has_pending_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_has_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath_acq* }
%struct.ath_acq = type { i32, i32 }
%struct.ath_txq = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath_txq*, i32)* @ath9k_has_pending_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_has_pending_frames(%struct.ath_softc* %0, %struct.ath_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_acq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %10 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %13 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %48

21:                                               ; preds = %17
  %22 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %23 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ath_acq*, %struct.ath_acq** %30, align 8
  %32 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %33 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ath_acq, %struct.ath_acq* %31, i64 %34
  store %struct.ath_acq* %35, %struct.ath_acq** %8, align 8
  %36 = load %struct.ath_acq*, %struct.ath_acq** %8, align 8
  %37 = getelementptr inbounds %struct.ath_acq, %struct.ath_acq* %36, i32 0, i32 1
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.ath_acq*, %struct.ath_acq** %8, align 8
  %42 = getelementptr inbounds %struct.ath_acq, %struct.ath_acq* %41, i32 0, i32 0
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %26
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %20, %16
  %49 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %50 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
