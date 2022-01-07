; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_pci_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_pci_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.pci_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ipw2100_priv = type { %struct.TYPE_10__*, i32, i32, i32, %struct.net_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32 }

@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@ipw2100_attribute_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@ipw2100_firmware = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ipw2100_pci_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_pci_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ipw2100_priv* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ipw2100_priv* %6, %struct.ipw2100_priv** %3, align 8
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %7, i32 0, i32 4
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @STATUS_INITIALIZED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @sysfs_remove_group(i32* %21, i32* @ipw2100_attribute_group)
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %24 = call i32 @ipw2100_down(%struct.ipw2100_priv* %23)
  %25 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @unregister_netdev(%struct.net_device* %28)
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %31 = call i32 @ipw2100_kill_works(%struct.ipw2100_priv* %30)
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %33 = call i32 @ipw2100_queues_free(%struct.ipw2100_priv* %32)
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %35 = call i32 @ipw2100_snapshot_free(%struct.ipw2100_priv* %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.ipw2100_priv* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_iounmap(%struct.pci_dev* %41, i32 %44)
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wiphy_unregister(i32 %51)
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @free_libipw(%struct.net_device* %60, i32 0)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = call i32 @pci_release_regions(%struct.pci_dev* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = call i32 @pci_disable_device(%struct.pci_dev* %64)
  %66 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ipw2100_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ipw2100_down(%struct.ipw2100_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ipw2100_kill_works(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_queues_free(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_snapshot_free(%struct.ipw2100_priv*) #1

declare dso_local i32 @free_irq(i32, %struct.ipw2100_priv*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @wiphy_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_libipw(%struct.net_device*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
