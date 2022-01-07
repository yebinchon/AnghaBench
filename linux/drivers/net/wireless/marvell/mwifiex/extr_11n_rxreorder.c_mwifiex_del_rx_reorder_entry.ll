; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_del_rx_reorder_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_del_rx_reorder_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.mwifiex_rx_reorder_tbl = type { i32, i32, %struct.mwifiex_rx_reorder_tbl*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_TID_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.mwifiex_rx_reorder_tbl*)* @mwifiex_del_rx_reorder_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_del_rx_reorder_entry(%struct.mwifiex_private* %0, %struct.mwifiex_rx_reorder_tbl* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_rx_reorder_tbl*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_rx_reorder_tbl* %1, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %6 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %7 = icmp ne %struct.mwifiex_rx_reorder_tbl* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %94

9:                                                ; preds = %2
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %9
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @flush_workqueue(i32 %35)
  br label %43

37:                                               ; preds = %9
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %37, %25
  %44 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %45 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %48 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* @MAX_TID_VALUE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @mwifiex_11n_dispatch_pkt_until_start_win(%struct.mwifiex_private* %54, %struct.mwifiex_rx_reorder_tbl* %55, i32 %56)
  %58 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %59 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i32 @del_timer_sync(i32* %60)
  %62 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %63 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 1
  %67 = call i32 @spin_lock_bh(i32* %66)
  %68 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %69 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %68, i32 0, i32 3
  %70 = call i32 @list_del(i32* %69)
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %75 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %74, i32 0, i32 2
  %76 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %75, align 8
  %77 = call i32 @kfree(%struct.mwifiex_rx_reorder_tbl* %76)
  %78 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %79 = call i32 @kfree(%struct.mwifiex_rx_reorder_tbl* %78)
  %80 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %81 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %86 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock_bh(i32* %92)
  br label %94

94:                                               ; preds = %43, %8
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mwifiex_11n_dispatch_pkt_until_start_win(%struct.mwifiex_private*, %struct.mwifiex_rx_reorder_tbl*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mwifiex_rx_reorder_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
