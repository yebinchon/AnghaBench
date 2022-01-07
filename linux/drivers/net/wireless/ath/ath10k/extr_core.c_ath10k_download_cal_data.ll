; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pre cal download procedure failed, try cal file: %d\0A\00", align 1
@ATH10K_CAL_MODE_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"boot did not find a calibration file, try DT next: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"qcom,ath10k-calibration-data\00", align 1
@ATH10K_CAL_MODE_DT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"boot did not find DT entry, try target EEPROM next: %d\0A\00", align 1
@ATH10K_CAL_MODE_EEPROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"boot did not find target EEPROM entry, try OTP next: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to run otp: %d\0A\00", align 1
@ATH10K_CAL_MODE_OTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"boot using calibration mode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_download_cal_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_download_cal_data(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = call i32 @ath10k_core_pre_cal_config(%struct.ath10k* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

10:                                               ; preds = %1
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ath10k_dbg(%struct.ath10k* %11, i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ath10k_download_cal_file(%struct.ath10k* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load i32, i32* @ATH10K_CAL_MODE_FILE, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %70

26:                                               ; preds = %10
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ath10k_dbg(%struct.ath10k* %27, i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = call i32 @ath10k_download_cal_dt(%struct.ath10k* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @ATH10K_CAL_MODE_DT, align 4
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %70

39:                                               ; preds = %26
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ath10k_dbg(%struct.ath10k* %40, i32 %41, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = call i32 @ath10k_download_cal_eeprom(%struct.ath10k* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @ATH10K_CAL_MODE_EEPROM, align 4
  %50 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %70

52:                                               ; preds = %39
  %53 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %54 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ath10k_dbg(%struct.ath10k* %53, i32 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = call i32 @ath10k_download_and_run_otp(%struct.ath10k* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ath10k_err(%struct.ath10k* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %52
  %67 = load i32, i32* @ATH10K_CAL_MODE_OTP, align 4
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %48, %35, %22
  %71 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %72 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ath10k_cal_mode_str(i32 %75)
  %77 = call i32 @ath10k_dbg(%struct.ath10k* %71, i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %70, %61, %9
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ath10k_core_pre_cal_config(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_download_cal_file(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_download_cal_dt(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_download_cal_eeprom(%struct.ath10k*) #1

declare dso_local i32 @ath10k_download_and_run_otp(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_cal_mode_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
