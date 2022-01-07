; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_send_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_send_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"send stop command\0A\00", align 1
@ATMCI_IER = common dso_local global i32 0, align 4
@ATMCI_CMDRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*, %struct.mmc_data*)* @atmci_send_stop_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_send_stop_cmd(%struct.atmel_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.atmel_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.atmel_mci* %0, %struct.atmel_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %6 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @atmci_send_command(%struct.atmel_mci* %10, i32 %13, i32 %16)
  %18 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %19 = load i32, i32* @ATMCI_IER, align 4
  %20 = load i32, i32* @ATMCI_CMDRDY, align 4
  %21 = call i32 @atmci_writel(%struct.atmel_mci* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atmci_send_command(%struct.atmel_mci*, i32, i32) #1

declare dso_local i32 @atmci_writel(%struct.atmel_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
