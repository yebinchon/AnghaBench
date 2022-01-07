; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_recycle_cmd_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_recycle_cmd_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32 }
%struct.cmd_ctrl_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_cmd_ds_command = type { i32 }

@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cmd: FREE_CMD: cmd=%#x, cmd_pending=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %6 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %7 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.host_cmd_ds_command*
  store %struct.host_cmd_ds_command* %12, %struct.host_cmd_ds_command** %5, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %15 = call i32 @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter* %13, %struct.cmd_ctrl_node* %14)
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %20 = load i32, i32* @CMD, align 4
  %21 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %19, i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
