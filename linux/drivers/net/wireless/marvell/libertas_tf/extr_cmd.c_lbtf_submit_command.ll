; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_submit_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32, i32, %struct.TYPE_2__*, %struct.cmd_ctrl_node* }
%struct.TYPE_2__ = type { i32 (%struct.lbtf_private*, i32, i32*, i32)* }
%struct.cmd_ctrl_node = type { %struct.cmd_header* }
%struct.cmd_header = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DNLD_CMD: command 0x%04x, seq %d, size %d\0A\00", align 1
@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DNLD_CMD\00", align 1
@MVMS_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"DNLD_CMD: hw_host_to_card failed: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbtf_private*, %struct.cmd_ctrl_node*)* @lbtf_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_submit_command(%struct.lbtf_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmd_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 5, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @LBTF_DEB_HOST, align 4
  %14 = call i32 @lbtf_deb_enter(i32 %13)
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 0
  %17 = load %struct.cmd_header*, %struct.cmd_header** %16, align 8
  store %struct.cmd_header* %17, %struct.cmd_header** %6, align 8
  %18 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %23 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %24 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %23, i32 0, i32 3
  store %struct.cmd_ctrl_node* %22, %struct.cmd_ctrl_node** %24, align 8
  %25 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %26 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %30 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %35 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @lbtf_deb_cmd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %38)
  %40 = load i32, i32* @LBTF_DEB_CMD, align 4
  %41 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %42 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %41, i32 0, i32 0
  %43 = load %struct.cmd_header*, %struct.cmd_header** %42, align 8
  %44 = bitcast %struct.cmd_header* %43 to i8*
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @lbtf_deb_hex(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %48 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.lbtf_private*, i32, i32*, i32)*, i32 (%struct.lbtf_private*, i32, i32*, i32)** %50, align 8
  %52 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %53 = load i32, i32* @MVMS_CMD, align 4
  %54 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %55 = bitcast %struct.cmd_header* %54 to i32*
  %56 = load i32, i32* %7, align 4
  %57 = call i32 %51(%struct.lbtf_private* %52, i32 %53, i32* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %59 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %58, i32 0, i32 1
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %2
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @HZ, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %2
  %69 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %70 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %69, i32 0, i32 0
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @mod_timer(i32* %70, i64 %74)
  %76 = load i32, i32* @LBTF_DEB_HOST, align 4
  %77 = call i32 @lbtf_deb_leave(i32 %76)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbtf_deb_cmd(i8*, i32, i32, i32) #1

declare dso_local i32 @lbtf_deb_hex(i32, i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
