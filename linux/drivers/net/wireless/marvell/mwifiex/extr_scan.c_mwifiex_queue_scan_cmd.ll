; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_queue_scan_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_queue_scan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32, i32, i32 }
%struct.cmd_ctrl_node = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_queue_scan_cmd(%struct.mwifiex_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 0
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %5, align 8
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %10 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %11, i32 0, i32 2
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %19 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %18, i32 0, i32 1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 1
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
