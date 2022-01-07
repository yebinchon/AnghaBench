; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, %struct.mmc_command* }
%struct.mmc_command = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"start command: ARGR=0x%08x CMDR=0x%08x\0A\00", align 1
@CMDARG = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@SDMMC_CMD_START = common dso_local global i32 0, align 4
@SDMMC_CMD_RESP_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_command*, i32)* @dw_mci_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_start_command(%struct.dw_mci* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %8 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %9 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %8, i32 0, i32 1
  store %struct.mmc_command* %7, %struct.mmc_command** %9, align 8
  %10 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %11 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_vdbg(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %19 = load i32, i32* @CMDARG, align 4
  %20 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mci_writel(%struct.dw_mci* %18, i32 %19, i32 %22)
  %24 = call i32 (...) @wmb()
  %25 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dw_mci_wait_while_busy(%struct.dw_mci* %25, i32 %26)
  %28 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %29 = load i32, i32* @CMD, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SDMMC_CMD_START, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mci_writel(%struct.dw_mci* %28, i32 %29, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SDMMC_CMD_RESP_EXP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %40 = call i32 @dw_mci_set_cto(%struct.dw_mci* %39)
  br label %41

41:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dw_mci_wait_while_busy(%struct.dw_mci*, i32) #1

declare dso_local i32 @dw_mci_set_cto(%struct.dw_mci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
