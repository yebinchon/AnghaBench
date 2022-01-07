; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }

@STATE_UNINIT = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"shutdown successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @efx_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.efx_nic* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.efx_nic* %5, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = icmp ne %struct.efx_nic* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i32 @efx_dissociate(%struct.efx_nic* %11)
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_close(i32 %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = call i32 @efx_disable_interrupts(%struct.efx_nic* %17)
  %19 = load i32, i32* @STATE_UNINIT, align 4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = call i32 (...) @rtnl_unlock()
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %26, align 8
  %28 = icmp ne i32 (%struct.efx_nic*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %9
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %33, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = call i32 %34(%struct.efx_nic* %35)
  br label %37

37:                                               ; preds = %29, %9
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = call i32 @efx_unregister_netdev(%struct.efx_nic* %38)
  %40 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %41 = call i32 @efx_mtd_remove(%struct.efx_nic* %40)
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = call i32 @efx_pci_remove_main(%struct.efx_nic* %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %45 = call i32 @efx_fini_io(%struct.efx_nic* %44)
  %46 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %47 = load i32, i32* @drv, align 4
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_dbg(%struct.efx_nic* %46, i32 %47, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = call i32 @efx_fini_struct(%struct.efx_nic* %52)
  %54 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @free_netdev(i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %58)
  br label %60

60:                                               ; preds = %37, %8
  ret void
}

declare dso_local %struct.efx_nic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @efx_dissociate(%struct.efx_nic*) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @efx_disable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @efx_unregister_netdev(%struct.efx_nic*) #1

declare dso_local i32 @efx_mtd_remove(%struct.efx_nic*) #1

declare dso_local i32 @efx_pci_remove_main(%struct.efx_nic*) #1

declare dso_local i32 @efx_fini_io(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_fini_struct(%struct.efx_nic*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
