; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.skge_hw = type { i32, i32, i32, i64, i32, %struct.net_device** }
%struct.net_device = type { i32 }

@B0_IMSK = common dso_local global i32 0, align 4
@B0_LED = common dso_local global i32 0, align 4
@LED_STAT_OFF = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @skge_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.skge_hw* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.skge_hw* %7, %struct.skge_hw** %3, align 8
  %8 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %9 = icmp ne %struct.skge_hw* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %13 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %12, i32 0, i32 5
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @unregister_netdev(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %24 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %23, i32 0, i32 5
  %25 = load %struct.net_device**, %struct.net_device*** %24, align 8
  %26 = getelementptr inbounds %struct.net_device*, %struct.net_device** %25, i64 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %4, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @unregister_netdev(%struct.net_device* %28)
  %30 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %31 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %30, i32 0, i32 4
  %32 = call i32 @tasklet_kill(i32* %31)
  %33 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %34 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %37 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %39 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %22
  %43 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %44 = load i32, i32* @B0_IMSK, align 4
  %45 = call i32 @skge_write32(%struct.skge_hw* %43, i32 %44, i32 0)
  %46 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %47 = load i32, i32* @B0_IMSK, align 4
  %48 = call i32 @skge_read32(%struct.skge_hw* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %22
  %50 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %51 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %54 = load i32, i32* @B0_LED, align 4
  %55 = load i32, i32* @LED_STAT_OFF, align 4
  %56 = call i32 @skge_write16(%struct.skge_hw* %53, i32 %54, i32 %55)
  %57 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %58 = load i32, i32* @B0_CTST, align 4
  %59 = load i32, i32* @CS_RST_SET, align 4
  %60 = call i32 @skge_write8(%struct.skge_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %62 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %70 = call i32 @free_irq(i32 %68, %struct.skge_hw* %69)
  br label %71

71:                                               ; preds = %65, %49
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = call i32 @pci_release_regions(%struct.pci_dev* %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = call i32 @pci_disable_device(%struct.pci_dev* %74)
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call i32 @free_netdev(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @free_netdev(%struct.net_device* %82)
  %84 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %85 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @iounmap(i32 %86)
  %88 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %89 = call i32 @kfree(%struct.skge_hw* %88)
  br label %90

90:                                               ; preds = %81, %10
  ret void
}

declare dso_local %struct.skge_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.skge_hw*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.skge_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
