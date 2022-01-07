; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_keep_alive_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_keep_alive_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32 }
%struct.timer_list = type { i32 }

@keep_alive_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HCLGEVF_KEEP_ALIVE_TASK_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@hdev = common dso_local global %struct.hclgevf_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hclgevf_keep_alive_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_keep_alive_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hclgevf_dev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %5 = ptrtoint %struct.hclgevf_dev* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @keep_alive_timer, align 4
  %8 = call %struct.hclgevf_dev* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.hclgevf_dev* %8, %struct.hclgevf_dev** %3, align 8
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 1
  %11 = call i32 @schedule_work(i32* %10)
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 0
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @HCLGEVF_KEEP_ALIVE_TASK_INTERVAL, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = call i32 @mod_timer(i32* %13, i64 %19)
  ret void
}

declare dso_local %struct.hclgevf_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
