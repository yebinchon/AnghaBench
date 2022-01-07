; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64 }
%struct.octeon_cn6xxx = type { i32, i32 }

@CN6XXX_INTR_DMA0_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_cn6xxx_enable_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_cn6xxx*, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %10, %struct.octeon_cn6xxx** %5, align 8
  %11 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %5, align 8
  %12 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CN6XXX_INTR_DMA0_FORCE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %5, align 8
  %18 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @writeq(i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
