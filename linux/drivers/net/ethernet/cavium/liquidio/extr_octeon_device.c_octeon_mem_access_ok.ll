; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_mem_access_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_mem_access_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@CN23XX_LMC0_RESET_CTL = common dso_local global i32 0, align 4
@CN23XX_LMC0_RESET_CTL_DDR3RST_MASK = common dso_local global i32 0, align 4
@CN6XXX_LMC0_RESET_CTL = common dso_local global i32 0, align 4
@CN6XXX_LMC0_RESET_CTL_DDR3RST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_mem_access_ok(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = load i32, i32* @CN23XX_LMC0_RESET_CTL, align 4
  %11 = call i32 @lio_pci_readq(%struct.octeon_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CN23XX_LMC0_RESET_CTL_DDR3RST_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %17 = load i32, i32* @CN6XXX_LMC0_RESET_CTL, align 4
  %18 = call i32 @lio_pci_readq(%struct.octeon_device* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CN6XXX_LMC0_RESET_CTL_DDR3RST_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %8
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  ret i32 %26
}

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
