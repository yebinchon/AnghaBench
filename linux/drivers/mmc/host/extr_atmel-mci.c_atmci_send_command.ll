; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { %struct.TYPE_2__*, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"start command: ARGR=0x%08x CMDR=0x%08x\0A\00", align 1
@ATMCI_ARGR = common dso_local global i32 0, align 4
@ATMCI_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*, %struct.mmc_command*, i32)* @atmci_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_send_command(%struct.atmel_mci* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca %struct.atmel_mci*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_mci* %0, %struct.atmel_mci** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %7, i32 0, i32 1
  %9 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %10 = call i32 @WARN_ON(%struct.mmc_command* %9)
  %11 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %12 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %12, i32 0, i32 1
  store %struct.mmc_command* %11, %struct.mmc_command** %13, align 8
  %14 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_vdbg(i32* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %24 = load i32, i32* @ATMCI_ARGR, align 4
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @atmci_writel(%struct.atmel_mci* %23, i32 %24, i32 %27)
  %29 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %30 = load i32, i32* @ATMCI_CMDR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @atmci_writel(%struct.atmel_mci* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @WARN_ON(%struct.mmc_command*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @atmci_writel(%struct.atmel_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
