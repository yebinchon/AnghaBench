; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_firmware_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_firmware_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ATH10K_FW_API_MAX = common dso_local global i32 0, align 4
@ATH10K_FW_API_MIN = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"trying fw api %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to find firmware-N.bin (N between %d and %d) from %s: %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"using fw api %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_core_fetch_firmware_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_fetch_firmware_files(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call i32 @ath10k_fetch_cal_file(%struct.ath10k* %7)
  %9 = load i32, i32* @ATH10K_FW_API_MAX, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ATH10K_FW_API_MIN, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ath10k_dbg(%struct.ath10k* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ath10k_core_get_fw_name(%struct.ath10k* %24, i8* %25, i32 100, i32 %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @ath10k_core_fetch_firmware_api_n(%struct.ath10k* %30, i8* %31, i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %14
  br label %55

39:                                               ; preds = %14
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  br label %10

43:                                               ; preds = %10
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = load i32, i32* @ATH10K_FW_API_MIN, align 4
  %46 = load i32, i32* @ATH10K_FW_API_MAX, align 4
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ath10k_err(%struct.ath10k* %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %38
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ath10k_dbg(%struct.ath10k* %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %43
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ath10k_fetch_cal_file(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_core_get_fw_name(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_core_fetch_firmware_api_n(%struct.ath10k*, i8*, i32*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
