; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bnxt_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnxt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnxt* @netdev_priv(%struct.net_device* %7)
  store %struct.bnxt* %8, %struct.bnxt** %4, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = call i64 @BNXT_PF(%struct.bnxt* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %14 = call i32 @bnxt_sriov_disable(%struct.bnxt* %13)
  %15 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %16 = call i32 @bnxt_dl_unregister(%struct.bnxt* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @unregister_netdev(%struct.net_device* %20)
  %22 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %23 = call i32 @bnxt_shutdown_tc(%struct.bnxt* %22)
  %24 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %25 = call i32 @bnxt_cancel_sp_work(%struct.bnxt* %24)
  %26 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %29 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %28)
  %30 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %31 = call i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt* %30)
  %32 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %33 = call i32 @bnxt_free_hwrm_resources(%struct.bnxt* %32)
  %34 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %35 = call i32 @bnxt_free_hwrm_short_cmd_req(%struct.bnxt* %34)
  %36 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %37 = call i32 @bnxt_ethtool_free(%struct.bnxt* %36)
  %38 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %39 = call i32 @bnxt_dcb_free(%struct.bnxt* %38)
  %40 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %47 = call i32 @bnxt_cleanup_pci(%struct.bnxt* %46)
  %48 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %49 = call i32 @bnxt_free_ctx_mem(%struct.bnxt* %48)
  %50 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %57 = call i32 @bnxt_free_port_stats(%struct.bnxt* %56)
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @free_netdev(%struct.net_device* %58)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @bnxt_sriov_disable(%struct.bnxt*) #1

declare dso_local i32 @bnxt_dl_unregister(%struct.bnxt*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @bnxt_shutdown_tc(%struct.bnxt*) #1

declare dso_local i32 @bnxt_cancel_sp_work(%struct.bnxt*) #1

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_hwrm_resources(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_hwrm_short_cmd_req(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ethtool_free(%struct.bnxt*) #1

declare dso_local i32 @bnxt_dcb_free(%struct.bnxt*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bnxt_cleanup_pci(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_ctx_mem(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_port_stats(%struct.bnxt*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
