; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %5)
  store %struct.netdev_private* %6, %struct.netdev_private** %3, align 8
  %7 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %8 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @rio_hw_stop(%struct.net_device* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.net_device* %17)
  %19 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %20 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %19, i32 0, i32 0
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @free_list(%struct.net_device* %22)
  ret i32 0
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rio_hw_stop(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
