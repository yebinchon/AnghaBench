; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_pcie_msix_count_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_pcie_msix_count_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_PCIE_MSIX_82598_CAPS = common dso_local global i32 0, align 4
@IXGBE_MAX_MSIX_VECTORS_82598 = common dso_local global i32 0, align 4
@IXGBE_PCIE_MSIX_82599_CAPS = common dso_local global i32 0, align 4
@IXGBE_MAX_MSIX_VECTORS_82599 = common dso_local global i32 0, align 4
@IXGBE_PCIE_MSIX_TBL_SZ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %17 [
    i32 133, label %11
    i32 132, label %14
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @IXGBE_PCIE_MSIX_82598_CAPS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @IXGBE_MAX_MSIX_VECTORS_82598, align 4
  store i32 %13, i32* %5, align 4
  br label %18

14:                                               ; preds = %1, %1, %1, %1, %1
  %15 = load i32, i32* @IXGBE_PCIE_MSIX_82599_CAPS, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @IXGBE_MAX_MSIX_VECTORS_82599, align 4
  store i32 %16, i32* %5, align 4
  br label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

18:                                               ; preds = %14, %11
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ixgbe_read_pci_cfg_word(%struct.ixgbe_hw* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ixgbe_removed(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* @IXGBE_PCIE_MSIX_TBL_SZ_MASK, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ixgbe_read_pci_cfg_word(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_removed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
