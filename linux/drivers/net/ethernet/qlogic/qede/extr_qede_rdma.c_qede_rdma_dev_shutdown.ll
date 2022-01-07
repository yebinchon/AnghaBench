; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_dev_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_dev_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i32)* }
%struct.qede_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@qedr_dev_list_lock = common dso_local global i32 0, align 4
@qedr_drv = common dso_local global %struct.TYPE_4__* null, align 8
@QEDE_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*)* @qede_rdma_dev_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_rdma_dev_shutdown(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %3 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %4 = call i32 @qede_rdma_supported(%struct.qede_dev* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @qedr_dev_list_lock)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedr_drv, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %13 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedr_drv, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i64, i32)*, i32 (i64, i32)** %19, align 8
  %21 = icmp ne i32 (i64, i32)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedr_drv, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (i64, i32)*, i32 (i64, i32)** %24, align 8
  %26 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %27 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @QEDE_CLOSE, align 4
  %31 = call i32 %25(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %17, %11, %7
  %33 = call i32 @mutex_unlock(i32* @qedr_dev_list_lock)
  br label %34

34:                                               ; preds = %32, %6
  ret void
}

declare dso_local i32 @qede_rdma_supported(%struct.qede_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
