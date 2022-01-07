; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.qede_rdma_event_work = type { i32, i32, %struct.qede_dev* }

@qede_rdma_handle_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, i32)* @qede_rdma_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_rdma_add_event(%struct.qede_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_rdma_event_work*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %14 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %21 = call %struct.qede_rdma_event_work* @qede_rdma_get_free_event_node(%struct.qede_dev* %20)
  store %struct.qede_rdma_event_work* %21, %struct.qede_rdma_event_work** %5, align 8
  %22 = load %struct.qede_rdma_event_work*, %struct.qede_rdma_event_work** %5, align 8
  %23 = icmp ne %struct.qede_rdma_event_work* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %43

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.qede_rdma_event_work*, %struct.qede_rdma_event_work** %5, align 8
  %28 = getelementptr inbounds %struct.qede_rdma_event_work, %struct.qede_rdma_event_work* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %30 = load %struct.qede_rdma_event_work*, %struct.qede_rdma_event_work** %5, align 8
  %31 = getelementptr inbounds %struct.qede_rdma_event_work, %struct.qede_rdma_event_work* %30, i32 0, i32 2
  store %struct.qede_dev* %29, %struct.qede_dev** %31, align 8
  %32 = load %struct.qede_rdma_event_work*, %struct.qede_rdma_event_work** %5, align 8
  %33 = getelementptr inbounds %struct.qede_rdma_event_work, %struct.qede_rdma_event_work* %32, i32 0, i32 1
  %34 = load i32, i32* @qede_rdma_handle_event, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %37 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qede_rdma_event_work*, %struct.qede_rdma_event_work** %5, align 8
  %41 = getelementptr inbounds %struct.qede_rdma_event_work, %struct.qede_rdma_event_work* %40, i32 0, i32 1
  %42 = call i32 @queue_work(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %25, %24, %18, %11
  ret void
}

declare dso_local %struct.qede_rdma_event_work* @qede_rdma_get_free_event_node(%struct.qede_dev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
