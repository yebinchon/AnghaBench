; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_free_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_free_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*, %struct.pci_dev*)* @cobalt_free_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_free_msi(%struct.cobalt* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cobalt*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.cobalt* %0, %struct.cobalt** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %9 = bitcast %struct.cobalt* %8 to i8*
  %10 = call i32 @free_irq(i32 %7, i8* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %11)
  ret void
}

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
