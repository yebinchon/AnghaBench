; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pfc_pause_en_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pfc_pause_en_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_desc = type { i64 }
%struct.hclge_pfc_en_cmd = type { i8*, i8* }

@HCLGE_OPC_CFG_PFC_PAUSE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i8*, i8*)* @hclge_pfc_pause_en_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_pfc_pause_en_cfg(%struct.hclge_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca %struct.hclge_pfc_en_cmd*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hclge_pfc_en_cmd*
  store %struct.hclge_pfc_en_cmd* %11, %struct.hclge_pfc_en_cmd** %8, align 8
  %12 = load i32, i32* @HCLGE_OPC_CFG_PFC_PAUSE_EN, align 4
  %13 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %12, i32 0)
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.hclge_pfc_en_cmd*, %struct.hclge_pfc_en_cmd** %8, align 8
  %16 = getelementptr inbounds %struct.hclge_pfc_en_cmd, %struct.hclge_pfc_en_cmd* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.hclge_pfc_en_cmd*, %struct.hclge_pfc_en_cmd** %8, align 8
  %19 = getelementptr inbounds %struct.hclge_pfc_en_cmd, %struct.hclge_pfc_en_cmd* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = call i32 @hclge_cmd_send(i32* %21, %struct.hclge_desc* %7, i32 1)
  ret i32 %22
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
