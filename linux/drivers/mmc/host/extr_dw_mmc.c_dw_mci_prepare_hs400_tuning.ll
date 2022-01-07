; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_prepare_hs400_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_prepare_hs400_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.dw_mci_slot = type { %struct.dw_mci* }
%struct.dw_mci = type { %struct.dw_mci_drv_data* }
%struct.dw_mci_drv_data = type { i32 (%struct.dw_mci*, %struct.mmc_ios*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @dw_mci_prepare_hs400_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_prepare_hs400_tuning(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.dw_mci_slot*, align 8
  %7 = alloca %struct.dw_mci*, align 8
  %8 = alloca %struct.dw_mci_drv_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %9)
  store %struct.dw_mci_slot* %10, %struct.dw_mci_slot** %6, align 8
  %11 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %6, align 8
  %12 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %11, i32 0, i32 0
  %13 = load %struct.dw_mci*, %struct.dw_mci** %12, align 8
  store %struct.dw_mci* %13, %struct.dw_mci** %7, align 8
  %14 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %15 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %14, i32 0, i32 0
  %16 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %15, align 8
  store %struct.dw_mci_drv_data* %16, %struct.dw_mci_drv_data** %8, align 8
  %17 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %8, align 8
  %18 = icmp ne %struct.dw_mci_drv_data* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %8, align 8
  %21 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %20, i32 0, i32 0
  %22 = load i32 (%struct.dw_mci*, %struct.mmc_ios*)*, i32 (%struct.dw_mci*, %struct.mmc_ios*)** %21, align 8
  %23 = icmp ne i32 (%struct.dw_mci*, %struct.mmc_ios*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %8, align 8
  %26 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %25, i32 0, i32 0
  %27 = load i32 (%struct.dw_mci*, %struct.mmc_ios*)*, i32 (%struct.dw_mci*, %struct.mmc_ios*)** %26, align 8
  %28 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %30 = call i32 %27(%struct.dw_mci* %28, %struct.mmc_ios* %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
