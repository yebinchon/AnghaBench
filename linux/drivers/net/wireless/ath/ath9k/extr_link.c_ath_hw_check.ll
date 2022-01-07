; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_hw_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_hw_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_common = type { i32 }

@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HW hang detected, schedule chip reset\0A\00", align 1
@RESET_TYPE_MAC_HANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hw_check(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ath_common* @ath9k_hw_common(i32 %8)
  store %struct.ath_common* %9, %struct.ath_common** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ath9k_hw_check_alive(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %20 = load i32, i32* @RESET, align 4
  %21 = call i32 @ath_dbg(%struct.ath_common* %19, i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @RESET_TYPE_MAC_HANG, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ath9k_queue_reset(%struct.ath_softc* %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = call i32 @ath9k_ps_restore(%struct.ath_softc* %27)
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_check_alive(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
