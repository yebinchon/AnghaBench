; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.dw_mci_slot = type { %struct.dw_mci* }
%struct.dw_mci = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @dw_mci_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.dw_mci_slot* %8, %struct.dw_mci_slot** %5, align 8
  %9 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %10 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %9, i32 0, i32 0
  %11 = load %struct.dw_mci*, %struct.dw_mci** %10, align 8
  store %struct.dw_mci* %11, %struct.dw_mci** %6, align 8
  %12 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @__dw_mci_enable_sdio_irq(%struct.dw_mci_slot* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %19 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_noresume(i32 %20)
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %24 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_put_noidle(i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @__dw_mci_enable_sdio_irq(%struct.dw_mci_slot*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
