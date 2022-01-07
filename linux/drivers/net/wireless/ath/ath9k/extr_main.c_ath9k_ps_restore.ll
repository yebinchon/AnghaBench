; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ps_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ps_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, i32, i32, i32, i64, i32, i64 }
%struct.ath_common = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@PS_WAIT_FOR_PSPOLL_DATA = common dso_local global i32 0, align 4
@PS_WAIT_FOR_TX_ACK = common dso_local global i32 0, align 4
@PS_WAIT_FOR_ANI = common dso_local global i32 0, align 4
@ATH9K_PM_NETWORK_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_ps_restore(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(i32 %8)
  store %struct.ath_common* %9, %struct.ath_common** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 5
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 10
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @mod_timer(i32* %27, i64 %32)
  br label %80

34:                                               ; preds = %20
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %44 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PS_WAIT_FOR_TX_ACK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PS_WAIT_FOR_ANI, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %42, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @ATH9K_PM_NETWORK_SLEEP, align 4
  store i32 %55, i32* %4, align 4
  %56 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ath9k_hw_btcoex_is_enabled(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %63 = call i32 @ath9k_btcoex_stop_gen_timer(%struct.ath_softc* %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %66

65:                                               ; preds = %39, %34
  br label %80

66:                                               ; preds = %64
  %67 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %68 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %71 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %70)
  %72 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %73 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ath9k_hw_setpower(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %65, %25, %19
  %81 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @ath9k_hw_btcoex_is_enabled(i32) #1

declare dso_local i32 @ath9k_btcoex_stop_gen_timer(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ath9k_hw_setpower(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
