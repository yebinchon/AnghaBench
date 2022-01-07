; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_reset_link_through_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_reset_link_through_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_BUS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @hl_pci_reset_link_through_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hl_pci_reset_link_through_bridge(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %16 = call i32 @pci_read_config_word(%struct.pci_dev* %14, i32 %15, i32* %5)
  %17 = load i32, i32* @PCI_BRIDGE_CTL_BUS_RESET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pci_write_config_word(%struct.pci_dev* %20, i32 %21, i32 %22)
  %24 = call i32 @ssleep(i32 1)
  %25 = load i32, i32* @PCI_BRIDGE_CTL_BUS_RESET, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pci_write_config_word(%struct.pci_dev* %29, i32 %30, i32 %31)
  %33 = call i32 @ssleep(i32 3)
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
