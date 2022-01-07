; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_init_cmd_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_init_cmd_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cmd_ctrl_node = type { i32, i32, i32*, i32, i32, i8*, i32, %struct.mwifiex_private* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.cmd_ctrl_node*, i32, i8*, i32)* @mwifiex_init_cmd_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_init_cmd_node(%struct.mwifiex_private* %0, %struct.cmd_ctrl_node* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca %struct.cmd_ctrl_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %12 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %13 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %12, i32 0, i32 7
  store %struct.mwifiex_private* %11, %struct.mwifiex_private** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %21 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %23 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %24, i32 0, i32 1
  %26 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %27 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %19, %5
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %31 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %33 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %7, align 8
  %36 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
