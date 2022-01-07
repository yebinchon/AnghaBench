; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_rx_tid = type { i32, i32, i32, i64, %struct.sk_buff**, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.mt76_rx_tid*)* @mt76_rx_aggr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_rx_aggr_shutdown(%struct.mt76_dev* %0, %struct.mt76_rx_tid* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_rx_tid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_rx_tid* %1, %struct.mt76_rx_tid** %4, align 8
  %8 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %9 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %12 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %11, i32 0, i32 5
  %13 = call i32 @cancel_delayed_work(i32* %12)
  %14 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %15 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %18 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %48, %2
  %20 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %21 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %51

30:                                               ; preds = %28
  %31 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %32 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %31, i32 0, i32 4
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %43 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %19

51:                                               ; preds = %28
  %52 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %4, align 8
  %53 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_bh(i32* %53)
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
