; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cmd_set_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cmd_set_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_promisc_param = type { i32, i32 }
%struct.hclge_promisc_cfg_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CFG_PROMISC_MODE = common dso_local global i32 0, align 4
@HCLGE_PROMISC_EN_B = common dso_local global i32 0, align 4
@HCLGE_PROMISC_TX_EN_B = common dso_local global i32 0, align 4
@HCLGE_PROMISC_RX_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Set promisc mode fail, status is %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_cmd_set_promisc_mode(%struct.hclge_dev* %0, %struct.hclge_promisc_param* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_promisc_param*, align 8
  %5 = alloca %struct.hclge_promisc_cfg_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store %struct.hclge_promisc_param* %1, %struct.hclge_promisc_param** %4, align 8
  %8 = load i32, i32* @HCLGE_OPC_CFG_PROMISC_MODE, align 4
  %9 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclge_promisc_cfg_cmd*
  store %struct.hclge_promisc_cfg_cmd* %12, %struct.hclge_promisc_cfg_cmd** %5, align 8
  %13 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %4, align 8
  %14 = getelementptr inbounds %struct.hclge_promisc_param, %struct.hclge_promisc_param* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hclge_promisc_cfg_cmd*, %struct.hclge_promisc_cfg_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.hclge_promisc_cfg_cmd, %struct.hclge_promisc_cfg_cmd* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %4, align 8
  %19 = getelementptr inbounds %struct.hclge_promisc_param, %struct.hclge_promisc_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HCLGE_PROMISC_EN_B, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @HCLGE_PROMISC_TX_EN_B, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HCLGE_PROMISC_RX_EN_B, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.hclge_promisc_cfg_cmd*, %struct.hclge_promisc_cfg_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.hclge_promisc_cfg_cmd, %struct.hclge_promisc_cfg_cmd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 1
  %31 = call i32 @hclge_cmd_send(i32* %30, %struct.hclge_desc* %6, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %34, %2
  %42 = load i32, i32* %7, align 4
  ret i32 %42
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
