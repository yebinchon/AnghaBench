; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_fetch_cal_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_fetch_cal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i8*, i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"pre-cal-%s-%s.bin\00", align 1
@ATH10K_FW_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"cal-%s-%s.bin\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"found calibration file %s/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_fetch_cal_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_fetch_cal_file(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca [100 x i8], align 16
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ath10k_bus_str(i32 %9)
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_name(i32 %13)
  %15 = call i32 @scnprintf(i8* %5, i32 100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = load i32, i32* @ATH10K_FW_DIR, align 4
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %19 = call i8* @ath10k_fetch_fw_file(%struct.ath10k* %16, i32 %17, i8* %18)
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %57

28:                                               ; preds = %1
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ath10k_bus_str(i32 %33)
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_name(i32 %37)
  %39 = call i32 @scnprintf(i8* %29, i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* @ATH10K_FW_DIR, align 4
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %43 = call i8* @ath10k_fetch_fw_file(%struct.ath10k* %40, i32 %41, i8* %42)
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %28
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %60 = load i32, i32* @ATH10K_FW_DIR, align 4
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %62 = call i32 @ath10k_dbg(%struct.ath10k* %58, i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_bus_str(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i8* @ath10k_fetch_fw_file(%struct.ath10k*, i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
