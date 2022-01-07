; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cfg_mac_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cfg_mac_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i64 }
%struct.hclge_config_mac_mode_cmd = type { i32 }

@HCLGE_OPC_CONFIG_MAC_MODE = common dso_local global i32 0, align 4
@HCLGE_MAC_TX_EN_B = common dso_local global i32 0, align 4
@HCLGE_MAC_RX_EN_B = common dso_local global i32 0, align 4
@HCLGE_MAC_PAD_TX_B = common dso_local global i32 0, align 4
@HCLGE_MAC_PAD_RX_B = common dso_local global i32 0, align 4
@HCLGE_MAC_FCS_TX_B = common dso_local global i32 0, align 4
@HCLGE_MAC_RX_FCS_B = common dso_local global i32 0, align 4
@HCLGE_MAC_RX_FCS_STRIP_B = common dso_local global i32 0, align 4
@HCLGE_MAC_TX_OVERSIZE_TRUNCATE_B = common dso_local global i32 0, align 4
@HCLGE_MAC_RX_OVERSIZE_TRUNCATE_B = common dso_local global i32 0, align 4
@HCLGE_MAC_TX_UNDER_MIN_ERR_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mac enable fail, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i32)* @hclge_cfg_mac_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_cfg_mac_mode(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_desc, align 8
  %6 = alloca %struct.hclge_config_mac_mode_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %5, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hclge_config_mac_mode_cmd*
  store %struct.hclge_config_mac_mode_cmd* %11, %struct.hclge_config_mac_mode_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @HCLGE_OPC_CONFIG_MAC_MODE, align 4
  %13 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %5, i32 %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HCLGE_MAC_TX_EN_B, align 4
  %19 = call i32 @hnae3_set_bit(i32 %17, i32 %18, i32 1)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @HCLGE_MAC_RX_EN_B, align 4
  %22 = call i32 @hnae3_set_bit(i32 %20, i32 %21, i32 1)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HCLGE_MAC_PAD_TX_B, align 4
  %25 = call i32 @hnae3_set_bit(i32 %23, i32 %24, i32 1)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @HCLGE_MAC_PAD_RX_B, align 4
  %28 = call i32 @hnae3_set_bit(i32 %26, i32 %27, i32 1)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @HCLGE_MAC_FCS_TX_B, align 4
  %31 = call i32 @hnae3_set_bit(i32 %29, i32 %30, i32 1)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @HCLGE_MAC_RX_FCS_B, align 4
  %34 = call i32 @hnae3_set_bit(i32 %32, i32 %33, i32 1)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HCLGE_MAC_RX_FCS_STRIP_B, align 4
  %37 = call i32 @hnae3_set_bit(i32 %35, i32 %36, i32 1)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @HCLGE_MAC_TX_OVERSIZE_TRUNCATE_B, align 4
  %40 = call i32 @hnae3_set_bit(i32 %38, i32 %39, i32 1)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @HCLGE_MAC_RX_OVERSIZE_TRUNCATE_B, align 4
  %43 = call i32 @hnae3_set_bit(i32 %41, i32 %42, i32 1)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @HCLGE_MAC_TX_UNDER_MIN_ERR_B, align 4
  %46 = call i32 @hnae3_set_bit(i32 %44, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %16, %2
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.hclge_config_mac_mode_cmd*, %struct.hclge_config_mac_mode_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.hclge_config_mac_mode_cmd, %struct.hclge_config_mac_mode_cmd* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 1
  %54 = call i32 @hclge_cmd_send(i32* %53, %struct.hclge_desc* %5, i32 1)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %57, %47
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
