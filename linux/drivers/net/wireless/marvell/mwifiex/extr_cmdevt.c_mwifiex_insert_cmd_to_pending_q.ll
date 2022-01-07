; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_insert_cmd_to_pending_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_insert_cmd_to_pending_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i32, i32, i32 }
%struct.cmd_ctrl_node = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_802_11_ps_mode_enh }
%struct.host_cmd_ds_802_11_ps_mode_enh = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"QUEUE_CMD: host_cmd is NULL\0A\00", align 1
@HostCmd_CMD_802_11_PS_MODE_ENH = common dso_local global i64 0, align 8
@DIS_PS = common dso_local global i64 0, align 8
@DIS_AUTO_PS = common dso_local global i64 0, align 8
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cmd: QUEUE_CMD: cmd=%#x, cmd_pending=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_insert_cmd_to_pending_q(%struct.mwifiex_adapter* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_cmd_ds_802_11_ps_mode_enh*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  store %struct.host_cmd_ds_command* null, %struct.host_cmd_ds_command** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %10 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.host_cmd_ds_command*
  store %struct.host_cmd_ds_command* %14, %struct.host_cmd_ds_command** %5, align 8
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %16 = icmp ne %struct.host_cmd_ds_command* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %18, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @HostCmd_CMD_802_11_PS_MODE_ENH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_ps_mode_enh* %32, %struct.host_cmd_ds_802_11_ps_mode_enh** %8, align 8
  %33 = load %struct.host_cmd_ds_802_11_ps_mode_enh*, %struct.host_cmd_ds_802_11_ps_mode_enh** %8, align 8
  %34 = getelementptr inbounds %struct.host_cmd_ds_802_11_ps_mode_enh, %struct.host_cmd_ds_802_11_ps_mode_enh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16_to_cpu(i32 %35)
  %37 = load i64, i64* @DIS_PS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = load %struct.host_cmd_ds_802_11_ps_mode_enh*, %struct.host_cmd_ds_802_11_ps_mode_enh** %8, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_802_11_ps_mode_enh, %struct.host_cmd_ds_802_11_ps_mode_enh* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le16_to_cpu(i32 %42)
  %44 = load i64, i64* @DIS_AUTO_PS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39, %29
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PS_STATE_AWAKE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %56, i32 0, i32 2
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %63 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %62, i32 0, i32 0
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %64, i32 0, i32 3
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  br label %73

67:                                               ; preds = %55
  %68 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %69 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %68, i32 0, i32 0
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 3
  %72 = call i32 @list_add(i32* %69, i32* %71)
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %77, i32 0, i32 1
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %81 = load i32, i32* @CMD, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %83, i32 0, i32 1
  %85 = call i32 @atomic_read(i32* %84)
  %86 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %80, i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %85)
  br label %87

87:                                               ; preds = %73, %17
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
