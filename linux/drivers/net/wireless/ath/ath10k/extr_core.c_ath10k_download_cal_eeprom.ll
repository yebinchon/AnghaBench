; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_cal_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to read calibration data from EEPROM: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"failed to download calibration data from EEPROM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_download_cal_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_download_cal_eeprom(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  store i8* null, i8** %4, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = call i32 @ath10k_hif_fetch_cal_eeprom(%struct.ath10k* %6, i8** %4, i64* %3)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ath10k_warn(%struct.ath10k* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %10
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @ath10k_download_board_data(%struct.ath10k* %21, i8* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ath10k_warn(%struct.ath10k* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %32

31:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %27, %19
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @ath10k_hif_fetch_cal_eeprom(%struct.ath10k*, i8**, i64*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_download_board_data(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
