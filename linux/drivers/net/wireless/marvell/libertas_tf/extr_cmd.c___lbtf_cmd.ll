; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c___lbtf_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c___lbtf_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.cmd_header = type { i32 }
%struct.cmd_ctrl_node = type { i32, i32, i32 }

@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"PREP_CMD: command 0x%04x interrupted by signal: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"PREP_CMD: command 0x%04x failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lbtf_cmd(%struct.lbtf_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)* %4, i64 %5) #0 {
  %7 = alloca %struct.lbtf_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_ctrl_node*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)* %4, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @LBTF_DEB_HOST, align 4
  %17 = call i32 @lbtf_deb_enter(i32 %16)
  %18 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.cmd_header*, %struct.cmd_header** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.cmd_ctrl_node* @__lbtf_cmd_async(%struct.lbtf_private* %18, i32 %19, %struct.cmd_header* %20, i32 %21, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)* %22, i64 %23)
  store %struct.cmd_ctrl_node* %24, %struct.cmd_ctrl_node** %13, align 8
  %25 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %26 = call i64 @IS_ERR(%struct.cmd_ctrl_node* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.cmd_ctrl_node* %29)
  store i32 %30, i32* %15, align 4
  br label %68

31:                                               ; preds = %6
  %32 = call i32 (...) @might_sleep()
  %33 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %34 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %37 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wait_event_interruptible(i32 %35, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %68

46:                                               ; preds = %31
  %47 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %48 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %47, i32 0, i32 0
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %52 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %46
  %61 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %62 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %63 = call i32 @__lbtf_cleanup_and_insert_cmd(%struct.lbtf_private* %61, %struct.cmd_ctrl_node* %62)
  %64 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %65 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %64, i32 0, i32 0
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %60, %42, %28
  %69 = load i32, i32* @LBTF_DEB_HOST, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @lbtf_deb_leave_args(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %15, align 4
  ret i32 %72
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local %struct.cmd_ctrl_node* @__lbtf_cmd_async(%struct.lbtf_private*, i32, %struct.cmd_header*, i32, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, i64) #1

declare dso_local i64 @IS_ERR(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @PTR_ERR(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lbtf_cleanup_and_insert_cmd(%struct.lbtf_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
