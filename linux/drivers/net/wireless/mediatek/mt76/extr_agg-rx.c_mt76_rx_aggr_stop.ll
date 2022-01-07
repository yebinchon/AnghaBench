; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_wcid = type { i32* }
%struct.mt76_rx_tid = type { i32 }

@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_rx_aggr_stop(%struct.mt76_dev* %0, %struct.mt76_wcid* %1, i64 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.mt76_wcid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mt76_rx_tid*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %10 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mt76_rx_tid* @rcu_dereference(i32 %14)
  store %struct.mt76_rx_tid* %15, %struct.mt76_rx_tid** %7, align 8
  %16 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %7, align 8
  %17 = icmp ne %struct.mt76_rx_tid* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %20 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rcu_assign_pointer(i32 %24, i32* null)
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %27 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %7, align 8
  %28 = call i32 @mt76_rx_aggr_shutdown(%struct.mt76_dev* %26, %struct.mt76_rx_tid* %27)
  %29 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %7, align 8
  %30 = load i32, i32* @rcu_head, align 4
  %31 = call i32 @kfree_rcu(%struct.mt76_rx_tid* %29, i32 %30)
  br label %32

32:                                               ; preds = %18, %3
  %33 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mt76_rx_tid* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @mt76_rx_aggr_shutdown(%struct.mt76_dev*, %struct.mt76_rx_tid*) #1

declare dso_local i32 @kfree_rcu(%struct.mt76_rx_tid*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
