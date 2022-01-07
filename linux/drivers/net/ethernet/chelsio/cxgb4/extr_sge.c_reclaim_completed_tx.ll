; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_reclaim_completed_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_reclaim_completed_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32 }

@MAX_TX_RECLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, i32, i32)* @reclaim_completed_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reclaim_completed_tx(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %11 = call i32 @reclaimable(%struct.sge_txq* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @MAX_TX_RECLAIM, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @free_tx_desc(%struct.adapter* %26, %struct.sge_txq* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %33 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %25, %4
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @reclaimable(%struct.sge_txq*) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.sge_txq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
