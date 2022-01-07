; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_alloc_irq_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_alloc_irq_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_irq_ranges = type { i32 }
%struct.cxl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_pci_alloc_irq_ranges(%struct.cxl_irq_ranges* %0, %struct.cxl* %1, i32 %2) #0 {
  %4 = alloca %struct.cxl_irq_ranges*, align 8
  %5 = alloca %struct.cxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.cxl_irq_ranges* %0, %struct.cxl_irq_ranges** %4, align 8
  store %struct.cxl* %1, %struct.cxl** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cxl*, %struct.cxl** %5, align 8
  %9 = getelementptr inbounds %struct.cxl, %struct.cxl* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  %13 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pnv_cxl_alloc_hwirq_ranges(%struct.cxl_irq_ranges* %13, %struct.pci_dev* %14, i32 %15)
  ret i32 %16
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pnv_cxl_alloc_hwirq_ranges(%struct.cxl_irq_ranges*, %struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
