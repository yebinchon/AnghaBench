; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_bmi_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_bmi_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COUNT_DEC_ADDRESS = common dso_local global i64 0, align 8
@HTC_MAILBOX_NUM_MAX = common dso_local global i32 0, align 4
@ENDPOINT1 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BMI_COMMUNICATION_TIMEOUT = common dso_local global i32 0, align 4
@HIF_RD_SYNC_BYTE_INC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to decrement the command credit count register: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bmi communication timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_sdio_bmi_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_bmi_credits(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %7 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @COUNT_DEC_ADDRESS, align 8
  %11 = load i32, i32* @HTC_MAILBOX_NUM_MAX, align 4
  %12 = load i32, i32* @ENDPOINT1, align 4
  %13 = add nsw i32 %11, %12
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %10, %15
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @BMI_COMMUNICATION_TIMEOUT, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add i64 %17, %19
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %49, %1
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %26, %21
  %34 = phi i1 [ false, %21 ], [ %32, %26 ]
  br i1 %34, label %35, label %55

35:                                               ; preds = %33
  %36 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %39 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @HIF_RD_SYNC_BYTE_INC, align 4
  %42 = call i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl* %36, i64 %37, i32* %40, i32 4, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %66

49:                                               ; preds = %35
  %50 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %51 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %52, align 4
  br label %21

55:                                               ; preds = %33
  %56 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %61, %45
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl*, i64, i32*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
