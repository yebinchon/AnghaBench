; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_quiesce_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_quiesce_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.sge_rspq** }
%struct.sge_rspq = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @quiesce_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quiesce_rx(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_rspq*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.sge_rspq**, %struct.sge_rspq*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sge_rspq*, %struct.sge_rspq** %16, i64 %18
  %20 = load %struct.sge_rspq*, %struct.sge_rspq** %19, align 8
  store %struct.sge_rspq* %20, %struct.sge_rspq** %4, align 8
  %21 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %22 = icmp ne %struct.sge_rspq* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %12
  %24 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %25 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %30 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %29, i32 0, i32 0
  %31 = call i32 @napi_disable(i32* %30)
  br label %32

32:                                               ; preds = %28, %23, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
