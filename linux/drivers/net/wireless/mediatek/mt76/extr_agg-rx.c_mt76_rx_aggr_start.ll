; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_wcid = type { i32* }
%struct.mt76_rx_tid = type { i64, i32, i32, i32, %struct.mt76_dev* }

@reorder_buf = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt76_rx_aggr_reorder_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_rx_aggr_start(%struct.mt76_dev* %0, %struct.mt76_wcid* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_dev*, align 8
  %8 = alloca %struct.mt76_wcid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mt76_rx_tid*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %7, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %14 = load %struct.mt76_wcid*, %struct.mt76_wcid** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @mt76_rx_aggr_stop(%struct.mt76_dev* %13, %struct.mt76_wcid* %14, i64 %15)
  %17 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %18 = load i32, i32* @reorder_buf, align 4
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @struct_size(%struct.mt76_rx_tid* %17, i32 %18, i64 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mt76_rx_tid* @kzalloc(i32 %20, i32 %21)
  store %struct.mt76_rx_tid* %22, %struct.mt76_rx_tid** %12, align 8
  %23 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %24 = icmp ne %struct.mt76_rx_tid* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %53

28:                                               ; preds = %5
  %29 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %30 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %31 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %30, i32 0, i32 4
  store %struct.mt76_dev* %29, %struct.mt76_dev** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %34 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %37 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %39 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %38, i32 0, i32 2
  %40 = load i32, i32* @mt76_rx_aggr_reorder_work, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %43 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.mt76_wcid*, %struct.mt76_wcid** %8, align 8
  %46 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %12, align 8
  %52 = call i32 @rcu_assign_pointer(i32 %50, %struct.mt76_rx_tid* %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %28, %25
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @mt76_rx_aggr_stop(%struct.mt76_dev*, %struct.mt76_wcid*, i64) #1

declare dso_local %struct.mt76_rx_tid* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mt76_rx_tid*, i32, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mt76_rx_tid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
