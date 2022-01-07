; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_reset_calvalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_reset_calvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.ath9k_cal_list* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ath9k_cal_list = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ath_common = type { i32 }

@CAL_DONE = common dso_local global i64 0, align 8
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Calibration state incorrect, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Resetting Cal %d state for channel %u\0A\00", align 1
@CAL_WAITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_reset_calvalid(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_cal_list*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 3
  %10 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %9, align 8
  store %struct.ath9k_cal_list* %10, %struct.ath9k_cal_list** %5, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i32 @AR_SREV_9100(%struct.ath_hw* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = call i32 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %86

25:                                               ; preds = %20, %16
  %26 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %27 = icmp eq %struct.ath9k_cal_list* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %86

29:                                               ; preds = %25
  %30 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %31 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CAL_DONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %37 = load i32, i32* @CALIBRATE, align 4
  %38 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %39 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 1, i32* %2, align 4
  br label %86

43:                                               ; preds = %29
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %48 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %86

55:                                               ; preds = %43
  %56 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %57 = load i32, i32* @CALIBRATE, align 4
  %58 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %59 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %56, i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %69)
  %71 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %72 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %76
  store i32 %82, i32* %80, align 4
  %83 = load i64, i64* @CAL_WAITING, align 8
  %84 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %5, align 8
  %85 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %55, %54, %35, %28, %24, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
