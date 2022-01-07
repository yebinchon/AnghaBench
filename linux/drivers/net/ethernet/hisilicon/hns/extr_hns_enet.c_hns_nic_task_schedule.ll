; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_task_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_task_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { i32, i32 }

@NIC_STATE_DOWN = common dso_local global i32 0, align 4
@NIC_STATE_REMOVING = common dso_local global i32 0, align 4
@NIC_STATE_SERVICE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_priv*)* @hns_nic_task_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_task_schedule(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca %struct.hns_nic_priv*, align 8
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %2, align 8
  %3 = load i32, i32* @NIC_STATE_DOWN, align 4
  %4 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %4, i32 0, i32 1
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @NIC_STATE_REMOVING, align 4
  %10 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %10, i32 0, i32 1
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @NIC_STATE_SERVICE_SCHED, align 4
  %16 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %17 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %16, i32 0, i32 1
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %22 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %21, i32 0, i32 0
  %23 = call i32 @schedule_work(i32* %22)
  br label %24

24:                                               ; preds = %20, %14, %8, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
