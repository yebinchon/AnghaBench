; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.atmel_mci_slot = type { i32, %struct.atmel_mci* }
%struct.atmel_mci = type { i32 }

@ATMCI_IER = common dso_local global i32 0, align 4
@ATMCI_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @atmci_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_mci_slot*, align 8
  %6 = alloca %struct.atmel_mci*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.atmel_mci_slot* %8, %struct.atmel_mci_slot** %5, align 8
  %9 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %10 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %9, i32 0, i32 1
  %11 = load %struct.atmel_mci*, %struct.atmel_mci** %10, align 8
  store %struct.atmel_mci* %11, %struct.atmel_mci** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %16 = load i32, i32* @ATMCI_IER, align 4
  %17 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @atmci_writel(%struct.atmel_mci* %15, i32 %16, i32 %19)
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %23 = load i32, i32* @ATMCI_IDR, align 4
  %24 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @atmci_writel(%struct.atmel_mci* %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %14
  ret void
}

declare dso_local %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @atmci_writel(%struct.atmel_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
