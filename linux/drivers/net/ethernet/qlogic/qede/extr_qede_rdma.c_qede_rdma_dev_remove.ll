; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@qedr_dev_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_rdma_dev_remove(%struct.qede_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %6 = call i32 @qede_rdma_supported(%struct.qede_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %48

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %14 = call i32 @qede_rdma_destroy_wq(%struct.qede_dev* %13)
  %15 = call i32 @mutex_lock(i32* @qedr_dev_list_lock)
  %16 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %23 = call i32 @_qede_rdma_dev_remove(%struct.qede_dev* %22)
  br label %24

24:                                               ; preds = %21, %12
  %25 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %26 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %29 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @list_del(i32* %30)
  %32 = call i32 @mutex_unlock(i32* @qedr_dev_list_lock)
  br label %48

33:                                               ; preds = %9
  %34 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %35 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = call i32 @mutex_lock(i32* @qedr_dev_list_lock)
  %41 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %42 = call i32 @_qede_rdma_dev_remove(%struct.qede_dev* %41)
  %43 = call i32 @mutex_unlock(i32* @qedr_dev_list_lock)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %46 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %8, %44, %24
  ret void
}

declare dso_local i32 @qede_rdma_supported(%struct.qede_dev*) #1

declare dso_local i32 @qede_rdma_destroy_wq(%struct.qede_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_qede_rdma_dev_remove(%struct.qede_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
