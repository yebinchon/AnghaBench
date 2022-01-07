; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_bmi_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_bmi_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@MBOX_COUNT_DEC_ADDRESS = common dso_local global i32 0, align 4
@ATH10K_HIF_MBOX_NUM_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BMI_COMMUNICATION_TIMEOUT_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"unable to decrement the command credit count register: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bmi communication timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_bmi_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_bmi_credits(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load i32, i32* @MBOX_COUNT_DEC_ADDRESS, align 4
  %9 = load i32, i32* @ATH10K_HIF_MBOX_NUM_MAX, align 4
  %10 = mul nsw i32 %9, 4
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* @BMI_COMMUNICATION_TIMEOUT_HZ, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @time_before(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ath10k_sdio_read32(%struct.ath10k* %27, i32 %28, i32* %5)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %5, align 4
  br label %15

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath10k_sdio_read32(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
