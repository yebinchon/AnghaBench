; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_global_input_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_setup_global_input_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@CN6XXX_SLI_PKT_INPUT_CONTROL = common dso_local global i32 0, align 4
@CN6XXX_INPUT_CTL_MASK = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_INSTR_RD_SIZE = common dso_local global i32 0, align 4
@CN6XXX_SLI_IN_PCIE_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_cn6xxx_setup_global_input_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %3 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %4 = load i32, i32* @CN6XXX_SLI_PKT_INPUT_CONTROL, align 4
  %5 = load i32, i32* @CN6XXX_INPUT_CTL_MASK, align 4
  %6 = call i32 @octeon_write_csr(%struct.octeon_device* %3, i32 %4, i32 %5)
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = load i32, i32* @CN6XXX_SLI_PKT_INSTR_RD_SIZE, align 4
  %9 = call i32 @octeon_write_csr64(%struct.octeon_device* %7, i32 %8, i32 -1)
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = load i32, i32* @CN6XXX_SLI_IN_PCIE_PORT, align 4
  %12 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 6148914691236517205
  %17 = trunc i64 %16 to i32
  %18 = call i32 @octeon_write_csr64(%struct.octeon_device* %10, i32 %11, i32 %17)
  ret void
}

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
