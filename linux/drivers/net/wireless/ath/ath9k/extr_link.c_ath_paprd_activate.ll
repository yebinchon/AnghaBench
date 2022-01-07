; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_common = type { i32 }

@PAPRD_DONE = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to activate PAPRD\0A\00", align 1
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Activating PAPRD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_paprd_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_paprd_activate(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_hw_cal_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  store %struct.ath9k_hw_cal_data* %14, %struct.ath9k_hw_cal_data** %5, align 8
  %15 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %16 = icmp ne %struct.ath9k_hw_cal_data* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @PAPRD_DONE, align 4
  %19 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %25 = load i32, i32* @CALIBRATE, align 4
  %26 = call i32 @ath_dbg(%struct.ath_common* %24, i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i32 @ar9003_paprd_enable(%struct.ath_hw* %28, i32 0)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %48, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ar9003_paprd_populate_single_table(%struct.ath_hw* %44, %struct.ath9k_hw_cal_data* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %53 = load i32, i32* @CALIBRATE, align 4
  %54 = call i32 @ath_dbg(%struct.ath_common* %52, i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = call i32 @ar9003_paprd_enable(%struct.ath_hw* %55, i32 1)
  br label %57

57:                                               ; preds = %51, %23
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ar9003_paprd_enable(%struct.ath_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ar9003_paprd_populate_single_table(%struct.ath_hw*, %struct.ath9k_hw_cal_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
