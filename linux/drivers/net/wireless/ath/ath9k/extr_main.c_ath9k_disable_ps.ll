; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_disable_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_disable_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@PS_WAIT_FOR_PSPOLL_DATA = common dso_local global i32 0, align 4
@PS_WAIT_FOR_TX_ACK = common dso_local global i32 0, align 4
@ATH9K_INT_TIM_TIMER = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PowerSave disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_disable_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_disable_ps(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 2
  %7 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  store %struct.ath_hw* %7, %struct.ath_hw** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  %10 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %19 = call i32 @ath9k_hw_setpower(%struct.ath_hw* %17, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %14
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i32 @ath9k_hw_setrxabort(%struct.ath_hw* %28, i32 0)
  %30 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %31 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PS_WAIT_FOR_TX_ACK, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATH9K_INT_TIM_TIMER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %27
  %49 = load i32, i32* @ATH9K_INT_TIM_TIMER, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %55)
  br label %57

57:                                               ; preds = %48, %27
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %60 = load i32, i32* @PS, align 4
  %61 = call i32 @ath_dbg(%struct.ath_common* %59, i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %13
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ath9k_hw_setpower(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_setrxabort(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
