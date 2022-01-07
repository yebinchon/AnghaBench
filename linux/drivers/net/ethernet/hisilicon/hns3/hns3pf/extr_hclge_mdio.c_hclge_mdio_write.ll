; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mdio_cfg_cmd = type { i32, i32, i32, i32 }
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
@HCLGE_MDIO_C22_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"mdio write fail when sending cmd, status is %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @hclge_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_mdio_cfg_cmd*, align 8
  %11 = alloca %struct.hclge_dev*, align 8
  %12 = alloca %struct.hclge_desc, align 8
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %11, align 8
  %17 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 2
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

23:                                               ; preds = %4
  %24 = load i32, i32* @HCLGE_OPC_MDIO_CONFIG, align 4
  %25 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %12, i32 %24, i32 0)
  %26 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %12, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.hclge_mdio_cfg_cmd*
  store %struct.hclge_mdio_cfg_cmd* %28, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %29 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %30 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HCLGE_MDIO_PHYID_M, align 4
  %33 = load i32, i32* @HCLGE_MDIO_PHYID_S, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @hnae3_set_field(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %37 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HCLGE_MDIO_PHYREG_M, align 4
  %40 = load i32, i32* @HCLGE_MDIO_PHYREG_S, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @hnae3_set_field(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HCLGE_MDIO_CTRL_START_B, align 4
  %47 = call i32 @hnae3_set_bit(i32 %45, i32 %46, i32 1)
  %48 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %49 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HCLGE_MDIO_CTRL_ST_M, align 4
  %52 = load i32, i32* @HCLGE_MDIO_CTRL_ST_S, align 4
  %53 = call i32 @hnae3_set_field(i32 %50, i32 %51, i32 %52, i32 1)
  %54 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %55 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HCLGE_MDIO_CTRL_OP_M, align 4
  %58 = load i32, i32* @HCLGE_MDIO_CTRL_OP_S, align 4
  %59 = load i32, i32* @HCLGE_MDIO_C22_WRITE, align 4
  %60 = call i32 @hnae3_set_field(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load %struct.hclge_mdio_cfg_cmd*, %struct.hclge_mdio_cfg_cmd** %10, align 8
  %64 = getelementptr inbounds %struct.hclge_mdio_cfg_cmd, %struct.hclge_mdio_cfg_cmd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 1
  %67 = call i32 @hclge_cmd_send(i32* %66, %struct.hclge_desc* %12, i32 1)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %23
  %71 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %72 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %70, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
