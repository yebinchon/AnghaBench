; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_rng.c_ath9k_rng_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_rng.c_ath9k_rng_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32* }

@ATH9K_RNG_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rng_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ath9k_rng_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rng_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ath_softc*
  store %struct.ath_softc* %9, %struct.ath_softc** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* @ATH9K_RNG_BUF_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64* @kmalloc_array(i32 %10, i32 8, i32 %11)
  store i64* %12, i64** %5, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %51

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %41, %32, %16
  %18 = call i32 (...) @kthread_should_stop()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* @ATH9K_RNG_BUF_SIZE, align 4
  %25 = call i32 @ath9k_rng_data_read(%struct.ath_softc* %22, i64* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  %35 = call i64 @ath9k_rng_delay_get(i64 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i32, i32* @rng_queue, align 4
  %37 = call i32 (...) @kthread_should_stop()
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @msecs_to_jiffies(i64 %38)
  %40 = call i32 @wait_event_interruptible_timeout(i32 %36, i32 %37, i32 %39)
  br label %17

41:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = bitcast i64* %42 to i8*
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ATH9K_RNG_ENTROPY(i32 %45)
  %47 = call i32 @add_hwgenerator_randomness(i8* %43, i32 %44, i32 %46)
  br label %17

48:                                               ; preds = %17
  %49 = load i64*, i64** %5, align 8
  %50 = call i32 @kfree(i64* %49)
  br label %51

51:                                               ; preds = %48, %15
  %52 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret i32 0
}

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @ath9k_rng_data_read(%struct.ath_softc*, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ath9k_rng_delay_get(i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @add_hwgenerator_randomness(i8*, i32, i32) #1

declare dso_local i32 @ATH9K_RNG_ENTROPY(i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
