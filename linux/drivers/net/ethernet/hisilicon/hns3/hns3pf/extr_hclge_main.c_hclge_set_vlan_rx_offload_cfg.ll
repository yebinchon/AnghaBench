; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_rx_offload_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_rx_offload_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, %struct.hclge_dev*, %struct.hclge_rx_vtag_cfg }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_rx_vtag_cfg = type { i64, i64, i64, i64 }
%struct.hclge_vport_vtag_rx_cfg_cmd = type { i32, i32*, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_VLAN_PORT_RX_CFG = common dso_local global i32 0, align 4
@HCLGE_REM_TAG1_EN_B = common dso_local global i32 0, align 4
@HCLGE_REM_TAG2_EN_B = common dso_local global i32 0, align 4
@HCLGE_SHOW_TAG1_EN_B = common dso_local global i32 0, align 4
@HCLGE_SHOW_TAG2_EN_B = common dso_local global i32 0, align 4
@HCLGE_VF_NUM_PER_CMD = common dso_local global i32 0, align 4
@HCLGE_VF_NUM_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Send port rxvlan cfg command fail, ret =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*)* @hclge_set_vlan_rx_offload_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vlan_rx_offload_cfg(%struct.hclge_vport* %0) #0 {
  %2 = alloca %struct.hclge_vport*, align 8
  %3 = alloca %struct.hclge_rx_vtag_cfg*, align 8
  %4 = alloca %struct.hclge_vport_vtag_rx_cfg_cmd*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %2, align 8
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 2
  store %struct.hclge_rx_vtag_cfg* %10, %struct.hclge_rx_vtag_cfg** %3, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 1
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %5, align 8
  %14 = load i32, i32* @HCLGE_OPC_VLAN_PORT_RX_CFG, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hclge_vport_vtag_rx_cfg_cmd*
  store %struct.hclge_vport_vtag_rx_cfg_cmd* %18, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %19 = load %struct.hclge_vport_vtag_rx_cfg_cmd*, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, %struct.hclge_vport_vtag_rx_cfg_cmd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HCLGE_REM_TAG1_EN_B, align 4
  %23 = load %struct.hclge_rx_vtag_cfg*, %struct.hclge_rx_vtag_cfg** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_rx_vtag_cfg, %struct.hclge_rx_vtag_cfg* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = call i32 @hnae3_set_bit(i32 %21, i32 %22, i32 %28)
  %30 = load %struct.hclge_vport_vtag_rx_cfg_cmd*, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, %struct.hclge_vport_vtag_rx_cfg_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HCLGE_REM_TAG2_EN_B, align 4
  %34 = load %struct.hclge_rx_vtag_cfg*, %struct.hclge_rx_vtag_cfg** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_rx_vtag_cfg, %struct.hclge_rx_vtag_cfg* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = call i32 @hnae3_set_bit(i32 %32, i32 %33, i32 %39)
  %41 = load %struct.hclge_vport_vtag_rx_cfg_cmd*, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, %struct.hclge_vport_vtag_rx_cfg_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HCLGE_SHOW_TAG1_EN_B, align 4
  %45 = load %struct.hclge_rx_vtag_cfg*, %struct.hclge_rx_vtag_cfg** %3, align 8
  %46 = getelementptr inbounds %struct.hclge_rx_vtag_cfg, %struct.hclge_rx_vtag_cfg* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = call i32 @hnae3_set_bit(i32 %43, i32 %44, i32 %50)
  %52 = load %struct.hclge_vport_vtag_rx_cfg_cmd*, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, %struct.hclge_vport_vtag_rx_cfg_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @HCLGE_SHOW_TAG2_EN_B, align 4
  %56 = load %struct.hclge_rx_vtag_cfg*, %struct.hclge_rx_vtag_cfg** %3, align 8
  %57 = getelementptr inbounds %struct.hclge_rx_vtag_cfg, %struct.hclge_rx_vtag_cfg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = call i32 @hnae3_set_bit(i32 %54, i32 %55, i32 %61)
  %63 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %64 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HCLGE_VF_NUM_PER_CMD, align 4
  %67 = udiv i32 %65, %66
  %68 = load %struct.hclge_vport_vtag_rx_cfg_cmd*, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, %struct.hclge_vport_vtag_rx_cfg_cmd* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %71 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HCLGE_VF_NUM_PER_CMD, align 4
  %74 = urem i32 %72, %73
  %75 = load i32, i32* @HCLGE_VF_NUM_PER_BYTE, align 4
  %76 = udiv i32 %74, %75
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %7, align 8
  %78 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %79 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HCLGE_VF_NUM_PER_BYTE, align 4
  %82 = urem i32 %80, %81
  %83 = shl i32 1, %82
  %84 = load %struct.hclge_vport_vtag_rx_cfg_cmd*, %struct.hclge_vport_vtag_rx_cfg_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.hclge_vport_vtag_rx_cfg_cmd, %struct.hclge_vport_vtag_rx_cfg_cmd* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %90 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %89, i32 0, i32 1
  %91 = call i32 @hclge_cmd_send(i32* %90, %struct.hclge_desc* %6, i32 1)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %1
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %94, %1
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
