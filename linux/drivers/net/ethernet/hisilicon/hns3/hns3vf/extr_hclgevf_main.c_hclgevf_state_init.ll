; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_state_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@hclgevf_mailbox_service_task = common dso_local global i32 0, align 4
@HCLGEVF_STATE_MBX_SERVICE_SCHED = common dso_local global i32 0, align 4
@HCLGEVF_STATE_MBX_HANDLING = common dso_local global i32 0, align 4
@hclgevf_service_timer = common dso_local global i32 0, align 4
@hclgevf_service_task = common dso_local global i32 0, align 4
@HCLGEVF_STATE_SERVICE_SCHED = common dso_local global i32 0, align 4
@hclgevf_reset_service_task = common dso_local global i32 0, align 4
@HCLGEVF_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_state_init(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %3 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %3, i32 0, i32 5
  %5 = load i32, i32* @hclgevf_mailbox_service_task, align 4
  %6 = call i32 @INIT_WORK(i32* %4, i32 %5)
  %7 = load i32, i32* @HCLGEVF_STATE_MBX_SERVICE_SCHED, align 4
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %8, i32 0, i32 0
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @HCLGEVF_STATE_MBX_HANDLING, align 4
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 0
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 4
  %17 = load i32, i32* @hclgevf_service_timer, align 4
  %18 = call i32 @timer_setup(i32* %16, i32 %17, i32 0)
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %19, i32 0, i32 3
  %21 = load i32, i32* @hclgevf_service_task, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load i32, i32* @HCLGEVF_STATE_SERVICE_SCHED, align 4
  %24 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %27, i32 0, i32 2
  %29 = load i32, i32* @hclgevf_reset_service_task, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load i32, i32* @HCLGEVF_STATE_DOWN, align 4
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
