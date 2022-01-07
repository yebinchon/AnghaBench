; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_mci_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_mci_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci_slot = type { %struct.TYPE_2__*, %struct.dw_mci* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mci = type { i64 }

@CMDARG = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@SDMMC_CMD_START = common dso_local global i32 0, align 4
@SDMMC_CMD = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Timeout sending command (cmd %#x arg %#x status %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci_slot*, i32, i32)* @mci_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mci_send_cmd(%struct.dw_mci_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_mci_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_mci*, align 8
  %8 = alloca i32, align 4
  store %struct.dw_mci_slot* %0, %struct.dw_mci_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %10 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %9, i32 0, i32 1
  %11 = load %struct.dw_mci*, %struct.dw_mci** %10, align 8
  store %struct.dw_mci* %11, %struct.dw_mci** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %13 = load i32, i32* @CMDARG, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @mci_writel(%struct.dw_mci* %12, i32 %13, i32 %14)
  %16 = call i32 (...) @wmb()
  %17 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dw_mci_wait_while_busy(%struct.dw_mci* %17, i32 %18)
  %20 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %21 = load i32, i32* @CMD, align 4
  %22 = load i32, i32* @SDMMC_CMD_START, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mci_writel(%struct.dw_mci* %20, i32 %21, i32 %24)
  %26 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %27 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDMMC_CMD, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SDMMC_CMD_START, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @USEC_PER_MSEC, align 4
  %39 = mul nsw i32 500, %38
  %40 = call i64 @readl_poll_timeout_atomic(i64 %30, i32 %31, i32 %37, i32 1, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %3
  %43 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %44 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dw_mci_wait_while_busy(%struct.dw_mci*, i32) #1

declare dso_local i64 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
