; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_octeon_pci_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_octeon_pci_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @octeon_pci_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_pci_flr(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %3 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pci_save_state(i32 %5)
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pci_cfg_access_lock(i32 %9)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCI_COMMAND, align 4
  %15 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %16 = call i32 @pci_write_config_word(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pcie_flr(i32 %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_cfg_access_unlock(i32 %23)
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_restore_state(i32 %27)
  ret void
}

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @pci_cfg_access_lock(i32) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pcie_flr(i32) #1

declare dso_local i32 @pci_cfg_access_unlock(i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
