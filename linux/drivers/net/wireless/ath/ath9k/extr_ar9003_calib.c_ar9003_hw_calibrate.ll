; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_cal_list* }
%struct.ath9k_cal_list = type { i64, %struct.ath9k_cal_list* }
%struct.ath9k_channel = type { i32 }

@CAL_RUNNING = common dso_local global i64 0, align 8
@CAL_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32, i32)* @ar9003_hw_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_calibrate(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath9k_cal_list*, align 8
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 1
  %15 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %14, align 8
  store %struct.ath9k_cal_list* %15, %struct.ath9k_cal_list** %11, align 8
  %16 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %17 = icmp ne %struct.ath9k_cal_list* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %4
  %19 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %20 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CAL_RUNNING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %26 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CAL_WAITING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24, %18
  %31 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %32 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %35 = call i32 @ar9003_hw_per_calibration(%struct.ath_hw* %31, %struct.ath9k_channel* %32, i32 %33, %struct.ath9k_cal_list* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %40 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %39, i32 0, i32 1
  %41 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %40, align 8
  store %struct.ath9k_cal_list* %41, %struct.ath9k_cal_list** %11, align 8
  %42 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 1
  store %struct.ath9k_cal_list* %41, %struct.ath9k_cal_list** %43, align 8
  %44 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %45 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CAL_WAITING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %11, align 8
  %52 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %50, %struct.ath9k_cal_list* %51)
  br label %53

53:                                               ; preds = %49, %38
  br label %54

54:                                               ; preds = %53, %30
  br label %55

55:                                               ; preds = %54, %24, %4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %60 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %61 = call i64 @ath9k_hw_getnf(%struct.ath_hw* %59, %struct.ath9k_channel* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %65 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %64, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %63
  %74 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %75 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %74, i32 0)
  br label %76

76:                                               ; preds = %73, %58, %55
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @ar9003_hw_per_calibration(%struct.ath_hw*, %struct.ath9k_channel*, i32, %struct.ath9k_cal_list*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

declare dso_local i64 @ath9k_hw_getnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
