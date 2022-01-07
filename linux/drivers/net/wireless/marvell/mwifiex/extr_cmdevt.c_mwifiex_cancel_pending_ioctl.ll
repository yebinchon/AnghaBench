; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_cancel_pending_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_cancel_pending_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_cancel_pending_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_cancel_pending_ioctl(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %3, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %4, i32 0, i32 1
  %6 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %7 = icmp ne %struct.cmd_ctrl_node* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 1
  %11 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %10, align 8
  %12 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 1
  %21 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %20, align 8
  store %struct.cmd_ctrl_node* %21, %struct.cmd_ctrl_node** %3, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 1
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %23, align 8
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %28 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %29 = call i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %27, %struct.cmd_ctrl_node* %28)
  br label %30

30:                                               ; preds = %15, %8, %1
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %32 = call i32 @mwifiex_cancel_scan(%struct.mwifiex_adapter* %31)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @mwifiex_cancel_scan(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
