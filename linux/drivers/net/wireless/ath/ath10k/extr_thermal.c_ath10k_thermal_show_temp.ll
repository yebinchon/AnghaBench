; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_thermal.c_ath10k_thermal_show_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_thermal.c_ath10k_thermal_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ath10k = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ATH10K_STATE_ON = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to read temperature %d\0A\00", align 1
@ATH10K_FLAG_CRASH_FLUSH = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ATH10K_THERMAL_SYNC_TIMEOUT_HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to synchronize thermal read\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ath10k_thermal_show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_thermal_show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ath10k* @dev_get_drvdata(%struct.device* %11)
  store %struct.ath10k* %12, %struct.ath10k** %7, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATH10K_STATE_ON, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @reinit_completion(i32* %27)
  %29 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %30 = call i32 @ath10k_wmi_pdev_get_temperature(%struct.ath10k* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %75

37:                                               ; preds = %24
  %38 = load i32, i32* @ATH10K_FLAG_CRASH_FLUSH, align 4
  %39 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 4
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ESHUTDOWN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %75

46:                                               ; preds = %37
  %47 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* @ATH10K_THERMAL_SYNC_TIMEOUT_HZ, align 4
  %51 = call i64 @wait_for_completion_timeout(i32* %49, i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %56 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %75

59:                                               ; preds = %46
  %60 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 2
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock_bh(i32* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, 1000
  %74 = call i32 @snprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %59, %54, %43, %33, %21
  %76 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.ath10k* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ath10k_wmi_pdev_get_temperature(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
