; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_insert_cmd_to_free_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_insert_cmd_to_free_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32 }
%struct.cmd_ctrl_node = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*)* @mwifiex_insert_cmd_to_free_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %5 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %6 = icmp ne %struct.cmd_ctrl_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %32

8:                                                ; preds = %2
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %10 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = call i32 @mwifiex_complete_cmd(%struct.mwifiex_adapter* %14, %struct.cmd_ctrl_node* %15)
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %19 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %20 = call i32 @mwifiex_clean_cmd_node(%struct.mwifiex_adapter* %18, %struct.cmd_ctrl_node* %19)
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %24, i32 0, i32 0
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  br label %32

32:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @mwifiex_complete_cmd(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @mwifiex_clean_cmd_node(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
