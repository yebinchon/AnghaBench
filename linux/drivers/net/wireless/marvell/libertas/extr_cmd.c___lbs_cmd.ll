; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c___lbs_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c___lbs_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32 }
%struct.cmd_header = type { i32 }
%struct.cmd_ctrl_node = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"PREP_CMD: command 0x%04x failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lbs_cmd(%struct.lbs_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i64 %5) #0 {
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_ctrl_node*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.cmd_header*, %struct.cmd_header** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call %struct.cmd_ctrl_node* @__lbs_cmd_async(%struct.lbs_private* %16, i32 %17, %struct.cmd_header* %18, i32 %19, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %20, i64 %21)
  store %struct.cmd_ctrl_node* %22, %struct.cmd_ctrl_node** %13, align 8
  %23 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %24 = call i64 @IS_ERR(%struct.cmd_ctrl_node* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %28 = call i32 @PTR_ERR(%struct.cmd_ctrl_node* %27)
  store i32 %28, i32* %15, align 4
  br label %62

29:                                               ; preds = %6
  %30 = call i32 (...) @might_sleep()
  %31 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %32 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %35 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wait_event(i32 %33, i32 %36)
  %38 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 0
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %43 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @netdev_info(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %29
  %55 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %56 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %57 = call i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private* %55, %struct.cmd_ctrl_node* %56)
  %58 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %59 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %58, i32 0, i32 0
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %54, %26
  %63 = load i32, i32* %15, align 4
  ret i32 %63
}

declare dso_local %struct.cmd_ctrl_node* @__lbs_cmd_async(%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i64) #1

declare dso_local i64 @IS_ERR(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @PTR_ERR(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
