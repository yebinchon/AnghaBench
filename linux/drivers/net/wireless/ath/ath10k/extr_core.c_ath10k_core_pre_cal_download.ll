; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_pre_cal_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_pre_cal_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }

@ATH10K_PRE_CAL_MODE_FILE = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"boot did not find a pre calibration file, try DT next: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"qcom,ath10k-pre-calibration-data\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to load pre cal data from DT: %d\0A\00", align 1
@ATH10K_PRE_CAL_MODE_DT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"boot using calibration mode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_core_pre_cal_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_pre_cal_download(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ath10k_download_cal_file(%struct.ath10k* %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @ATH10K_PRE_CAL_MODE_FILE, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ath10k_dbg(%struct.ath10k* %17, i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = call i32 @ath10k_download_cal_dt(%struct.ath10k* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ath10k_dbg(%struct.ath10k* %26, i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %16
  %32 = load i32, i32* @ATH10K_PRE_CAL_MODE_DT, align 4
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %12
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ath10k_cal_mode_str(i32 %40)
  %42 = call i32 @ath10k_dbg(%struct.ath10k* %36, i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ath10k_download_cal_file(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_download_cal_dt(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_cal_mode_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
