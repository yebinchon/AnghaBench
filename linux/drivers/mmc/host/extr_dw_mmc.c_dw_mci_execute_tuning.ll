; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.dw_mci_slot = type { %struct.dw_mci* }
%struct.dw_mci = type { %struct.dw_mci_drv_data* }
%struct.dw_mci_drv_data = type { i32 (%struct.dw_mci_slot*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @dw_mci_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  %7 = alloca %struct.dw_mci_drv_data*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %9)
  store %struct.dw_mci_slot* %10, %struct.dw_mci_slot** %5, align 8
  %11 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %12 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %11, i32 0, i32 0
  %13 = load %struct.dw_mci*, %struct.dw_mci** %12, align 8
  store %struct.dw_mci* %13, %struct.dw_mci** %6, align 8
  %14 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %15 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %14, i32 0, i32 0
  %16 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %15, align 8
  store %struct.dw_mci_drv_data* %16, %struct.dw_mci_drv_data** %7, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %7, align 8
  %20 = icmp ne %struct.dw_mci_drv_data* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %7, align 8
  %23 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %22, i32 0, i32 0
  %24 = load i32 (%struct.dw_mci_slot*, i32)*, i32 (%struct.dw_mci_slot*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.dw_mci_slot*, i32)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %7, align 8
  %28 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %27, i32 0, i32 0
  %29 = load i32 (%struct.dw_mci_slot*, i32)*, i32 (%struct.dw_mci_slot*, i32)** %28, align 8
  %30 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %29(%struct.dw_mci_slot* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %26, %21, %2
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
