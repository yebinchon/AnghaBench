; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_sge_queue_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_sge_queue_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@uld_mutex = common dso_local global i32 0, align 4
@CXGB4_TX_MAX = common dso_local global i32 0, align 4
@CXGB4_ULD_MAX = common dso_local global i32 0, align 4
@MAX_CTRL_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @sge_queue_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_queue_entries(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @mutex_lock(i32* @uld_mutex)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CXGB4_TX_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @sge_qinfo_uld_txq_entries(%struct.adapter* %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6

21:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @sge_qinfo_uld_rxq_entries(%struct.adapter* %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @sge_qinfo_uld_ciq_entries(%struct.adapter* %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %22

44:                                               ; preds = %22
  %45 = call i32 @mutex_unlock(i32* @uld_mutex)
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %49, i32 4)
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @MAX_CTRL_QUEUES, align 4
  %54 = call i32 @DIV_ROUND_UP(i32 %53, i32 4)
  %55 = add nsw i32 %52, %54
  %56 = add nsw i32 %55, 1
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sge_qinfo_uld_txq_entries(%struct.adapter*, i32) #1

declare dso_local i64 @sge_qinfo_uld_rxq_entries(%struct.adapter*, i32) #1

declare dso_local i64 @sge_qinfo_uld_ciq_entries(%struct.adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
