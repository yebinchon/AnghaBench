; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_dbg_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_dbg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"firmware crashed\0A\00", align 1
@COUNT_DEC_ADDRESS = common dso_local global i32 0, align 4
@HIF_RD_SYNC_BYTE_INC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to clear debug interrupt: %d\0A\00", align 1
@ATH6KL_FW_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_device*)* @ath6kl_hif_proc_dbg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_hif_proc_dbg_intr(%struct.ath6kl_device* %0) #0 {
  %2 = alloca %struct.ath6kl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %2, align 8
  %5 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %7 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @COUNT_DEC_ADDRESS, align 4
  %10 = load i32, i32* @HIF_RD_SYNC_BYTE_INC, align 4
  %11 = call i32 @hif_read_write_sync(i32 %8, i32 %9, i32* %3, i32 4, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %19 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ath6kl_hif_dump_fw_crash(i32 %20)
  %22 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %23 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ath6kl_read_fwlogs(i32 %24)
  %26 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %27 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATH6KL_FW_ASSERT, align 4
  %30 = call i32 @ath6kl_recovery_err_notify(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ath6kl_warn(i8*, ...) #1

declare dso_local i32 @hif_read_write_sync(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ath6kl_hif_dump_fw_crash(i32) #1

declare dso_local i32 @ath6kl_read_fwlogs(i32) #1

declare dso_local i32 @ath6kl_recovery_err_notify(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
