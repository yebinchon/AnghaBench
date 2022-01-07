; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_byt_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_byt_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.mmc_host*, %struct.mmc_host_ops }
%struct.mmc_host = type { i32 }
%struct.mmc_host_ops = type { i32, i32 }

@intel_execute_tuning = common dso_local global i32 0, align 4
@intel_start_signal_voltage_switch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_pci_slot*)* @byt_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byt_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_pci_slot*, align 8
  %3 = alloca %struct.mmc_host_ops*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %2, align 8
  %6 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %7 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.mmc_host_ops* %9, %struct.mmc_host_ops** %3, align 8
  %10 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %17 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.mmc_host*, %struct.mmc_host** %19, align 8
  store %struct.mmc_host* %20, %struct.mmc_host** %5, align 8
  %21 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %22 = call i32 @byt_read_dsm(%struct.sdhci_pci_slot* %21)
  %23 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @byt_ocp_setting(%struct.TYPE_6__* %27)
  %29 = load i32, i32* @intel_execute_tuning, align 4
  %30 = load %struct.mmc_host_ops*, %struct.mmc_host_ops** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_host_ops, %struct.mmc_host_ops* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @intel_start_signal_voltage_switch, align 4
  %33 = load %struct.mmc_host_ops*, %struct.mmc_host_ops** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_host_ops, %struct.mmc_host_ops* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  %38 = call i32 @device_property_read_u32(%struct.device* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %37)
  ret void
}

declare dso_local i32 @byt_read_dsm(%struct.sdhci_pci_slot*) #1

declare dso_local i32 @byt_ocp_setting(%struct.TYPE_6__*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
