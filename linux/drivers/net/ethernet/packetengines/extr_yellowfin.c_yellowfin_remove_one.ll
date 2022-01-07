; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_yellowfin.c_yellowfin_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_yellowfin.c_yellowfin_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.yellowfin_private = type { i32, i32, i32, i32, i32, i32, i32 }

@STATUS_TOTAL_SIZE = common dso_local global i32 0, align 4
@RX_TOTAL_SIZE = common dso_local global i32 0, align 4
@TX_TOTAL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @yellowfin_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yellowfin_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.yellowfin_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.yellowfin_private* @netdev_priv(%struct.net_device* %12)
  store %struct.yellowfin_private* %13, %struct.yellowfin_private** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load i32, i32* @STATUS_TOTAL_SIZE, align 4
  %16 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %17 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %20 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_free_consistent(%struct.pci_dev* %14, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load i32, i32* @RX_TOTAL_SIZE, align 4
  %25 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %26 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %29 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_free_consistent(%struct.pci_dev* %23, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* @TX_TOTAL_SIZE, align 4
  %34 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %35 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %38 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_free_consistent(%struct.pci_dev* %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @unregister_netdev(%struct.net_device* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load %struct.yellowfin_private*, %struct.yellowfin_private** %4, align 8
  %45 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pci_iounmap(%struct.pci_dev* %43, i32 %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pci_release_regions(%struct.pci_dev* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @free_netdev(%struct.net_device* %50)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.yellowfin_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
