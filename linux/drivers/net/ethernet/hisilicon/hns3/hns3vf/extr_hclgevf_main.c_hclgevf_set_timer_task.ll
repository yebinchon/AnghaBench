; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_timer_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_timer_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclgevf_dev = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@HCLGEVF_STATE_SERVICE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32)* @hclgevf_set_timer_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_set_timer_task(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %6)
  store %struct.hclgevf_dev* %7, %struct.hclgevf_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 2
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @mod_timer(i32* %12, i64 %15)
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %18, i32 0, i32 2
  %20 = call i32 @del_timer_sync(i32* %19)
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 1
  %23 = call i32 @cancel_work_sync(i32* %22)
  %24 = load i32, i32* @HCLGEVF_STATE_SERVICE_SCHED, align 4
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %17, %10
  ret void
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
