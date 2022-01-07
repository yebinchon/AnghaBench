; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_sge_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_sge_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sge_params = type { %struct.qset_params*, i64 }
%struct.qset_params = type { i32, i32, i32, i32, i32, i32*, i64 }

@SGE_QSETS = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i64 0, align 8
@TXQ_OFLD = common dso_local global i64 0, align 8
@TXQ_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_sge_prep(%struct.adapter* %0, %struct.sge_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qset_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_params* %1, %struct.sge_params** %4, align 8
  %7 = call i64 @SKB_DATA_ALIGN(i32 4)
  %8 = sub i64 16380, %7
  %9 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %10 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %55, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SGE_QSETS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %17 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %16, i32 0, i32 0
  %18 = load %struct.qset_params*, %struct.qset_params** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %18, i64 %20
  store %struct.qset_params* %21, %struct.qset_params** %6, align 8
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %29 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %31 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %30, i32 0, i32 1
  store i32 5, i32* %31, align 4
  %32 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %33 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %32, i32 0, i32 2
  store i32 1024, i32* %33, align 8
  %34 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %35 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %34, i32 0, i32 3
  store i32 1024, i32* %35, align 4
  %36 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %37 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %36, i32 0, i32 4
  store i32 512, i32* %37, align 8
  %38 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %39 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @TXQ_ETH, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 1024, i32* %42, align 4
  %43 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %44 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @TXQ_OFLD, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 1024, i32* %47, align 4
  %48 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %49 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @TXQ_CTRL, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 256, i32* %52, align 4
  %53 = load %struct.qset_params*, %struct.qset_params** %6, align 8
  %54 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %15
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_init(i32* %61)
  ret void
}

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
