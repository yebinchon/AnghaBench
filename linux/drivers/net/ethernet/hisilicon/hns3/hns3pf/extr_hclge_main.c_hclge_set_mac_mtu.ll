; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_mac_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_mac_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_config_max_frm_size_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CONFIG_MAX_FRM_SIZE = common dso_local global i32 0, align 4
@HCLGE_MAC_MIN_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_mac_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_mac_mtu(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_config_max_frm_size_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @HCLGE_OPC_CONFIG_MAX_FRM_SIZE, align 4
  %8 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %7, i32 0)
  %9 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hclge_config_max_frm_size_cmd*
  store %struct.hclge_config_max_frm_size_cmd* %11, %struct.hclge_config_max_frm_size_cmd** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = load %struct.hclge_config_max_frm_size_cmd*, %struct.hclge_config_max_frm_size_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.hclge_config_max_frm_size_cmd, %struct.hclge_config_max_frm_size_cmd* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @HCLGE_MAC_MIN_FRAME, align 4
  %17 = load %struct.hclge_config_max_frm_size_cmd*, %struct.hclge_config_max_frm_size_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.hclge_config_max_frm_size_cmd, %struct.hclge_config_max_frm_size_cmd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 0
  %21 = call i32 @hclge_cmd_send(i32* %20, %struct.hclge_desc* %6, i32 1)
  ret i32 %21
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
