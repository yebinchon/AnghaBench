; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_port_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_port_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_vlan_filter_pf_cfg_cmd = type { i64, i32, i64* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_VLAN_FILTER_PF_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"port vlan command, send fail, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, i32)* @hclge_set_port_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_port_vlan_filter(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_vlan_filter_pf_cfg_cmd*, align 8
  %10 = alloca %struct.hclge_desc, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @HCLGE_OPC_VLAN_FILTER_PF_CFG, align 4
  %16 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %15, i32 0)
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 160
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = srem i32 %20, 160
  %22 = sdiv i32 %21, 8
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = srem i32 %24, 8
  %26 = shl i32 1, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.hclge_vlan_filter_pf_cfg_cmd*
  store %struct.hclge_vlan_filter_pf_cfg_cmd* %30, %struct.hclge_vlan_filter_pf_cfg_cmd** %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.hclge_vlan_filter_pf_cfg_cmd*, %struct.hclge_vlan_filter_pf_cfg_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.hclge_vlan_filter_pf_cfg_cmd, %struct.hclge_vlan_filter_pf_cfg_cmd* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.hclge_vlan_filter_pf_cfg_cmd*, %struct.hclge_vlan_filter_pf_cfg_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.hclge_vlan_filter_pf_cfg_cmd, %struct.hclge_vlan_filter_pf_cfg_cmd* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.hclge_vlan_filter_pf_cfg_cmd*, %struct.hclge_vlan_filter_pf_cfg_cmd** %9, align 8
  %39 = getelementptr inbounds %struct.hclge_vlan_filter_pf_cfg_cmd, %struct.hclge_vlan_filter_pf_cfg_cmd* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 1
  %45 = call i32 @hclge_cmd_send(i32* %44, %struct.hclge_desc* %10, i32 1)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %4
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48, %4
  %56 = load i32, i32* %14, align 4
  ret i32 %56
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
