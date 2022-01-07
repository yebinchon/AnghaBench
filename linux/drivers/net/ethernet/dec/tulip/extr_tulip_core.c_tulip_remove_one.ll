; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.tulip_private = type { i32, i32, i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @tulip_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tulip_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %11)
  store %struct.tulip_private* %12, %struct.tulip_private** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load i32, i32* @RX_RING_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = load i32, i32* @TX_RING_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = add i64 %18, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %25 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %28 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_free_consistent(%struct.pci_dev* %15, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %32 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load %struct.tulip_private*, %struct.tulip_private** %4, align 8
  %37 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_iounmap(%struct.pci_dev* %35, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @free_netdev(%struct.net_device* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_release_regions(%struct.pci_dev* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = call i32 @pci_disable_device(%struct.pci_dev* %44)
  br label %46

46:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
