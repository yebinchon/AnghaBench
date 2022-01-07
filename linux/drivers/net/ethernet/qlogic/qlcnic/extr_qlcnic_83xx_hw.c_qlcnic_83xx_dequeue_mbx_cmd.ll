; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_dequeue_mbx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_dequeue_mbx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_mailbox* }
%struct.qlcnic_mailbox = type { i32, i32 }
%struct.qlcnic_cmd_args = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*)* @qlcnic_83xx_dequeue_mbx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_dequeue_mbx_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca %struct.qlcnic_mailbox*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %9, align 8
  store %struct.qlcnic_mailbox* %10, %struct.qlcnic_mailbox** %5, align 8
  %11 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %26 = call i32 @qlcnic_83xx_notify_cmd_completion(%struct.qlcnic_adapter* %24, %struct.qlcnic_cmd_args* %25)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @qlcnic_83xx_notify_cmd_completion(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
