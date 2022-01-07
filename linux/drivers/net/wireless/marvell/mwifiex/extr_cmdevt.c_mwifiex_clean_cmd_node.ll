; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_clean_cmd_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_clean_cmd_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*, i32*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.cmd_ctrl_node = type { i32, i32*, i64, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*)* @mwifiex_clean_cmd_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_clean_cmd_node(%struct.mwifiex_adapter* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %5 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %6 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %8 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %10 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %12 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %19 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @skb_trim(i64 %20, i32 0)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %24 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mwifiex_adapter.0*, i32*)*, i32 (%struct.mwifiex_adapter.0*, i32*)** %30, align 8
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %33 = bitcast %struct.mwifiex_adapter* %32 to %struct.mwifiex_adapter.0*
  %34 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %35 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 %31(%struct.mwifiex_adapter.0* %33, i32* %36)
  %38 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %39 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @skb_trim(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
