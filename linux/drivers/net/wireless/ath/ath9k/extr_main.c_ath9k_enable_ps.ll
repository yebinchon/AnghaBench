; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_enable_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_enable_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@ATH9K_INT_TIM_TIMER = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PowerSave enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_enable_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_enable_ps(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 1
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
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %14
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATH9K_INT_TIM_TIMER, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @ATH9K_INT_TIM_TIMER, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %37)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = call i32 @ath9k_hw_setrxabort(%struct.ath_hw* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %14
  %43 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %44 = load i32, i32* @PS, align 4
  %45 = call i32 @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %13
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setrxabort(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
