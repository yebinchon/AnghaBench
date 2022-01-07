; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_service_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_service_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32 }
%struct.timer_list = type { i32 }

@service_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HCLGEVF_GENERAL_TASK_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@hdev = common dso_local global %struct.hclgevf_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hclgevf_service_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_service_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hclgevf_dev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %5 = ptrtoint %struct.hclgevf_dev* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @service_timer, align 4
  %8 = call %struct.hclgevf_dev* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.hclgevf_dev* %8, %struct.hclgevf_dev** %3, align 8
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* @HCLGEVF_GENERAL_TASK_INTERVAL, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = call i32 @mod_timer(i32* %10, i64 %16)
  %18 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %23 = call i32 @hclgevf_task_schedule(%struct.hclgevf_dev* %22)
  ret void
}

declare dso_local %struct.hclgevf_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @hclgevf_task_schedule(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
