; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_allocate_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_allocate_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { i32, i8* }

@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@LBS_NUM_CMD_BUFFERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ALLOC_CMD_BUF: tempcmd_array is NULL\0A\00", align 1
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ALLOC_CMD_BUF: ptempvirtualaddr is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_allocate_cmd_buffer(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @LBTF_DEB_HOST, align 4
  %8 = call i32 @lbtf_deb_enter(i32 %7)
  %9 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 16, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.cmd_ctrl_node*
  store %struct.cmd_ctrl_node* %16, %struct.cmd_ctrl_node** %6, align 8
  %17 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %18 = icmp ne %struct.cmd_ctrl_node* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @lbtf_deb_host(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %23 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %23, i32 0, i32 0
  store %struct.cmd_ctrl_node* %22, %struct.cmd_ctrl_node** %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %48, %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i64 %35
  %37 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %36, i32 0, i32 1
  store i8* %32, i8** %37, align 8
  %38 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %38, i64 %40
  %42 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %29
  %46 = call i32 @lbtf_deb_host(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %25

51:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %57, i64 %59
  %61 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %60, i32 0, i32 0
  %62 = call i32 @init_waitqueue_head(i32* %61)
  %63 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %64 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %64, i64 %66
  %68 = call i32 @lbtf_cleanup_and_insert_cmd(%struct.lbtf_private* %63, %struct.cmd_ctrl_node* %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %52

72:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %45, %19
  %74 = load i32, i32* @LBTF_DEB_HOST, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @lbtf_deb_leave_args(i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @lbtf_deb_host(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbtf_cleanup_and_insert_cmd(%struct.lbtf_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
