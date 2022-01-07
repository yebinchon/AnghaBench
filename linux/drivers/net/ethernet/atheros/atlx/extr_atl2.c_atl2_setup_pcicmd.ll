; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_setup_pcicmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_setup_pcicmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@REG_PM_CTRLSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @atl2_setup_pcicmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_setup_pcicmd(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_COMMAND, align 4
  %6 = call i32 @pci_read_config_word(%struct.pci_dev* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCI_COMMAND_IO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @PCI_COMMAND_IO, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 0, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* @PCI_COMMAND, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @pci_write_config_word(%struct.pci_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* @REG_PM_CTRLSTAT, align 4
  %51 = call i32 @pci_write_config_dword(%struct.pci_dev* %49, i32 %50, i32 0)
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
