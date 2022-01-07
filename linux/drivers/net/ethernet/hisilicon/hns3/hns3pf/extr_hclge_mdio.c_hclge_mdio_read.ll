; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mdio_cfg_cmd = type { i32, i32, i32, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@HCLGE_OPC_MDIO_CONFIG = common dso_local global i32 0, align 4
@HCLGE_MDIO_PHYID_M = common dso_local global i32 0, align 4
@HCLGE_MDIO_PHYID_S = common dso_local global i32 0, align 4
@HCLGE_MDIO_PHYREG_M = common dso_local global i32 0, align 4
@HCLGE_MDIO_PHYREG_S = common dso_local global i32 0, align 4
@HCLGE_MDIO_CTRL_START_B = common dso_local global i32 0, align 4
@HCLGE_MDIO_CTRL_ST_M = common dso_local global i32 0, align 4
@HCLGE_MDIO_CTRL_ST_S = common dso_local global i32 0, align 4
@HCLGE_MDIO_CTRL_OP_M = common dso_local global i32 0, align 4
@HCLGE_MDIO_CTRL_OP_S = common dso_local global i32 0, align 4
@HCLGE_MDIO_C22_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mdio read fail when get data, status is %d.\0A\00", align 1
@HCLGE_MDIO_STA_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mdio read data error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @hclge_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclge_mdio_cfg_cmd*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca %struct.hclge_desc, align 8
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  store %struct.hclge_dev* %14, %struct.hclge_dev** %9, align 8
  %15 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load i32, i32* @HCLGE_OPC_MDIO_CONFIG, align 4
  %23 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %10, i32 %22, i32 1)
  %24 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.hclge_mdio_cfg_cmd*
  store %struct.hclge_mdio_cfg_cmd* %26, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %27 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HCLGE_MDIO_PHYID_M, align 4
  %31 = load i32, i32* @HCLGE_MDIO_PHYID_S, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @hnae3_set_field(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HCLGE_MDIO_PHYREG_M, align 4
  %38 = load i32, i32* @HCLGE_MDIO_PHYREG_S, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @hnae3_set_field(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %42 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HCLGE_MDIO_CTRL_START_B, align 4
  %45 = call i32 @hnae3_set_bit(i32 %43, i32 %44, i32 1)
  %46 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HCLGE_MDIO_CTRL_ST_M, align 4
  %50 = load i32, i32* @HCLGE_MDIO_CTRL_ST_S, align 4
  %51 = call i32 @hnae3_set_field(i32 %48, i32 %49, i32 %50, i32 1)
  %52 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HCLGE_MDIO_CTRL_OP_M, align 4
  %56 = load i32, i32* @HCLGE_MDIO_CTRL_OP_S, align 4
  %57 = load i32, i32* @HCLGE_MDIO_C22_READ, align 4
  %58 = call i32 @hnae3_set_field(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 1
  %61 = call i32 @hclge_cmd_send(i32* %60, %struct.hclge_desc* %10, i32 1)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %21
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %93

72:                                               ; preds = %21
  %73 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %74 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load i32, i32* @HCLGE_MDIO_STA_B, align 4
  %78 = call i64 @hnae3_get_bit(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %93

88:                                               ; preds = %72
  %89 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %8, align 8
  %90 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %88, %80, %64, %20
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @hnae3_get_bit(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
