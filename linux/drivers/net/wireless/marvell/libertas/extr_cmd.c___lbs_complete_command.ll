; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c___lbs_complete_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c___lbs_complete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32* }
%struct.cmd_ctrl_node = type { i32, i32, i64, i32, i32 }

@lbs_cmd_async_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lbs_complete_command(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.cmd_ctrl_node*, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %8 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %7, i32 0, i32 4
  %9 = call i32 @list_del_init(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %12 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 3
  %17 = call i32 @wake_up(i32* %16)
  %18 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %19 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %24 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @lbs_cmd_async_callback, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %3
  %29 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %30 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %31 = call i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private* %29, %struct.cmd_ctrl_node* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 0
  %37 = call i32 @wake_up(i32* %36)
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
