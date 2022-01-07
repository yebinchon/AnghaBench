; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis900_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis900_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.sis900_private = type { i32, i32, i32, i32, i32, %struct.mii_phy* }
%struct.mii_phy = type { %struct.mii_phy* }

@RX_TOTAL_SIZE = common dso_local global i32 0, align 4
@TX_TOTAL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sis900_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis900_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sis900_private*, align 8
  %5 = alloca %struct.mii_phy*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sis900_private* @netdev_priv(%struct.net_device* %8)
  store %struct.sis900_private* %9, %struct.sis900_private** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @unregister_netdev(%struct.net_device* %10)
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %14 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %13, i32 0, i32 5
  %15 = load %struct.mii_phy*, %struct.mii_phy** %14, align 8
  %16 = icmp ne %struct.mii_phy* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %19 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %18, i32 0, i32 5
  %20 = load %struct.mii_phy*, %struct.mii_phy** %19, align 8
  store %struct.mii_phy* %20, %struct.mii_phy** %5, align 8
  %21 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %22 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %21, i32 0, i32 0
  %23 = load %struct.mii_phy*, %struct.mii_phy** %22, align 8
  %24 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %25 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %24, i32 0, i32 5
  store %struct.mii_phy* %23, %struct.mii_phy** %25, align 8
  %26 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %27 = call i32 @kfree(%struct.mii_phy* %26)
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* @RX_TOTAL_SIZE, align 4
  %31 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %32 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %35 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_free_consistent(%struct.pci_dev* %29, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = load i32, i32* @TX_TOTAL_SIZE, align 4
  %40 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %41 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %44 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_free_consistent(%struct.pci_dev* %38, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %49 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pci_iounmap(%struct.pci_dev* %47, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @free_netdev(%struct.net_device* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_release_regions(%struct.pci_dev* %54)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.sis900_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.mii_phy*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
