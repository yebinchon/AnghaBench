; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_fec_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_fec_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_config_fec_cmd = type { i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CONFIG_FEC_MODE = common dso_local global i32 0, align 4
@HNAE3_FEC_AUTO = common dso_local global i32 0, align 4
@HCLGE_MAC_CFG_FEC_AUTO_EN_B = common dso_local global i32 0, align 4
@HNAE3_FEC_RS = common dso_local global i32 0, align 4
@HCLGE_MAC_CFG_FEC_MODE_M = common dso_local global i32 0, align 4
@HCLGE_MAC_CFG_FEC_MODE_S = common dso_local global i32 0, align 4
@HCLGE_MAC_FEC_RS = common dso_local global i32 0, align 4
@HNAE3_FEC_BASER = common dso_local global i32 0, align 4
@HCLGE_MAC_FEC_BASER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set fec mode failed %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_fec_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_fec_hw(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_config_fec_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @HCLGE_OPC_CONFIG_FEC_MODE, align 4
  %9 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclge_config_fec_cmd*
  store %struct.hclge_config_fec_cmd* %12, %struct.hclge_config_fec_cmd** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HNAE3_FEC_AUTO, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.hclge_config_fec_cmd*, %struct.hclge_config_fec_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.hclge_config_fec_cmd, %struct.hclge_config_fec_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HCLGE_MAC_CFG_FEC_AUTO_EN_B, align 4
  %23 = call i32 @hnae3_set_bit(i32 %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @HNAE3_FEC_RS, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.hclge_config_fec_cmd*, %struct.hclge_config_fec_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.hclge_config_fec_cmd, %struct.hclge_config_fec_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HCLGE_MAC_CFG_FEC_MODE_M, align 4
  %35 = load i32, i32* @HCLGE_MAC_CFG_FEC_MODE_S, align 4
  %36 = load i32, i32* @HCLGE_MAC_FEC_RS, align 4
  %37 = call i32 @hnae3_set_field(i32 %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HNAE3_FEC_BASER, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.hclge_config_fec_cmd*, %struct.hclge_config_fec_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.hclge_config_fec_cmd, %struct.hclge_config_fec_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HCLGE_MAC_CFG_FEC_MODE_M, align 4
  %49 = load i32, i32* @HCLGE_MAC_CFG_FEC_MODE_S, align 4
  %50 = load i32, i32* @HCLGE_MAC_FEC_BASER, align 4
  %51 = call i32 @hnae3_set_field(i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 1
  %55 = call i32 @hclge_cmd_send(i32* %54, %struct.hclge_desc* %6, i32 1)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
