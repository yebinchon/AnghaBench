; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_device_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_device_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@PCIE_MPS_DEFAULT = common dso_local global i32 0, align 4
@PCIE_MRRS_512B = common dso_local global i32 0, align 4
@CN6XXX_SLI_WINDOW_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn6xxx_setup_device_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn6xxx_setup_device_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %3 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %4 = load i32, i32* @PCIE_MPS_DEFAULT, align 4
  %5 = call i32 @lio_cn6xxx_setup_pcie_mps(%struct.octeon_device* %3, i32 %4)
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = load i32, i32* @PCIE_MRRS_512B, align 4
  %8 = call i32 @lio_cn6xxx_setup_pcie_mrrs(%struct.octeon_device* %6, i32 %7)
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = call i32 @lio_cn6xxx_enable_error_reporting(%struct.octeon_device* %9)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = call i32 @lio_cn6xxx_setup_global_input_regs(%struct.octeon_device* %11)
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = call i32 @lio_cn66xx_setup_pkt_ctl_regs(%struct.octeon_device* %13)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %16 = call i32 @lio_cn6xxx_setup_global_output_regs(%struct.octeon_device* %15)
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = load i32, i32* @CN6XXX_SLI_WINDOW_CTL, align 4
  %19 = call i32 @octeon_write_csr64(%struct.octeon_device* %17, i32 %18, i32 2097152)
  ret i32 0
}

declare dso_local i32 @lio_cn6xxx_setup_pcie_mps(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_cn6xxx_setup_pcie_mrrs(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_cn6xxx_enable_error_reporting(%struct.octeon_device*) #1

declare dso_local i32 @lio_cn6xxx_setup_global_input_regs(%struct.octeon_device*) #1

declare dso_local i32 @lio_cn66xx_setup_pkt_ctl_regs(%struct.octeon_device*) #1

declare dso_local i32 @lio_cn6xxx_setup_global_output_regs(%struct.octeon_device*) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
