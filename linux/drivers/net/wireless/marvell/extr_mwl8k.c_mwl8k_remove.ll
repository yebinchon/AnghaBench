; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@FW_STATE_ERROR = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mwl8k_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = icmp eq %struct.ieee80211_hw* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %95

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %13, align 8
  store %struct.mwl8k_priv* %14, %struct.mwl8k_priv** %4, align 8
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 8
  %17 = call i32 @wait_for_completion(i32* %16)
  %18 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FW_STATE_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %25 = call i32 @mwl8k_hw_reset(%struct.mwl8k_priv* %24)
  br label %78

26:                                               ; preds = %11
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %27)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %29)
  %31 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %32 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %31, i32 0, i32 7
  %33 = call i32 @tasklet_kill(i32* %32)
  %34 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %34, i32 0, i32 6
  %36 = call i32 @tasklet_kill(i32* %35)
  %37 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %38 = call i32 @mwl8k_hw_reset(%struct.mwl8k_priv* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %49, %26
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %42 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = call i32 @mwl8k_txq_reclaim(%struct.ieee80211_hw* %45, i32 %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %39

52:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %62, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %56 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @mwl8k_txq_deinit(%struct.ieee80211_hw* %59, i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %53

65:                                               ; preds = %53
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = call i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw* %66, i32 0)
  %68 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %69 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %72 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %75 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_free_consistent(i32 %70, i32 4, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %65, %23
  %79 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %80 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %81 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pci_iounmap(%struct.pci_dev* %79, i32 %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %86 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pci_iounmap(%struct.pci_dev* %84, i32 %87)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %90 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %92 = call i32 @pci_release_regions(%struct.pci_dev* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = call i32 @pci_disable_device(%struct.pci_dev* %93)
  br label %95

95:                                               ; preds = %78, %10
  ret void
}

declare dso_local %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mwl8k_hw_reset(%struct.mwl8k_priv*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_txq_reclaim(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @mwl8k_txq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
