; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fm10k_intfc = type { i64, i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i64 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @fm10k_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.fm10k_intfc* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.fm10k_intfc* %6, %struct.fm10k_intfc** %3, align 8
  %7 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %8 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %7, i32 0, i32 4
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %10, i32 0, i32 3
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %14 = call i32 @fm10k_stop_service_event(%struct.fm10k_intfc* %13)
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %16 = call i32 @fm10k_stop_macvlan_task(%struct.fm10k_intfc* %15)
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc* %17, i32 %20, i32 1)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETREG_REGISTERED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @unregister_netdev(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @fm10k_iov_disable(%struct.pci_dev* %31)
  %33 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %34 = call i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc* %33)
  %35 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %36 = call i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc* %35)
  %37 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %38 = call i32 @fm10k_dbg_intfc_exit(%struct.fm10k_intfc* %37)
  %39 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %40 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %45 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @iounmap(i64 %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %50 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @iounmap(i64 %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @free_netdev(%struct.net_device* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = call i32 @pci_release_mem_regions(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = call i32 @pci_disable_device(%struct.pci_dev* %59)
  ret void
}

declare dso_local %struct.fm10k_intfc* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @fm10k_stop_service_event(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_stop_macvlan_task(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc*, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @fm10k_iov_disable(%struct.pci_dev*) #1

declare dso_local i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_dbg_intfc_exit(%struct.fm10k_intfc*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
