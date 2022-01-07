; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_init_rspq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_init_rspq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_rspq = type { i32, i32, i32, i64 }

@SGE_NCOUNTERS = common dso_local global i64 0, align 8
@QINTR_CNT_EN_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_rspq*, i64, i64, i32, i32)* @init_rspq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rspq(%struct.sge_rspq* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sge_rspq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sge_rspq* %0, %struct.sge_rspq** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @QINTR_TIMER_IDX_V(i64 %11)
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @SGE_NCOUNTERS, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @QINTR_CNT_EN_F, align 4
  br label %19

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %12, %20
  %22 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %23 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @SGE_NCOUNTERS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i64 [ %28, %27 ], [ 0, %29 ]
  %32 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %33 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %36 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %39 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local i32 @QINTR_TIMER_IDX_V(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
