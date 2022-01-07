; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_free_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_free_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { %struct.cmd_ctrl_node* }

@.str = private unnamed_addr constant [33 x i8] c"FREE_CMD_BUF: cmd_array is NULL\0A\00", align 1
@LBS_NUM_CMD_BUFFERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_free_cmd_buffer(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ctrl_node*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 0
  %7 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %8 = icmp eq %struct.cmd_ctrl_node* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 0
  %14 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  store %struct.cmd_ctrl_node* %14, %struct.cmd_ctrl_node** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %41, %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %20, i64 %22
  %24 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %23, i32 0, i32 0
  %25 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %24, align 8
  %26 = icmp ne %struct.cmd_ctrl_node* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %28, i64 %30
  %32 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %31, i32 0, i32 0
  %33 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %32, align 8
  %34 = call i32 @kfree(%struct.cmd_ctrl_node* %33)
  %35 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %35, i64 %37
  %39 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %38, i32 0, i32 0
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %39, align 8
  br label %40

40:                                               ; preds = %27, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 0
  %47 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %46, align 8
  %48 = icmp ne %struct.cmd_ctrl_node* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 0
  %52 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %51, align 8
  %53 = call i32 @kfree(%struct.cmd_ctrl_node* %52)
  %54 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 0
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %55, align 8
  br label %56

56:                                               ; preds = %49, %44
  br label %57

57:                                               ; preds = %56, %9
  ret i32 0
}

declare dso_local i32 @lbs_deb_host(i8*) #1

declare dso_local i32 @kfree(%struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
