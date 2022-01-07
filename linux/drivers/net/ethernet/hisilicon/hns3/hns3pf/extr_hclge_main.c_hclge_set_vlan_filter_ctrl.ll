; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_vlan_filter_ctrl_cmd = type { i8*, i8*, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_VLAN_FILTER_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"set vlan filter fail, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i8*, i8*, i32, i8*)* @hclge_set_vlan_filter_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hclge_vlan_filter_ctrl_cmd*, align 8
  %12 = alloca %struct.hclge_desc, align 8
  %13 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @HCLGE_OPC_VLAN_FILTER_CTRL, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %12, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %12, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hclge_vlan_filter_ctrl_cmd*
  store %struct.hclge_vlan_filter_ctrl_cmd* %18, %struct.hclge_vlan_filter_ctrl_cmd** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.hclge_vlan_filter_ctrl_cmd*, %struct.hclge_vlan_filter_ctrl_cmd** %11, align 8
  %21 = getelementptr inbounds %struct.hclge_vlan_filter_ctrl_cmd, %struct.hclge_vlan_filter_ctrl_cmd* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i8*, i8** %8, align 8
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ null, %26 ]
  %29 = load %struct.hclge_vlan_filter_ctrl_cmd*, %struct.hclge_vlan_filter_ctrl_cmd** %11, align 8
  %30 = getelementptr inbounds %struct.hclge_vlan_filter_ctrl_cmd, %struct.hclge_vlan_filter_ctrl_cmd* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.hclge_vlan_filter_ctrl_cmd*, %struct.hclge_vlan_filter_ctrl_cmd** %11, align 8
  %33 = getelementptr inbounds %struct.hclge_vlan_filter_ctrl_cmd, %struct.hclge_vlan_filter_ctrl_cmd* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 1
  %36 = call i32 @hclge_cmd_send(i32* %35, %struct.hclge_desc* %12, i32 1)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %27
  %47 = load i32, i32* %13, align 4
  ret i32 %47
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
