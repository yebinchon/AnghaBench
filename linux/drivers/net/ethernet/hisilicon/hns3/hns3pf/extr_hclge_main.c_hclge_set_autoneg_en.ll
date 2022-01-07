; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_autoneg_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_autoneg_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_config_auto_neg_cmd = type { i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CONFIG_AN_MODE = common dso_local global i32 0, align 4
@HCLGE_MAC_CFG_AN_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"auto neg set cmd failed %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_autoneg_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_autoneg_en(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_config_auto_neg_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @HCLGE_OPC_CONFIG_AN_MODE, align 4
  %10 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %9, i32 0)
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_config_auto_neg_cmd*
  store %struct.hclge_config_auto_neg_cmd* %13, %struct.hclge_config_auto_neg_cmd** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HCLGE_MAC_CFG_AN_EN_B, align 4
  %19 = call i32 @hnae3_set_bit(i32 %17, i32 %18, i32 1)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.hclge_config_auto_neg_cmd*, %struct.hclge_config_auto_neg_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.hclge_config_auto_neg_cmd, %struct.hclge_config_auto_neg_cmd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 1
  %27 = call i32 @hclge_cmd_send(i32* %26, %struct.hclge_desc* %6, i32 1)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %20
  %38 = load i32, i32* %8, align 4
  ret i32 %38
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
