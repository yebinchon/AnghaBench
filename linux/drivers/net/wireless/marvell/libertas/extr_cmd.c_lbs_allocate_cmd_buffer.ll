; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_allocate_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_allocate_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { i32, i8* }

@LBS_NUM_CMD_BUFFERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ALLOC_CMD_BUF: tempcmd_array is NULL\0A\00", align 1
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ALLOC_CMD_BUF: ptempvirtualaddr is NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_allocate_cmd_buffer(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 16, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.cmd_ctrl_node*
  store %struct.cmd_ctrl_node* %14, %struct.cmd_ctrl_node** %6, align 8
  %15 = icmp ne %struct.cmd_ctrl_node* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 0
  store %struct.cmd_ctrl_node* %19, %struct.cmd_ctrl_node** %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %45, %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %30, i64 %32
  %34 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i32 0, i32 1
  store i8* %29, i8** %34, align 8
  %35 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %35, i64 %37
  %39 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %26
  %43 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %22

48:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %54, i64 %56
  %58 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %57, i32 0, i32 0
  %59 = call i32 @init_waitqueue_head(i32* %58)
  %60 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %61 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %61, i64 %63
  %65 = call i32 @lbs_cleanup_and_insert_cmd(%struct.lbs_private* %60, %struct.cmd_ctrl_node* %64)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %49

69:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %42, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @lbs_deb_host(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
