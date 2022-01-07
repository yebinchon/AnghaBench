; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64, %struct.pci_dev*, %struct.atl2_hw }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.atl2_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@__ATL2_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_adapter*)* @atl2_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_sw_init(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca %struct.atl2_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %5 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %5, i32 0, i32 8
  store %struct.atl2_hw* %6, %struct.atl2_hw** %3, align 8
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %7, i32 0, i32 7
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %14 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %13, i32 0, i32 18
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %19 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %18, i32 0, i32 17
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %24 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %23, i32 0, i32 16
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %29 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %34 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* @PCI_COMMAND, align 4
  %37 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %38 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %37, i32 0, i32 13
  %39 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i32 %36, i32* %38)
  %40 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %42, i32 0, i32 0
  store i32 50000, i32* %43, align 8
  %44 = load i32, i32* @SPEED_0, align 4
  %45 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @FULL_DUPLEX, align 4
  %48 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %51 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %53 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %52, i32 0, i32 1
  store i32 7, i32* %53, align 4
  %54 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %55 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %54, i32 0, i32 2
  store i32 96, i32* %55, align 8
  %56 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %57 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %56, i32 0, i32 3
  store i32 80, i32* %57, align 4
  %58 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %59 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %58, i32 0, i32 4
  store i32 64, i32* %59, align 8
  %60 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %61 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %60, i32 0, i32 5
  store i32 96, i32* %61, align 4
  %62 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %63 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %62, i32 0, i32 6
  store i32 2, i32* %63, align 8
  %64 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %65 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %64, i32 0, i32 7
  store i32 15, i32* %65, align 4
  %66 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %67 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %66, i32 0, i32 8
  store i32 55, i32* %67, align 8
  %68 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %69 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %68, i32 0, i32 9
  store i32 7, i32* %69, align 4
  %70 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %71 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %70, i32 0, i32 12
  store i64 0, i64* %71, align 8
  %72 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %73 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %72, i32 0, i32 11
  store i64 0, i64* %73, align 8
  %74 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %80 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %81, i32 0, i32 2
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load i32, i32* @__ATL2_DOWN, align 4
  %85 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %85, i32 0, i32 1
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
