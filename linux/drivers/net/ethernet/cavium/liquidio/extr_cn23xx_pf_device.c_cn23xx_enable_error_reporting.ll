; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_enable_error_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_enable_error_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@CN23XX_CONFIG_PCIE_DEVCTL = common dso_local global i32 0, align 4
@CN23XX_CONFIG_PCIE_DEVCTL_MASK = common dso_local global i32 0, align 4
@CN23XX_CONFIG_PCIE_UNCORRECT_ERR_MASK = common dso_local global i32 0, align 4
@CN23XX_CONFIG_PCIE_CORRECT_ERR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [136 x i8] c"PCI-E Fatal error detected;\0A\09dev_ctl_status_reg = 0x%08x\0A\09uncorrectable_error_mask_reg = 0x%08x\0A\09correctable_error_status_reg = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"OCTEON[%d]: Enabling PCI-E error reporting..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @cn23xx_enable_error_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_enable_error_reporting(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @CN23XX_CONFIG_PCIE_DEVCTL, align 4
  %10 = call i32 @pci_read_config_dword(%struct.TYPE_3__* %8, i32 %9, i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CN23XX_CONFIG_PCIE_DEVCTL_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* @CN23XX_CONFIG_PCIE_UNCORRECT_ERR_MASK, align 4
  %20 = call i32 @pci_read_config_dword(%struct.TYPE_3__* %18, i32 %19, i32* %4)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* @CN23XX_CONFIG_PCIE_CORRECT_ERR_STATUS, align 4
  %25 = call i32 @pci_read_config_dword(%struct.TYPE_3__* %23, i32 %24, i32* %5)
  %26 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %15, %1
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, 15
  store i32 %36, i32* %3, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* @CN23XX_CONFIG_PCIE_DEVCTL, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @pci_write_config_dword(%struct.TYPE_3__* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
