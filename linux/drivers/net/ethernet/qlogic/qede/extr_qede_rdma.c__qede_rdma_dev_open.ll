; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c__qede_rdma_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c__qede_rdma_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i32)* }
%struct.qede_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@qedr_drv = common dso_local global %struct.TYPE_4__* null, align 8
@QEDE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*)* @_qede_rdma_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_qede_rdma_dev_open(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedr_drv, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %7 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedr_drv, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i64, i32)*, i32 (i64, i32)** %13, align 8
  %15 = icmp ne i32 (i64, i32)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedr_drv, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (i64, i32)*, i32 (i64, i32)** %18, align 8
  %20 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %21 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @QEDE_UP, align 4
  %25 = call i32 %19(i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %11, %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
