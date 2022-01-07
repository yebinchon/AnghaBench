; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_msdu_buff_replenish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_msdu_buff_replenish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ATH10K_HTT_MAX_NUM_REFILL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HTT_RX_RING_REFILL_RETRY_MS = common dso_local global i32 0, align 4
@HTT_RX_RING_REFILL_RESCHED_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htt*)* @ath10k_htt_rx_msdu_buff_replenish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_msdu_buff_replenish(%struct.ath10k_htt* %0) #0 {
  %2 = alloca %struct.ath10k_htt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %2, align 8
  %6 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %7 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %11 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %15 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %13, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @ATH10K_HTT_MAX_NUM_REFILL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @min(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ath10k_htt_rx_ring_fill_n(%struct.ath10k_htt* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %34 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i32, i32* @HTT_RX_RING_REFILL_RETRY_MS, align 4
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @mod_timer(i32* %35, i64 %39)
  br label %54

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %46 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @HTT_RX_RING_REFILL_RESCHED_MS, align 4
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @mod_timer(i32* %47, i64 %51)
  br label %53

53:                                               ; preds = %44, %41
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %56 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_bh(i32* %57)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ath10k_htt_rx_ring_fill_n(%struct.ath10k_htt*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
