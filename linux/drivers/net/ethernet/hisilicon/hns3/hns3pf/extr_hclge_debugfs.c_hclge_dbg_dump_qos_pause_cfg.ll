; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_qos_pause_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_qos_pause_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_cfg_pause_param_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CFG_MAC_PARA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dump checksum fail, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dump qos pause cfg\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pause_trans_gap: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pause_trans_time: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_qos_pause_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_qos_pause_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_cfg_pause_param_cmd*, align 8
  %4 = alloca %struct.hclge_desc, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %6 = load i32, i32* @HCLGE_OPC_CFG_MAC_PARA, align 4
  %7 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %4, i32 %6, i32 1)
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 1
  %10 = call i32 @hclge_cmd_send(i32* %9, %struct.hclge_desc* %4, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %45

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hclge_cfg_pause_param_cmd*
  store %struct.hclge_cfg_pause_param_cmd* %23, %struct.hclge_cfg_pause_param_cmd** %3, align 8
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.hclge_cfg_pause_param_cmd*, %struct.hclge_cfg_pause_param_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, %struct.hclge_cfg_pause_param_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_info(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.hclge_cfg_pause_param_cmd*, %struct.hclge_cfg_pause_param_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, %struct.hclge_cfg_pause_param_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_info(i32* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
