; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.firmware = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to download cal_file data: %d\0A\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"boot cal file downloaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.firmware*)* @ath10k_download_cal_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_download_cal_file(%struct.ath10k* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %7 = load %struct.firmware*, %struct.firmware** %5, align 8
  %8 = icmp ne %struct.firmware* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.firmware*, %struct.firmware** %5, align 8
  %14 = call i64 @IS_ERR(%struct.firmware* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = call i32 @PTR_ERR(%struct.firmware* %17)
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.firmware*, %struct.firmware** %5, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath10k_download_board_data(%struct.ath10k* %20, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ath10k_err(%struct.ath10k* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %38 = call i32 @ath10k_dbg(%struct.ath10k* %36, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30, %16, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @IS_ERR(%struct.firmware*) #1

declare dso_local i32 @PTR_ERR(%struct.firmware*) #1

declare dso_local i32 @ath10k_download_board_data(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
