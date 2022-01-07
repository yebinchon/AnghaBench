; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_start_sge_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_start_sge_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SGE_QSETS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TX_RECLAIM_PERIOD = common dso_local global i64 0, align 8
@RX_RECLAIM_PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_start_sge_timers(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_qset*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SGE_QSETS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i64 %15
  store %struct.sge_qset* %16, %struct.sge_qset** %4, align 8
  %17 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %18 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %24 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @TX_RECLAIM_PERIOD, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @mod_timer(%struct.TYPE_4__* %24, i64 %27)
  br label %29

29:                                               ; preds = %22, %9
  %30 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %37 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %36, i32 0, i32 0
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* @RX_RECLAIM_PERIOD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @mod_timer(%struct.TYPE_4__* %37, i64 %40)
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
