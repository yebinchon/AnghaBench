; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_rng.c_ath9k_rng_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_rng.c_ath9k_rng_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32*, %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@ath9k_rng_kthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ath9k-hwrng\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_rng_start(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %4, i32 0, i32 1
  %6 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  store %struct.ath_hw* %6, %struct.ath_hw** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %31

17:                                               ; preds = %12
  %18 = load i32, i32* @ath9k_rng_kthread, align 4
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = call i32* @kthread_run(i32 %18, %struct.ath_softc* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @IS_ERR(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %11, %16, %28, %17
  ret void
}

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32* @kthread_run(i32, %struct.ath_softc*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
