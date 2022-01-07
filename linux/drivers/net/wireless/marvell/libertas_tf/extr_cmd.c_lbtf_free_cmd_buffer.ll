; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_free_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_free_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { %struct.cmd_ctrl_node* }

@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"FREE_CMD_BUF: cmd_array is NULL\0A\00", align 1
@LBS_NUM_CMD_BUFFERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_free_cmd_buffer(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca %struct.cmd_ctrl_node*, align 8
  %4 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  %5 = load i32, i32* @LBTF_DEB_HOST, align 4
  %6 = call i32 @lbtf_deb_enter(i32 %5)
  %7 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %8 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %7, i32 0, i32 0
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %8, align 8
  %10 = icmp eq %struct.cmd_ctrl_node* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @lbtf_deb_host(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %14, i32 0, i32 0
  %16 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %15, align 8
  store %struct.cmd_ctrl_node* %16, %struct.cmd_ctrl_node** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %34, %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i64 %24
  %26 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %25, i32 0, i32 0
  %27 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %26, align 8
  %28 = call i32 @kfree(%struct.cmd_ctrl_node* %27)
  %29 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %29, i64 %31
  %33 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %32, i32 0, i32 0
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %33, align 8
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %39 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %38, i32 0, i32 0
  %40 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %39, align 8
  %41 = call i32 @kfree(%struct.cmd_ctrl_node* %40)
  %42 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %43 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %42, i32 0, i32 0
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %43, align 8
  br label %44

44:                                               ; preds = %37, %11
  %45 = load i32, i32* @LBTF_DEB_HOST, align 4
  %46 = call i32 @lbtf_deb_leave(i32 %45)
  ret i32 0
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_host(i8*) #1

declare dso_local i32 @kfree(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
