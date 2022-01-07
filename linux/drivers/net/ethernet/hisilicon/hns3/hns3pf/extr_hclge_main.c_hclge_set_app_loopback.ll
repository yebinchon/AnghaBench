; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_app_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_app_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_config_mac_mode_cmd = type { i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_OPC_CONFIG_MAC_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mac loopback get fail, ret =%d.\0A\00", align 1
@HCLGE_MAC_APP_LP_B = common dso_local global i32 0, align 4
@HCLGE_MAC_TX_EN_B = common dso_local global i32 0, align 4
@HCLGE_MAC_RX_EN_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mac loopback set fail, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_app_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_app_loopback(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_config_mac_mode_cmd*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = bitcast i32* %12 to %struct.hclge_config_mac_mode_cmd*
  store %struct.hclge_config_mac_mode_cmd* %13, %struct.hclge_config_mac_mode_cmd** %6, align 8
  %14 = load i32, i32* @HCLGE_OPC_CONFIG_MAC_MODE, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %14, i32 1)
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = call i32 @hclge_cmd_send(i32* %17, %struct.hclge_desc* %7, i32 1)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load %struct.hclge_config_mac_mode_cmd*, %struct.hclge_config_mac_mode_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.hclge_config_mac_mode_cmd, %struct.hclge_config_mac_mode_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HCLGE_MAC_APP_LP_B, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = call i32 @hnae3_set_bit(i32 %34, i32 %35, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @HCLGE_MAC_TX_EN_B, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = call i32 @hnae3_set_bit(i32 %41, i32 %42, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @HCLGE_MAC_RX_EN_B, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = call i32 @hnae3_set_bit(i32 %48, i32 %49, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.hclge_config_mac_mode_cmd*, %struct.hclge_config_mac_mode_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.hclge_config_mac_mode_cmd, %struct.hclge_config_mac_mode_cmd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %7, i32 0)
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 1
  %62 = call i32 @hclge_cmd_send(i32* %61, %struct.hclge_desc* %7, i32 1)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %29
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %67 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %29
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
