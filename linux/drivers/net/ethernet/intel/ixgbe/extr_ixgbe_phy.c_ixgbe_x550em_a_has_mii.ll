; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_x550em_a_has_mii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_x550em_a_has_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_adapter* }
%struct.ixgbe_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_x550em_a_has_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_x550em_a_has_mii(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %4, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = call i32 @PCI_DEVFN(i32 22, i32 0)
  %14 = call %struct.pci_dev* @ixgbe_get_first_secondary_devfn(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = icmp eq %struct.pci_dev* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %31

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = call i32 @PCI_DEVFN(i32 23, i32 0)
  %25 = call %struct.pci_dev* @ixgbe_get_first_secondary_devfn(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %6, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = icmp eq %struct.pci_dev* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %22, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.pci_dev* @ixgbe_get_first_secondary_devfn(i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
