; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_pcierr_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_pcierr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { %struct.pci_dev* }
%struct.pci_dev = type { i64 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PCI error (cmd = 0x%04x, status = 0x%04x)\0A\00", align 1
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@RTL_FLAG_TASK_RESET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8169_pcierr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_pcierr_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rtl8169_private* %8, %struct.rtl8169_private** %3, align 8
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @PCI_COMMAND, align 4
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i32 %13, i32* %6)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @PCI_STATUS, align 4
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 %16, i32* %5)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %19 = load i32, i32* @intr, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @netif_err(%struct.rtl8169_private* %18, i32 %19, %struct.net_device* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %35 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @PCI_COMMAND, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pci_write_config_word(%struct.pci_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @PCI_STATUS, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %48 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %46, %55
  %57 = call i32 @pci_write_config_word(%struct.pci_dev* %44, i32 %45, i32 %56)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %59 = load i32, i32* @RTL_FLAG_TASK_RESET_PENDING, align 4
  %60 = call i32 @rtl_schedule_task(%struct.rtl8169_private* %58, i32 %59)
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @rtl_schedule_task(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
