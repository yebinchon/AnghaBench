; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_qs_bp_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_qs_bp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_bp_to_qs_map_cmd = type { i32, i8*, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_TM_BP_TO_QSET_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i8*, i8*, i32)* @hclge_tm_qs_bp_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_qs_bp_cfg(%struct.hclge_dev* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_bp_to_qs_map_cmd*, align 8
  %10 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @HCLGE_OPC_TM_BP_TO_QSET_MAPPING, align 4
  %12 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %11, i32 0)
  %13 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hclge_bp_to_qs_map_cmd*
  store %struct.hclge_bp_to_qs_map_cmd* %15, %struct.hclge_bp_to_qs_map_cmd** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %9, align 8
  %18 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %9, align 8
  %21 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.hclge_bp_to_qs_map_cmd*, %struct.hclge_bp_to_qs_map_cmd** %9, align 8
  %25 = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, %struct.hclge_bp_to_qs_map_cmd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = call i32 @hclge_cmd_send(i32* %27, %struct.hclge_desc* %10, i32 1)
  ret i32 %28
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
