; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_queue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_queue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32, i32 }
%struct.cmd_ctrl_node = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QUEUE_CMD: cmdnode is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DNLD_CMD: cmd size is zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"QUEUE_CMD: inserted command 0x%04x into cmdpendingq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbtf_private*, %struct.cmd_ctrl_node*)* @lbtf_queue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_queue_cmd(%struct.lbtf_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %6 = load i32, i32* @LBTF_DEB_HOST, align 4
  %7 = call i32 @lbtf_deb_enter(i32 %6)
  %8 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %9 = icmp ne %struct.cmd_ctrl_node* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @lbtf_deb_host(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = call i32 (i8*, ...) @lbtf_deb_host(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %44

21:                                               ; preds = %12
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %23 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %29 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %28, i32 0, i32 1
  %30 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %34 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %38 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = call i32 (i8*, ...) @lbtf_deb_host(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %21, %19, %10
  %45 = load i32, i32* @LBTF_DEB_HOST, align 4
  %46 = call i32 @lbtf_deb_leave(i32 %45)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_host(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
