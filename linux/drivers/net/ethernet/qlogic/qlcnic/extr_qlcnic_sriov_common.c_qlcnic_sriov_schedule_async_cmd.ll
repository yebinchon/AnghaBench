; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_schedule_async_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_schedule_async_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_back_channel = type { i32, i32 }
%struct.qlcnic_cmd_args = type { i32 }
%struct.qlcnic_async_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_back_channel*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_schedule_async_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_schedule_async_cmd(%struct.qlcnic_back_channel* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_back_channel*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca %struct.qlcnic_async_cmd*, align 8
  store %struct.qlcnic_back_channel* %0, %struct.qlcnic_back_channel** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  store %struct.qlcnic_async_cmd* null, %struct.qlcnic_async_cmd** %5, align 8
  %6 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %3, align 8
  %7 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %8 = call %struct.qlcnic_async_cmd* @qlcnic_sriov_alloc_async_cmd(%struct.qlcnic_back_channel* %6, %struct.qlcnic_cmd_args* %7)
  store %struct.qlcnic_async_cmd* %8, %struct.qlcnic_async_cmd** %5, align 8
  %9 = load %struct.qlcnic_async_cmd*, %struct.qlcnic_async_cmd** %5, align 8
  %10 = icmp ne %struct.qlcnic_async_cmd* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %13 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %12)
  %14 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %15 = call i32 @kfree(%struct.qlcnic_cmd_args* %14)
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %20, i32 0, i32 0
  %22 = call i32 @queue_work(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %16, %11
  ret void
}

declare dso_local %struct.qlcnic_async_cmd* @qlcnic_sriov_alloc_async_cmd(%struct.qlcnic_back_channel*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @kfree(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
