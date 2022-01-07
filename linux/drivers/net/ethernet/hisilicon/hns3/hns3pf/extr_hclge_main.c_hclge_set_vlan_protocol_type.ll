; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_protocol_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vlan_protocol_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.hclge_rx_vlan_type_cfg_cmd = type { i8*, i8*, i8*, i8* }
%struct.hclge_tx_vlan_type_cfg_cmd = type { i8*, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_MAC_VLAN_TYPE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Send rxvlan protocol type command fail, ret =%d\0A\00", align 1
@HCLGE_OPC_MAC_VLAN_INSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Send txvlan protocol type command fail, ret =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_set_vlan_protocol_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vlan_protocol_type(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_rx_vlan_type_cfg_cmd*, align 8
  %5 = alloca %struct.hclge_tx_vlan_type_cfg_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %8 = load i32, i32* @HCLGE_OPC_MAC_VLAN_TYPE_ID, align 4
  %9 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclge_rx_vlan_type_cfg_cmd*
  store %struct.hclge_rx_vlan_type_cfg_cmd* %12, %struct.hclge_rx_vlan_type_cfg_cmd** %4, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.hclge_rx_vlan_type_cfg_cmd*, %struct.hclge_rx_vlan_type_cfg_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.hclge_rx_vlan_type_cfg_cmd, %struct.hclge_rx_vlan_type_cfg_cmd* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.hclge_rx_vlan_type_cfg_cmd*, %struct.hclge_rx_vlan_type_cfg_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.hclge_rx_vlan_type_cfg_cmd, %struct.hclge_rx_vlan_type_cfg_cmd* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.hclge_rx_vlan_type_cfg_cmd*, %struct.hclge_rx_vlan_type_cfg_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.hclge_rx_vlan_type_cfg_cmd, %struct.hclge_rx_vlan_type_cfg_cmd* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.hclge_rx_vlan_type_cfg_cmd*, %struct.hclge_rx_vlan_type_cfg_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.hclge_rx_vlan_type_cfg_cmd, %struct.hclge_rx_vlan_type_cfg_cmd* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 1
  %43 = call i32 @hclge_cmd_send(i32* %42, %struct.hclge_desc* %6, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %1
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %88

54:                                               ; preds = %1
  %55 = load i32, i32* @HCLGE_OPC_MAC_VLAN_INSERT, align 4
  %56 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %55, i32 0)
  %57 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.hclge_tx_vlan_type_cfg_cmd*
  store %struct.hclge_tx_vlan_type_cfg_cmd* %59, %struct.hclge_tx_vlan_type_cfg_cmd** %5, align 8
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.hclge_tx_vlan_type_cfg_cmd*, %struct.hclge_tx_vlan_type_cfg_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.hclge_tx_vlan_type_cfg_cmd, %struct.hclge_tx_vlan_type_cfg_cmd* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %struct.hclge_tx_vlan_type_cfg_cmd*, %struct.hclge_tx_vlan_type_cfg_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.hclge_tx_vlan_type_cfg_cmd, %struct.hclge_tx_vlan_type_cfg_cmd* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %74, i32 0, i32 1
  %76 = call i32 @hclge_cmd_send(i32* %75, %struct.hclge_desc* %6, i32 1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %54
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %54
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %46
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
