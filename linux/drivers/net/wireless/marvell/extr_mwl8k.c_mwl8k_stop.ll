; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@MWL8K_HIU_A2H_INTERRUPT_MASK = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @mwl8k_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  store %struct.mwl8k_priv* %7, %struct.mwl8k_priv** %3, align 8
  %8 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @mwl8k_cmd_radio_disable(%struct.ieee80211_hw* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %16)
  %18 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 0, i64 %22)
  %24 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.ieee80211_hw* %34)
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %15
  %39 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %39, i32 0, i32 5
  %41 = call i32 @cancel_work_sync(i32* %40)
  %42 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %42, i32 0, i32 4
  %44 = call i32 @cancel_work_sync(i32* %43)
  %45 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %46 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @dev_kfree_skb(i32* %52)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %55, i32 0, i32 2
  %57 = call i32 @tasklet_disable(i32* %56)
  %58 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %58, i32 0, i32 1
  %60 = call i32 @tasklet_disable(i32* %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %71, %54
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %64 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @INT_MAX, align 4
  %70 = call i32 @mwl8k_txq_reclaim(%struct.ieee80211_hw* %67, i32 %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %61

74:                                               ; preds = %61
  ret void
}

declare dso_local i32 @mwl8k_cmd_radio_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_txq_reclaim(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
