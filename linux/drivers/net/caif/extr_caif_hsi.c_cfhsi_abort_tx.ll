; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_abort_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_abort_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfhsi = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@CFHSI_TX_STATE_IDLE = common dso_local global i32 0, align 4
@CFHSI_SHUTDOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfhsi*)* @cfhsi_abort_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfhsi_abort_tx(%struct.cfhsi* %0) #0 {
  %2 = alloca %struct.cfhsi*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.cfhsi* %0, %struct.cfhsi** %2, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %6 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %9 = call %struct.sk_buff* @cfhsi_dequeue(%struct.cfhsi* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %36

13:                                               ; preds = %4
  %14 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %15 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %14, i32 0, i32 5
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %22 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @cfhsi_update_aggregation_stats(%struct.cfhsi* %28, %struct.sk_buff* %29, i32 -1)
  %31 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %32 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  br label %4

36:                                               ; preds = %12
  %37 = load i32, i32* @CFHSI_TX_STATE_IDLE, align 4
  %38 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %39 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @CFHSI_SHUTDOWN, align 4
  %41 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %42 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %41, i32 0, i32 3
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %36
  %46 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %47 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %46, i32 0, i32 2
  %48 = load i64, i64* @jiffies, align 8
  %49 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %50 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = call i32 @mod_timer(i32* %47, i64 %53)
  br label %55

55:                                               ; preds = %45, %36
  %56 = load %struct.cfhsi*, %struct.cfhsi** %2, align 8
  %57 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @cfhsi_dequeue(%struct.cfhsi*) #1

declare dso_local i32 @cfhsi_update_aggregation_stats(%struct.cfhsi*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
