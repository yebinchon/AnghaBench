; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.il_priv = type { i32, i32, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_8__, i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"*** UNLOAD DRIVER ***\0A\00", align 1
@il_attribute_group = common dso_local global i32 0, align 4
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @il4965_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.il_priv* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.il_priv* %6, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = icmp ne %struct.il_priv* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %113

10:                                               ; preds = %1
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @wait_for_completion(i32* %13)
  %15 = call i32 @D_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = call i32 @il_dbgfs_unregister(%struct.il_priv* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @sysfs_remove_group(i32* %20, i32* @il_attribute_group)
  %22 = load i32, i32* @S_EXIT_PENDING, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 8
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = call i32 @il_leds_exit(%struct.il_priv* %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %10
  %33 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_unregister_hw(i32 %35)
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  br label %42

39:                                               ; preds = %10
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = call i32 @il4965_down(%struct.il_priv* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %44 = call i32 @il_apm_stop(%struct.il_priv* %43)
  %45 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 6
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %50 = call i32 @il_disable_interrupts(%struct.il_priv* %49)
  %51 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 6
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %56 = call i32 @il4965_synchronize_irq(%struct.il_priv* %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %58 = call i32 @il4965_dealloc_ucode_pci(%struct.il_priv* %57)
  %59 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %42
  %65 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %66 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 5
  %68 = call i32 @il4965_rx_queue_free(%struct.il_priv* %65, %struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %64, %42
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = call i32 @il4965_hw_txq_ctx_free(%struct.il_priv* %70)
  %72 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %73 = call i32 @il_eeprom_free(%struct.il_priv* %72)
  %74 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @flush_workqueue(i32* %76)
  %78 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @destroy_workqueue(i32* %80)
  %82 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 4
  store i32* null, i32** %83, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %90 = call i32 @free_irq(i32 %88, %struct.il_priv* %89)
  %91 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 3
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = call i32 @pci_disable_msi(%struct.TYPE_7__* %93)
  %95 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %96 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @iounmap(i32 %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %100 = call i32 @pci_release_regions(%struct.pci_dev* %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %102 = call i32 @pci_disable_device(%struct.pci_dev* %101)
  %103 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %104 = call i32 @il4965_uninit_drv(%struct.il_priv* %103)
  %105 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %106 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_kfree_skb(i32 %107)
  %109 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %110 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ieee80211_free_hw(i32 %111)
  br label %113

113:                                              ; preds = %69, %9
  ret void
}

declare dso_local %struct.il_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_dbgfs_unregister(%struct.il_priv*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_leds_exit(%struct.il_priv*) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @il4965_down(%struct.il_priv*) #1

declare dso_local i32 @il_apm_stop(%struct.il_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il4965_synchronize_irq(%struct.il_priv*) #1

declare dso_local i32 @il4965_dealloc_ucode_pci(%struct.il_priv*) #1

declare dso_local i32 @il4965_rx_queue_free(%struct.il_priv*, %struct.TYPE_8__*) #1

declare dso_local i32 @il4965_hw_txq_ctx_free(%struct.il_priv*) #1

declare dso_local i32 @il_eeprom_free(%struct.il_priv*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.il_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_7__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @il4965_uninit_drv(%struct.il_priv*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
