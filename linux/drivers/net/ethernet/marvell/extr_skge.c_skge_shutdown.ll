; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.skge_hw = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.skge_port = type { i64 }

@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @skge_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.skge_port*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.skge_hw* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.skge_hw* %8, %struct.skge_hw** %3, align 8
  %9 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %10 = icmp ne %struct.skge_hw* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %16 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %21 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %20, i32 0, i32 1
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 %24
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call %struct.skge_port* @netdev_priv(%struct.net_device* %27)
  store %struct.skge_port* %28, %struct.skge_port** %6, align 8
  %29 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %30 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %35 = call i32 @skge_wol_init(%struct.skge_port* %34)
  br label %36

36:                                               ; preds = %33, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 @device_may_wakeup(i32* %43)
  %45 = call i32 @pci_wake_from_d3(%struct.pci_dev* %41, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load i32, i32* @PCI_D3hot, align 4
  %48 = call i32 @pci_set_power_state(%struct.pci_dev* %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %11
  ret void
}

declare dso_local %struct.skge_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_wol_init(%struct.skge_port*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @device_may_wakeup(i32*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
