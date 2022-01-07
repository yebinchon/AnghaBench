; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnx2 = type { i32, i32, i32, i32, i32, i32 }

@BNX2_FLAG_AER_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bnx2_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnx2*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnx2* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2* %8, %struct.bnx2** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 5
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 4
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_iounmap(i32 %19, i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @bnx2_free_stats_blk(%struct.net_device* %24)
  %26 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BNX2_FLAG_AER_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %37)
  %39 = load i32, i32* @BNX2_FLAG_AER_ENABLED, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %1
  %46 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %47 = call i32 @bnx2_release_firmware(%struct.bnx2* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @free_netdev(%struct.net_device* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_release_regions(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @pci_iounmap(i32, i32) #1

declare dso_local i32 @bnx2_free_stats_blk(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @bnx2_release_firmware(%struct.bnx2*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
