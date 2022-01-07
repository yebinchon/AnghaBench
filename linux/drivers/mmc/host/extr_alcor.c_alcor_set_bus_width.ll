; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.alcor_sdmmc_host = type { i32, %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }

@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@AU6601_REG_BUS_CTRL = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@AU6601_BUS_WIDTH_4BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown BUS mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @alcor_set_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_set_bus_width(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  %6 = alloca %struct.alcor_pci_priv*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.alcor_sdmmc_host* %8, %struct.alcor_sdmmc_host** %5, align 8
  %9 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %9, i32 0, i32 1
  %11 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %10, align 8
  store %struct.alcor_pci_priv* %11, %struct.alcor_pci_priv** %6, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %19 = load i32, i32* @AU6601_REG_BUS_CTRL, align 4
  %20 = call i32 @alcor_write8(%struct.alcor_pci_priv* %18, i32 0, i32 %19)
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %29 = load i32, i32* @AU6601_BUS_WIDTH_4BIT, align 4
  %30 = load i32, i32* @AU6601_REG_BUS_CTRL, align 4
  %31 = call i32 @alcor_write8(%struct.alcor_pci_priv* %28, i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %34 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %17
  ret void
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @alcor_write8(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
