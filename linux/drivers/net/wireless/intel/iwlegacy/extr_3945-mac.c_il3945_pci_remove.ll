; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.il_priv = type { i32, i64, i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"*** UNLOAD DRIVER ***\0A\00", align 1
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@il3945_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @il3945_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_pci_remove(%struct.pci_dev* %0) #0 {
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
  br label %121

10:                                               ; preds = %1
  %11 = call i32 @D_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = call i32 @il_dbgfs_unregister(%struct.il_priv* %12)
  %14 = load i32, i32* @S_EXIT_PENDING, align 4
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 9
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = call i32 @il_leds_exit(%struct.il_priv* %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %10
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ieee80211_unregister_hw(i32 %27)
  %29 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  br label %34

31:                                               ; preds = %10
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = call i32 @il3945_down(%struct.il_priv* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %36 = call i32 @il_apm_stop(%struct.il_priv* %35)
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 7
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %42 = call i32 @il_disable_interrupts(%struct.il_priv* %41)
  %43 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 7
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %48 = call i32 @il3945_synchronize_irq(%struct.il_priv* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @sysfs_remove_group(i32* %51, i32* @il3945_attribute_group)
  %53 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @cancel_delayed_work_sync(i32* %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %58 = call i32 @il3945_dealloc_ucode_pci(%struct.il_priv* %57)
  %59 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %34
  %65 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %66 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 5
  %68 = call i32 @il3945_rx_queue_free(%struct.il_priv* %65, %struct.TYPE_6__* %67)
  br label %69

69:                                               ; preds = %64, %34
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = call i32 @il3945_hw_txq_ctx_free(%struct.il_priv* %70)
  %72 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %73 = call i32 @il3945_unset_hw_params(%struct.il_priv* %72)
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
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %88 = call i32 @free_irq(i32 %86, %struct.il_priv* %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %90 = call i32 @pci_disable_msi(%struct.pci_dev* %89)
  %91 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @iounmap(i32 %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %96 = call i32 @pci_release_regions(%struct.pci_dev* %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = call i32 @pci_disable_device(%struct.pci_dev* %97)
  %99 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %100 = call i32 @il_free_channel_map(%struct.il_priv* %99)
  %101 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %102 = call i32 @il_free_geos(%struct.il_priv* %101)
  %103 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @kfree(i32 %105)
  %107 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %69
  %112 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %113 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dev_kfree_skb(i64 %114)
  br label %116

116:                                              ; preds = %111, %69
  %117 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ieee80211_free_hw(i32 %119)
  br label %121

121:                                              ; preds = %116, %9
  ret void
}

declare dso_local %struct.il_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_dbgfs_unregister(%struct.il_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_leds_exit(%struct.il_priv*) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @il3945_down(%struct.il_priv*) #1

declare dso_local i32 @il_apm_stop(%struct.il_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il3945_synchronize_irq(%struct.il_priv*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @il3945_dealloc_ucode_pci(%struct.il_priv*) #1

declare dso_local i32 @il3945_rx_queue_free(%struct.il_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @il3945_hw_txq_ctx_free(%struct.il_priv*) #1

declare dso_local i32 @il3945_unset_hw_params(%struct.il_priv*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.il_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @il_free_channel_map(%struct.il_priv*) #1

declare dso_local i32 @il_free_geos(%struct.il_priv*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
