; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_bar1_idx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_bar1_idx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@PCI_BAR1_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_cn6xxx_bar1_idx_setup(%struct.octeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CN6XXX_BAR1_REG(i32 %14, i32 %17)
  %19 = call i32 @lio_pci_readq(%struct.octeon_device* %13, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, 4294967294
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CN6XXX_BAR1_REG(i32 %25, i32 %28)
  %30 = call i32 @lio_pci_writeq(%struct.octeon_device* %20, i32 %24, i32 %29)
  %31 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CN6XXX_BAR1_REG(i32 %32, i32 %35)
  %37 = call i32 @lio_pci_readq(%struct.octeon_device* %31, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %58

38:                                               ; preds = %4
  %39 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 22
  %42 = shl i32 %41, 4
  %43 = load i32, i32* @PCI_BAR1_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CN6XXX_BAR1_REG(i32 %45, i32 %48)
  %50 = call i32 @lio_pci_writeq(%struct.octeon_device* %39, i32 %44, i32 %49)
  %51 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CN6XXX_BAR1_REG(i32 %52, i32 %55)
  %57 = call i32 @lio_pci_readq(%struct.octeon_device* %51, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN6XXX_BAR1_REG(i32, i32) #1

declare dso_local i32 @lio_pci_writeq(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
