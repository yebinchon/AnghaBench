; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_read_pci_cfg_word_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_read_pci_cfg_word_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IXGBE_FAILED_READ_CFG_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32, i64*)* @ixgbe_read_pci_cfg_word_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_pci_cfg_word_parent(%struct.ixgbe_adapter* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.pci_bus*, %struct.pci_bus** %15, align 8
  store %struct.pci_bus* %16, %struct.pci_bus** %9, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %18 = icmp ne %struct.pci_bus* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %8, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %29 = call i32 @pci_is_pcie(%struct.pci_dev* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %49

32:                                               ; preds = %27
  %33 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64*, i64** %7, align 8
  %36 = call i32 @pcie_capability_read_word(%struct.pci_dev* %33, i32 %34, i64* %35)
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IXGBE_FAILED_READ_CFG_WORD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 0
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = call i64 @ixgbe_check_cfg_remove(i32* %43, %struct.pci_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %49

48:                                               ; preds = %41, %32
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %31, %26, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i64 @ixgbe_check_cfg_remove(i32*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
