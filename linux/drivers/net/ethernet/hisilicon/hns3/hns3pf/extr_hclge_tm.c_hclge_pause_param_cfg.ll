; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pause_param_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pause_param_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_cfg_pause_param_cmd = type { i32, i32, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CFG_MAC_PARA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32*, i32, i32)* @hclge_pause_param_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_pause_param_cfg(%struct.hclge_dev* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_cfg_pause_param_cmd*, align 8
  %10 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_cfg_pause_param_cmd*
  store %struct.hclge_cfg_pause_param_cmd* %13, %struct.hclge_cfg_pause_param_cmd** %9, align 8
  %14 = load i32, i32* @HCLGE_OPC_CFG_MAC_PARA, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %14, i32 0)
  %16 = load %struct.hclge_cfg_pause_param_cmd*, %struct.hclge_cfg_pause_param_cmd** %9, align 8
  %17 = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, %struct.hclge_cfg_pause_param_cmd* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ether_addr_copy(i32 %18, i32* %19)
  %21 = load %struct.hclge_cfg_pause_param_cmd*, %struct.hclge_cfg_pause_param_cmd** %9, align 8
  %22 = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, %struct.hclge_cfg_pause_param_cmd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @ether_addr_copy(i32 %23, i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hclge_cfg_pause_param_cmd*, %struct.hclge_cfg_pause_param_cmd** %9, align 8
  %28 = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, %struct.hclge_cfg_pause_param_cmd* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.hclge_cfg_pause_param_cmd*, %struct.hclge_cfg_pause_param_cmd** %9, align 8
  %32 = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, %struct.hclge_cfg_pause_param_cmd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = call i32 @hclge_cmd_send(i32* %34, %struct.hclge_desc* %10, i32 1)
  ret i32 %35
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
