; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_wait_while_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_wait_while_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i64 }

@SDMMC_CMD_PRV_DAT_WAIT = common dso_local global i32 0, align 4
@SDMMC_CMD_VOLT_SWITCH = common dso_local global i32 0, align 4
@SDMMC_STATUS = common dso_local global i64 0, align 8
@SDMMC_STATUS_BUSY = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Busy; trying anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, i32)* @dw_mci_wait_while_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_wait_while_busy(%struct.dw_mci* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SDMMC_CMD_PRV_DAT_WAIT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SDMMC_CMD_VOLT_SWITCH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %10
  %16 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %17 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SDMMC_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SDMMC_STATUS_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @USEC_PER_MSEC, align 4
  %29 = mul nsw i32 500, %28
  %30 = call i64 @readl_poll_timeout_atomic(i64 %20, i32 %21, i32 %27, i32 10, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %34 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %15
  br label %38

38:                                               ; preds = %37, %10, %2
  ret void
}

declare dso_local i64 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
