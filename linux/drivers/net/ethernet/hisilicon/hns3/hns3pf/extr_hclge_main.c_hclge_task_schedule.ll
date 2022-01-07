; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_task_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_task_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@HCLGE_STATE_DOWN = common dso_local global i32 0, align 4
@HCLGE_STATE_REMOVING = common dso_local global i32 0, align 4
@HCLGE_STATE_SERVICE_SCHED = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_task_schedule(%struct.hclge_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @HCLGE_STATE_DOWN, align 4
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 4
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @HCLGE_STATE_REMOVING, align 4
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 4
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @HCLGE_STATE_SERVICE_SCHED, align 4
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 4
  %20 = call i32 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 1
  %34 = call i32 @cpumask_first(i32* %33)
  %35 = load i32, i32* @system_wq, align 4
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @mod_delayed_work_on(i32 %34, i32 %35, i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %22, %16, %10, %2
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mod_delayed_work_on(i32, i32, i32*, i64) #1

declare dso_local i32 @cpumask_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
