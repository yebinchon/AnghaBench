; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_queue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_queue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, i32 }
%struct.cmd_ctrl_node = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cmd_ds_802_11_ps_mode = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"QUEUE_CMD: cmdnode is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DNLD_CMD: cmd size is zero\0A\00", align 1
@CMD_802_11_PS_MODE = common dso_local global i64 0, align 8
@PS_MODE_ACTION_EXIT_PS = common dso_local global i32 0, align 4
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@CMD_802_11_WAKEUP_CONFIRM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"QUEUE_CMD: inserted command 0x%04x into cmdpendingq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.cmd_ctrl_node*)* @lbs_queue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_queue_cmd(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_ds_802_11_ps_mode*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %9 = icmp ne %struct.cmd_ctrl_node* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %94

12:                                               ; preds = %2
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %94

21:                                               ; preds = %12
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %23 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  %30 = load i64, i64* @CMD_802_11_PS_MODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %21
  %33 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %34 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = bitcast %struct.TYPE_2__* %35 to i8*
  %37 = bitcast i8* %36 to %struct.cmd_ds_802_11_ps_mode*
  store %struct.cmd_ds_802_11_ps_mode* %37, %struct.cmd_ds_802_11_ps_mode** %7, align 8
  %38 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %7, align 8
  %39 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PS_MODE_ACTION_EXIT_PS, align 4
  %42 = call i64 @cpu_to_le16(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %55 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le16_to_cpu(i32 %58)
  %60 = load i64, i64* @CMD_802_11_WAKEUP_CONFIRM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 1
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %72 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %71, i32 0, i32 1
  %73 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 2
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %78 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %77, i32 0, i32 1
  %79 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 2
  %81 = call i32 @list_add(i32* %78, i32* %80)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 1
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %88 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le16_to_cpu(i32 %91)
  %93 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %82, %19, %10
  ret void
}

declare dso_local i32 @lbs_deb_host(i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
