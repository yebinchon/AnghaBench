; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_start_ani.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_start_ani.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__*, %struct.ath_hw* }
%struct.TYPE_4__ = type { i64 }
%struct.ath_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ath_common = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@ATH_OP_ANI_RUN = common dso_local global i32 0, align 4
@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Starting ANI\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_start_ani(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %4, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = call i64 @jiffies_to_msecs(i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %19 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %20 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %17, %1
  br label %59

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %34 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %38 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %42 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  %44 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %45 = load i32, i32* @ANI, align 4
  %46 = call i32 @ath_dbg(%struct.ath_common* %44, i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %48 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @msecs_to_jiffies(i32 %55)
  %57 = add nsw i64 %50, %56
  %58 = call i32 @mod_timer(i32* %49, i64 %57)
  br label %59

59:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
