; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_check_stop_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_check_stop_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ATH9K_HTC_TX_THRESHOLD = common dso_local global i64 0, align 8
@ATH9K_HTC_OP_TX_QUEUES_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_check_stop_queues(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %3 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ATH9K_HTC_TX_THRESHOLD, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATH9K_HTC_OP_TX_QUEUES_STOP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ATH9K_HTC_OP_TX_QUEUES_STOP, align 4
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_stop_queues(i32 %35)
  br label %37

37:                                               ; preds = %26, %18, %1
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock_bh(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
