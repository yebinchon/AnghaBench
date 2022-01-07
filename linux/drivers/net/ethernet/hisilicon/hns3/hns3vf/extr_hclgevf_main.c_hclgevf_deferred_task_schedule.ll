; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_deferred_task_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_deferred_task_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i64 }

@HCLGEVF_RESET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_deferred_task_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_deferred_task_schedule(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %3 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %9 = call i32 @hclgevf_mbx_task_schedule(%struct.hclgevf_dev* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @HCLGEVF_RESET_PENDING, align 4
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %18 = call i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev* %17)
  br label %19

19:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @hclgevf_mbx_task_schedule(%struct.hclgevf_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
