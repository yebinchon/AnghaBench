; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_tx_offload_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_tx_offload_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, %struct.hclge_dev*, %struct.hclge_tx_vtag_cfg }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_tx_vtag_cfg = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.hclge_vport_vtag_tx_cfg_cmd = type { i32, i32*, i32, i8*, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_VLAN_PORT_TX_CFG = common dso_local global i32 0, align 4
@HCLGE_ACCEPT_TAG1_B = common dso_local global i32 0, align 4
@HCLGE_ACCEPT_UNTAG1_B = common dso_local global i32 0, align 4
@HCLGE_ACCEPT_TAG2_B = common dso_local global i32 0, align 4
@HCLGE_ACCEPT_UNTAG2_B = common dso_local global i32 0, align 4
@HCLGE_PORT_INS_TAG1_EN_B = common dso_local global i32 0, align 4
@HCLGE_PORT_INS_TAG2_EN_B = common dso_local global i32 0, align 4
@HCLGE_CFG_NIC_ROCE_SEL_B = common dso_local global i32 0, align 4
@HCLGE_VF_NUM_PER_CMD = common dso_local global i32 0, align 4
@HCLGE_VF_NUM_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Send port txvlan cfg command fail, ret =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*)* @hclge_set_vlan_tx_offload_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vlan_tx_offload_cfg(%struct.hclge_vport* %0) #0 {
  %2 = alloca %struct.hclge_vport*, align 8
  %3 = alloca %struct.hclge_tx_vtag_cfg*, align 8
  %4 = alloca %struct.hclge_vport_vtag_tx_cfg_cmd*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %2, align 8
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 2
  store %struct.hclge_tx_vtag_cfg* %10, %struct.hclge_tx_vtag_cfg** %3, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 1
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %5, align 8
  %14 = load i32, i32* @HCLGE_OPC_VLAN_PORT_TX_CFG, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hclge_vport_vtag_tx_cfg_cmd*
  store %struct.hclge_vport_vtag_tx_cfg_cmd* %18, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %19 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %20 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %26 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HCLGE_ACCEPT_TAG1_B, align 4
  %35 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %36 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 @hnae3_set_bit(i32 %33, i32 %34, i32 %40)
  %42 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HCLGE_ACCEPT_UNTAG1_B, align 4
  %46 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %47 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = call i32 @hnae3_set_bit(i32 %44, i32 %45, i32 %51)
  %53 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HCLGE_ACCEPT_TAG2_B, align 4
  %57 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %58 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = call i32 @hnae3_set_bit(i32 %55, i32 %56, i32 %62)
  %64 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HCLGE_ACCEPT_UNTAG2_B, align 4
  %68 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %69 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = call i32 @hnae3_set_bit(i32 %66, i32 %67, i32 %73)
  %75 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HCLGE_PORT_INS_TAG1_EN_B, align 4
  %79 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %80 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = call i32 @hnae3_set_bit(i32 %77, i32 %78, i32 %84)
  %86 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HCLGE_PORT_INS_TAG2_EN_B, align 4
  %90 = load %struct.hclge_tx_vtag_cfg*, %struct.hclge_tx_vtag_cfg** %3, align 8
  %91 = getelementptr inbounds %struct.hclge_tx_vtag_cfg, %struct.hclge_tx_vtag_cfg* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  %96 = call i32 @hnae3_set_bit(i32 %88, i32 %89, i32 %95)
  %97 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %98 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @HCLGE_CFG_NIC_ROCE_SEL_B, align 4
  %101 = call i32 @hnae3_set_bit(i32 %99, i32 %100, i32 0)
  %102 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %103 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @HCLGE_VF_NUM_PER_CMD, align 4
  %106 = udiv i32 %104, %105
  %107 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %110 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HCLGE_VF_NUM_PER_CMD, align 4
  %113 = urem i32 %111, %112
  %114 = load i32, i32* @HCLGE_VF_NUM_PER_BYTE, align 4
  %115 = udiv i32 %113, %114
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %7, align 8
  %117 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %118 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @HCLGE_VF_NUM_PER_BYTE, align 4
  %121 = urem i32 %119, %120
  %122 = shl i32 1, %121
  %123 = load %struct.hclge_vport_vtag_tx_cfg_cmd*, %struct.hclge_vport_vtag_tx_cfg_cmd** %4, align 8
  %124 = getelementptr inbounds %struct.hclge_vport_vtag_tx_cfg_cmd, %struct.hclge_vport_vtag_tx_cfg_cmd* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %129 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %128, i32 0, i32 1
  %130 = call i32 @hclge_cmd_send(i32* %129, %struct.hclge_desc* %6, i32 1)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %1
  %134 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %135 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %133, %1
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
