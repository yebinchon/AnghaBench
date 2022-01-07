; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_task_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_task_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32 }

@HCLGEVF_STATE_RST_SERVICE_SCHED = common dso_local global i32 0, align 4
@HCLGEVF_STATE_REMOVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclgevf_reset_task_schedule(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %3 = load i32, i32* @HCLGEVF_STATE_RST_SERVICE_SCHED, align 4
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %4, i32 0, i32 1
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @HCLGEVF_STATE_REMOVING, align 4
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 1
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @HCLGEVF_STATE_RST_SERVICE_SCHED, align 4
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %19, i32 0, i32 0
  %21 = call i32 @schedule_work(i32* %20)
  br label %22

22:                                               ; preds = %14, %8, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
