; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.enetc_si = type { %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enetc_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.enetc_si*, align 8
  %4 = alloca %struct.enetc_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.enetc_si* %6, %struct.enetc_si** %3, align 8
  %7 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %8 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %7, i32 0, i32 0
  store %struct.enetc_hw* %8, %struct.enetc_hw** %4, align 8
  %9 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %10 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iounmap(i32 %11)
  %13 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %14 = call i32 @enetc_kfree_si(%struct.enetc_si* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_release_mem_regions(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_disable_device(%struct.pci_dev* %17)
  ret void
}

declare dso_local %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @enetc_kfree_si(%struct.enetc_si*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
