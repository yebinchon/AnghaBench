; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.alx_priv = type { i32, i32, i32, %struct.alx_hw }
%struct.alx_hw = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @alx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.alx_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.alx_priv* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.alx_priv* %6, %struct.alx_priv** %3, align 8
  %7 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 3
  store %struct.alx_hw* %8, %struct.alx_hw** %4, align 8
  %9 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %9, i32 0, i32 2
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %13 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %12, i32 0, i32 1
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %16 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %17 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @alx_set_macaddr(%struct.alx_hw* %15, i32 %18)
  %20 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %21 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @unregister_netdev(i32 %22)
  %24 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %25 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iounmap(i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_release_mem_regions(%struct.pci_dev* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @pci_disable_device(%struct.pci_dev* %32)
  %34 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %35 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @free_netdev(i32 %36)
  ret void
}

declare dso_local %struct.alx_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @alx_set_macaddr(%struct.alx_hw*, i32) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
