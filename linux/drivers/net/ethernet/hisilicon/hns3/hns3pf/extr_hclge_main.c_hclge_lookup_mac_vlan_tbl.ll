; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_lookup_mac_vlan_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_lookup_mac_vlan_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32 }
%struct.hclge_desc = type { i32, i32*, i32 }

@HCLGE_OPC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"lookup mac addr failed for cmd_send, ret =%d.\0A\00", align 1
@HCLGE_MAC_VLAN_LKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_desc*, i32)* @hclge_lookup_mac_vlan_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_lookup_mac_vlan_tbl(%struct.hclge_vport* %0, %struct.hclge_mac_vlan_tbl_entry_cmd* %1, %struct.hclge_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd*, align 8
  %8 = alloca %struct.hclge_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %6, align 8
  store %struct.hclge_mac_vlan_tbl_entry_cmd* %1, %struct.hclge_mac_vlan_tbl_entry_cmd** %7, align 8
  store %struct.hclge_desc* %2, %struct.hclge_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %10, align 8
  %17 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %18 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %17, i64 0
  %19 = load i32, i32* @HCLGE_OPC_MAC_VLAN_ADD, align 4
  %20 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %18, i32 %19, i32 1)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %4
  %24 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %27 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %26, i64 0
  %28 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  %31 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %32 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %31, i64 0
  %33 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %7, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.hclge_mac_vlan_tbl_entry_cmd* %35, i32 4)
  %37 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i64 1
  %39 = load i32, i32* @HCLGE_OPC_MAC_VLAN_ADD, align 4
  %40 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %38, i32 %39, i32 1)
  %41 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %44 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %43, i64 1
  %45 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 8
  %48 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %49 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %48, i64 2
  %50 = load i32, i32* @HCLGE_OPC_MAC_VLAN_ADD, align 4
  %51 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %49, i32 %50, i32 1)
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 1
  %54 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %55 = call i32 @hclge_cmd_send(i32* %53, %struct.hclge_desc* %54, i32 3)
  store i32 %55, i32* %13, align 4
  br label %67

56:                                               ; preds = %4
  %57 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %58 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %57, i64 0
  %59 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %7, align 8
  %62 = call i32 @memcpy(i32* %60, %struct.hclge_mac_vlan_tbl_entry_cmd* %61, i32 4)
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 1
  %65 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %66 = call i32 @hclge_cmd_send(i32* %64, %struct.hclge_desc* %65, i32 1)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %56, %23
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %72 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %98

78:                                               ; preds = %67
  %79 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %80 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %79, i64 0
  %81 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  store i32 %87, i32* %11, align 4
  %88 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %89 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %88, i64 0
  %90 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le16_to_cpu(i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @HCLGE_MAC_VLAN_LKUP, align 4
  %97 = call i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport* %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %78, %70
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hclge_mac_vlan_tbl_entry_cmd*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
