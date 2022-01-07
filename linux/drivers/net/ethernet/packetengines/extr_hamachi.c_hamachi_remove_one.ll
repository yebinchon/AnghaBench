; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_hamachi.c_hamachi_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_hamachi.c_hamachi_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.hamachi_private = type { i32, i32, i32, i32, i32 }

@RX_TOTAL_SIZE = common dso_local global i32 0, align 4
@TX_TOTAL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hamachi_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hamachi_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hamachi_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.hamachi_private* @netdev_priv(%struct.net_device* %10)
  store %struct.hamachi_private* %11, %struct.hamachi_private** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @RX_TOTAL_SIZE, align 4
  %14 = load %struct.hamachi_private*, %struct.hamachi_private** %4, align 8
  %15 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hamachi_private*, %struct.hamachi_private** %4, align 8
  %18 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_free_consistent(%struct.pci_dev* %12, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* @TX_TOTAL_SIZE, align 4
  %23 = load %struct.hamachi_private*, %struct.hamachi_private** %4, align 8
  %24 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hamachi_private*, %struct.hamachi_private** %4, align 8
  %27 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_free_consistent(%struct.pci_dev* %21, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @unregister_netdev(%struct.net_device* %30)
  %32 = load %struct.hamachi_private*, %struct.hamachi_private** %4, align 8
  %33 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @free_netdev(%struct.net_device* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_release_regions(%struct.pci_dev* %38)
  br label %40

40:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.hamachi_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
