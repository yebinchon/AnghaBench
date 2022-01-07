; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_pcie_link_get_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_pcie_link_get_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cobalt*)* @pcie_link_get_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_link_get_lanes(%struct.cobalt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cobalt*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %3, align 8
  %6 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %7 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_is_pcie(%struct.pci_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %16 = call i32 @pcie_capability_read_word(%struct.pci_dev* %14, i32 %15, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
