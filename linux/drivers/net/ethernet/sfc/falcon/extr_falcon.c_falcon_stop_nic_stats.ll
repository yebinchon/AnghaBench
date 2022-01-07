; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_stop_nic_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_stop_nic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @falcon_stop_nic_stats(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %5, i32 0, i32 1
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  store %struct.falcon_nic_data* %7, %struct.falcon_nic_data** %3, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %13 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_bh(i32* %17)
  %19 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %20 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %19, i32 0, i32 1
  %21 = call i32 @del_timer_sync(i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %39, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %27 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %34 = call i64 @FALCON_XMAC_STATS_DMA_FLAG(%struct.ef4_nic* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %42

37:                                               ; preds = %32
  %38 = call i32 @msleep(i32 1)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %22

42:                                               ; preds = %36, %30
  %43 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %44 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %47 = call i32 @falcon_stats_complete(%struct.ef4_nic* %46)
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %49 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @FALCON_XMAC_STATS_DMA_FLAG(%struct.ef4_nic*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @falcon_stats_complete(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
