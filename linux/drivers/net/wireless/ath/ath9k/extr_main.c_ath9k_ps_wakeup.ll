; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ps_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ps_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ath_common = type { i32, i32, i32 }

@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_ps_wakeup(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_3__* %8)
  store %struct.ath_common* %9, %struct.ath_common** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 3
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %33 = call i32 @ath9k_hw_setpower(%struct.TYPE_3__* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %20
  %38 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %39 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %42 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %41)
  %43 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %44 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %43, i32 0, i32 2
  %45 = call i32 @memset(i32* %44, i32 0, i32 4)
  %46 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %47 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %46, i32 0, i32 1
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %50 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %37, %20
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_hw_setpower(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
