; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_plx_pci.c_plx9056_pci_reset_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_plx_pci.c_plx9056_pci_reset_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.plx_pci_card = type { i64 }

@PLX9056_CNTRL = common dso_local global i64 0, align 8
@PLX_PCI_RESET = common dso_local global i32 0, align 4
@PLX9056_PCI_RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @plx9056_pci_reset_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plx9056_pci_reset_common(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.plx_pci_card*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.plx_pci_card* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.plx_pci_card* %6, %struct.plx_pci_card** %3, align 8
  %7 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %8 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PLX9056_CNTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @PLX_PCI_RESET, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %18 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PLX9056_CNTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite32(i32 %16, i64 %21)
  %23 = call i32 @udelay(i32 100)
  %24 = load i32, i32* @PLX_PCI_RESET, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %29 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PLX9056_CNTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %27, i64 %32)
  %34 = load i32, i32* @PLX9056_PCI_RCR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %39 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PLX9056_CNTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @iowrite32(i32 %37, i64 %42)
  %44 = call i32 @mdelay(i32 10)
  %45 = load i32, i32* @PLX9056_PCI_RCR, align 4
  %46 = load i32, i32* %4, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %50 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PLX9056_CNTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i32 %48, i64 %53)
  ret void
}

declare dso_local %struct.plx_pci_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
