; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_bar1_idx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_bar1_idx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@PCI_BAR1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i32, i32)* @cn23xx_bar1_idx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_bar1_idx_setup(%struct.octeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CN23XX_PEM_BAR1_INDEX_REG(i32 %17, i32 %18)
  %20 = call i32 @lio_pci_readq(%struct.octeon_device* %14, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @WRITE_ONCE(i32 %21, i32 %22)
  %24 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @READ_ONCE(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, 4294967294
  %29 = trunc i64 %28 to i32
  %30 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @CN23XX_PEM_BAR1_INDEX_REG(i32 %32, i32 %33)
  %35 = call i32 @lio_pci_writeq(%struct.octeon_device* %24, i32 %29, i32 %34)
  %36 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %37 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @CN23XX_PEM_BAR1_INDEX_REG(i32 %39, i32 %40)
  %42 = call i32 @lio_pci_readq(%struct.octeon_device* %36, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @WRITE_ONCE(i32 %43, i32 %44)
  br label %68

46:                                               ; preds = %4
  %47 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 22
  %50 = shl i32 %49, 4
  %51 = load i32, i32* @PCI_BAR1_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @CN23XX_PEM_BAR1_INDEX_REG(i32 %55, i32 %56)
  %58 = call i32 @lio_pci_writeq(%struct.octeon_device* %47, i32 %52, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %61 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @CN23XX_PEM_BAR1_INDEX_REG(i32 %63, i32 %64)
  %66 = call i32 @lio_pci_readq(%struct.octeon_device* %60, i32 %65)
  %67 = call i32 @WRITE_ONCE(i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_PEM_BAR1_INDEX_REG(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @lio_pci_writeq(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
