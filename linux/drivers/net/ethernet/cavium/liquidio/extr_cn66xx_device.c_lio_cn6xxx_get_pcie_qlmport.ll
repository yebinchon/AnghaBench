; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_get_pcie_qlmport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_get_pcie_qlmport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CN6XXX_SLI_MAC_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Using PCIE Port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn6xxx_get_pcie_qlmport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn6xxx_get_pcie_qlmport(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %3 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %4 = load i32, i32* @CN6XXX_SLI_MAC_NUMBER, align 4
  %5 = call i32 @octeon_read_csr(%struct.octeon_device* %3, i32 %4)
  %6 = and i32 %5, 255
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  ret void
}

declare dso_local i32 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
