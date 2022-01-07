; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_err_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH6KL_DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"error interrupt\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"valid interrupt source(s) in ERROR_INT_STATUS: 0x%x\0A\00", align 1
@ERROR_INT_STATUS_WAKEUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"error : wakeup\0A\00", align 1
@ERROR_INT_STATUS_RX_UNDERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"rx underflow\0A\00", align 1
@ERROR_INT_STATUS_TX_OVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"tx overflow\0A\00", align 1
@ERROR_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@HIF_WR_SYNC_BYTE_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_device*)* @ath6kl_hif_proc_err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_hif_proc_err_intr(%struct.ath6kl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %3, align 8
  %7 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %8 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %10 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @WARN_ON(i32 1)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %1
  %21 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ERROR_INT_STATUS_WAKEUP, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @MS(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %30 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* @ERROR_INT_STATUS_RX_UNDERFLOW, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @MS(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @ath6kl_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* @ERROR_INT_STATUS_TX_OVERFLOW, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @MS(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @ath6kl_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %49 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %59 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ERROR_INT_STATUS_ADDRESS, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %63 = load i32, i32* @HIF_WR_SYNC_BYTE_FIX, align 4
  %64 = call i32 @hif_read_write_sync(i32 %60, i32 %61, i32* %62, i32 4, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @WARN_ON(i32 %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %45, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @hif_read_write_sync(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
