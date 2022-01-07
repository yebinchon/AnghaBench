; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_adapter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32, i32, i32, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.pci_dev = type { i32 }

@et131x_adapter_init.default_mac = internal constant [6 x i32] [i32 0, i32 5, i32 61, i32 0, i32 2, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.et131x_adapter* (%struct.net_device*, %struct.pci_dev*)* @et131x_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.et131x_adapter* @et131x_adapter_init(%struct.net_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.et131x_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.et131x_adapter* %7, %struct.et131x_adapter** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_dev_get(%struct.pci_dev* %8)
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %13, i32 0, i32 5
  store %struct.net_device* %12, %struct.net_device** %14, align 8
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %15, i32 0, i32 4
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 0
  store i32 1514, i32* %25, align 8
  %26 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_addr_copy(i32 %28, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @et131x_adapter_init.default_mac, i64 0, i64 0))
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  ret %struct.et131x_adapter* %30
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
