; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_reclaim_cmp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_reclaim_cmp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.queue_set = type { i32 }

@NIC_QSET_CQ_0_7_CFG2 = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_CFG = common dso_local global i32 0, align 4
@NICVF_CQ_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.queue_set*, i32)* @nicvf_reclaim_cmp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_reclaim_cmp_queue(%struct.nicvf* %0, %struct.queue_set* %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %struct.queue_set*, align 8
  %6 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store %struct.queue_set* %1, %struct.queue_set** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %8 = load i32, i32* @NIC_QSET_CQ_0_7_CFG2, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %12 = load i32, i32* @NIC_QSET_CQ_0_7_CFG, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %16 = load i32, i32* @NIC_QSET_CQ_0_7_CFG, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NICVF_CQ_RESET, align 4
  %19 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %15, i32 %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
