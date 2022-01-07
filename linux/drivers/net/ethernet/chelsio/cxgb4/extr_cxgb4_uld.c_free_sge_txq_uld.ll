; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_free_sge_txq_uld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_free_sge_txq_uld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.sge_uld_txq_info = type { i32, %struct.sge_uld_txq* }
%struct.sge_uld_txq = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_uld_txq_info*)* @free_sge_txq_uld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_sge_txq_uld(%struct.adapter* %0, %struct.sge_uld_txq_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_uld_txq_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sge_uld_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_uld_txq_info* %1, %struct.sge_uld_txq_info** %4, align 8
  %8 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %4, align 8
  %9 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %11
  %16 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %4, align 8
  %17 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %16, i32 0, i32 1
  %18 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %18, i64 %20
  store %struct.sge_uld_txq* %21, %struct.sge_uld_txq** %7, align 8
  %22 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %23 = icmp ne %struct.sge_uld_txq* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %15
  %25 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %26 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %32 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %31, i32 0, i32 2
  %33 = call i32 @tasklet_kill(i32* %32)
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %42 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @t4_ofld_eq_free(%struct.adapter* %34, i32 %37, i32 %40, i32 0, i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %48 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %47, i32 0, i32 0
  %49 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %50 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @free_tx_desc(%struct.adapter* %46, %struct.TYPE_3__* %48, i32 %52, i32 0)
  %54 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %55 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @kfree(i32 %57)
  %59 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %60 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %59, i32 0, i32 1
  %61 = call i32 @__skb_queue_purge(i32* %60)
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %64 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %63, i32 0, i32 0
  %65 = call i32 @free_txq(%struct.adapter* %62, %struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %30, %24, %15
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %11

70:                                               ; preds = %11
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @t4_ofld_eq_free(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @free_txq(%struct.adapter*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
