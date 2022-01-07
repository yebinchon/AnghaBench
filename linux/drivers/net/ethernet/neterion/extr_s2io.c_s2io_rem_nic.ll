; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_rem_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_rem_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.s2io_nic = type { i32, i32, i32, i32 }

@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Driver Data is NULL!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @s2io_rem_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_rem_nic(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.s2io_nic*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp eq %struct.net_device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ERR_DBG, align 4
  %11 = call i32 @DBG_PRINT(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %13)
  store %struct.s2io_nic* %14, %struct.s2io_nic** %4, align 8
  %15 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %16 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %15, i32 0, i32 3
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %19 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %18, i32 0, i32 2
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @unregister_netdev(%struct.net_device* %21)
  %23 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %24 = call i32 @free_shared_mem(%struct.s2io_nic* %23)
  %25 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %26 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %30 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_release_regions(%struct.pci_dev* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @free_netdev(%struct.net_device* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_disable_device(%struct.pci_dev* %37)
  br label %39

39:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*) #1

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_shared_mem(%struct.s2io_nic*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
