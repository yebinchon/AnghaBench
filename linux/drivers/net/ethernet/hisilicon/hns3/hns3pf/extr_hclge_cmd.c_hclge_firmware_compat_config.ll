; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_firmware_compat_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_firmware_compat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_firmware_compat_cmd = type { i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_M7_COMPAT_CFG = common dso_local global i32 0, align 4
@HCLGE_LINK_EVENT_REPORT_EN_B = common dso_local global i32 0, align 4
@HCLGE_NCSI_ERROR_REPORT_EN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_firmware_compat_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_firmware_compat_config(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_firmware_compat_cmd*, align 8
  %4 = alloca %struct.hclge_desc, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @HCLGE_OPC_M7_COMPAT_CFG, align 4
  %7 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %4, i32 %6, i32 0)
  %8 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hclge_firmware_compat_cmd*
  store %struct.hclge_firmware_compat_cmd* %10, %struct.hclge_firmware_compat_cmd** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @HCLGE_LINK_EVENT_REPORT_EN_B, align 4
  %13 = call i32 @hnae3_set_bit(i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HCLGE_NCSI_ERROR_REPORT_EN_B, align 4
  %16 = call i32 @hnae3_set_bit(i32 %14, i32 %15, i32 1)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.hclge_firmware_compat_cmd*, %struct.hclge_firmware_compat_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.hclge_firmware_compat_cmd, %struct.hclge_firmware_compat_cmd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = call i32 @hclge_cmd_send(i32* %22, %struct.hclge_desc* %4, i32 1)
  ret i32 %23
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
