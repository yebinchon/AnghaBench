; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_t4_free_uld_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_t4_free_uld_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_ofld_rxq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, %struct.sge_ofld_rxq*)* @t4_free_uld_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_free_uld_rxqs(%struct.adapter* %0, i32 %1, %struct.sge_ofld_rxq* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sge_ofld_rxq*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sge_ofld_rxq* %2, %struct.sge_ofld_rxq** %6, align 8
  br label %7

7:                                                ; preds = %33, %3
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %12 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %19 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %18, i32 0, i32 1
  %20 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %21 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %27 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %26, i32 0, i32 0
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi %struct.TYPE_4__* [ %27, %25 ], [ null, %28 ]
  %31 = call i32 @free_rspq_fl(%struct.adapter* %17, %struct.TYPE_3__* %19, %struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %29, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %37 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %36, i32 1
  store %struct.sge_ofld_rxq* %37, %struct.sge_ofld_rxq** %6, align 8
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local i32 @free_rspq_fl(%struct.adapter*, %struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
