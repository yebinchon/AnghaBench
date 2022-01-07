; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_offload_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_offload_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_sq_task = type { i32 }

@VLAN_TAG = common dso_local global i32 0, align 4
@VLAN_OFFLOAD = common dso_local global i32 0, align 4
@QUEUE_INFO_PRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_sq_task*, i32*, i32, i32)* @offload_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @offload_vlan(%struct.hinic_sq_task* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hinic_sq_task*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hinic_sq_task* %0, %struct.hinic_sq_task** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @VLAN_TAG, align 4
  %11 = call i32 @HINIC_SQ_TASK_INFO0_SET(i32 %9, i32 %10)
  %12 = load i32, i32* @VLAN_OFFLOAD, align 4
  %13 = call i32 @HINIC_SQ_TASK_INFO0_SET(i32 1, i32 %12)
  %14 = or i32 %11, %13
  %15 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %5, align 8
  %16 = getelementptr inbounds %struct.hinic_sq_task, %struct.hinic_sq_task* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @QUEUE_INFO_PRI, align 4
  %21 = call i32 @HINIC_SQ_CTRL_SET(i32 %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local i32 @HINIC_SQ_TASK_INFO0_SET(i32, i32) #1

declare dso_local i32 @HINIC_SQ_CTRL_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
