; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.tg3 = type { i32*, i32*, i32 }

@USE_PHYLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @tg3_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tg3*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %62

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.tg3* @netdev_priv(%struct.net_device* %10)
  store %struct.tg3* %11, %struct.tg3** %4, align 8
  %12 = load %struct.tg3*, %struct.tg3** %4, align 8
  %13 = call i32 @tg3_ptp_fini(%struct.tg3* %12)
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @release_firmware(i32 %16)
  %18 = load %struct.tg3*, %struct.tg3** %4, align 8
  %19 = call i32 @tg3_reset_task_cancel(%struct.tg3* %18)
  %20 = load %struct.tg3*, %struct.tg3** %4, align 8
  %21 = load i32, i32* @USE_PHYLIB, align 4
  %22 = call i64 @tg3_flag(%struct.tg3* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = load %struct.tg3*, %struct.tg3** %4, align 8
  %26 = call i32 @tg3_phy_fini(%struct.tg3* %25)
  %27 = load %struct.tg3*, %struct.tg3** %4, align 8
  %28 = call i32 @tg3_mdio_fini(%struct.tg3* %27)
  br label %29

29:                                               ; preds = %24, %9
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @unregister_netdev(%struct.net_device* %30)
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.tg3*, %struct.tg3** %4, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @iounmap(i32* %39)
  %41 = load %struct.tg3*, %struct.tg3** %4, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.tg3*, %struct.tg3** %4, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.tg3*, %struct.tg3** %4, align 8
  %50 = getelementptr inbounds %struct.tg3, %struct.tg3* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @iounmap(i32* %51)
  %53 = load %struct.tg3*, %struct.tg3** %4, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @free_netdev(%struct.net_device* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = call i32 @pci_release_regions(%struct.pci_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_disable_device(%struct.pci_dev* %60)
  br label %62

62:                                               ; preds = %55, %1
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tg3_ptp_fini(%struct.tg3*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @tg3_reset_task_cancel(%struct.tg3*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_fini(%struct.tg3*) #1

declare dso_local i32 @tg3_mdio_fini(%struct.tg3*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
