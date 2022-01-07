; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_free_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_free_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_adapter*)* @atl2_free_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_free_ring_resources(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %4 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %4, i32 0, i32 3
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_free_consistent(%struct.pci_dev* %7, i32 %10, i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
