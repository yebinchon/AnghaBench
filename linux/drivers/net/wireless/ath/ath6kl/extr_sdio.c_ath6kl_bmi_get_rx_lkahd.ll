; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_bmi_get_rx_lkahd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_bmi_get_rx_lkahd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@BMI_COMMUNICATION_TIMEOUT = common dso_local global i32 0, align 4
@RX_LOOKAHEAD_VALID_ADDRESS = common dso_local global i32 0, align 4
@HIF_RD_SYNC_BYTE_INC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to read RX_LOOKAHEAD_VALID\0A\00", align 1
@ENDPOINT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bmi_recv_buf FIFO empty\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_bmi_get_rx_lkahd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_bmi_get_rx_lkahd(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i32, i32* @BMI_COMMUNICATION_TIMEOUT, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @time_before(i64 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %24 = load i32, i32* @RX_LOOKAHEAD_VALID_ADDRESS, align 4
  %25 = load i32, i32* @HIF_RD_SYNC_BYTE_INC, align 4
  %26 = call i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl* %23, i32 %24, i32* %5, i32 4, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %22
  %33 = load i32, i32* @ENDPOINT1, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call i32 @ath6kl_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %40, %29
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl*, i32, i32*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
