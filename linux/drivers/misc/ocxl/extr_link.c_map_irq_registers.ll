; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_map_irq_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_map_irq_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.spa = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.spa*)* @map_irq_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_irq_registers(%struct.pci_dev* %0, %struct.spa* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.spa*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.spa* %1, %struct.spa** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = load %struct.spa*, %struct.spa** %4, align 8
  %7 = getelementptr inbounds %struct.spa, %struct.spa* %6, i32 0, i32 3
  %8 = load %struct.spa*, %struct.spa** %4, align 8
  %9 = getelementptr inbounds %struct.spa, %struct.spa* %8, i32 0, i32 2
  %10 = load %struct.spa*, %struct.spa** %4, align 8
  %11 = getelementptr inbounds %struct.spa, %struct.spa* %10, i32 0, i32 1
  %12 = load %struct.spa*, %struct.spa** %4, align 8
  %13 = getelementptr inbounds %struct.spa, %struct.spa* %12, i32 0, i32 0
  %14 = call i32 @pnv_ocxl_map_xsl_regs(%struct.pci_dev* %5, i32* %7, i32* %9, i32* %11, i32* %13)
  ret i32 %14
}

declare dso_local i32 @pnv_ocxl_map_xsl_regs(%struct.pci_dev*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
