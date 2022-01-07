; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_mac_vlan_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_mac_vlan_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32 }
%struct.hclge_desc = type { i32, i32*, i32 }

@HCLGE_OPC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@HCLGE_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"add mac addr failed for cmd_send, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_desc*)* @hclge_add_mac_vlan_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_add_mac_vlan_tbl(%struct.hclge_vport* %0, %struct.hclge_mac_vlan_tbl_entry_cmd* %1, %struct.hclge_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd*, align 8
  %7 = alloca %struct.hclge_desc*, align 8
  %8 = alloca %struct.hclge_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %5, align 8
  store %struct.hclge_mac_vlan_tbl_entry_cmd* %1, %struct.hclge_mac_vlan_tbl_entry_cmd** %6, align 8
  store %struct.hclge_desc* %2, %struct.hclge_desc** %7, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %8, align 8
  %17 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %18 = icmp ne %struct.hclge_desc* %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @HCLGE_OPC_MAC_VLAN_ADD, align 4
  %21 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %13, i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %13, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %6, align 8
  %25 = call i32 @memcpy(i32* %23, %struct.hclge_mac_vlan_tbl_entry_cmd* %24, i32 4)
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 1
  %28 = call i32 @hclge_cmd_send(i32* %27, %struct.hclge_desc* %13, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %13, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  store i32 %35, i32* %10, align 4
  %36 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @HCLGE_MAC_VLAN_ADD, align 4
  %43 = call i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %105

44:                                               ; preds = %3
  %45 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %46 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %45, i64 0
  %47 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %46, i32 0)
  %48 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %51 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %50, i64 0
  %52 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  %55 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %56 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %55, i64 1
  %57 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %56, i32 0)
  %58 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %61 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %60, i64 1
  %62 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 8
  %65 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %66 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %65, i64 2
  %67 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %66, i32 0)
  %68 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %69 = xor i32 %68, -1
  %70 = call i32 @cpu_to_le16(i32 %69)
  %71 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %72 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %71, i64 2
  %73 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %77 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %76, i64 0
  %78 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %6, align 8
  %81 = call i32 @memcpy(i32* %79, %struct.hclge_mac_vlan_tbl_entry_cmd* %80, i32 4)
  %82 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %83 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %82, i32 0, i32 1
  %84 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %85 = call i32 @hclge_cmd_send(i32* %83, %struct.hclge_desc* %84, i32 3)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %87 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %86, i64 0
  %88 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  store i32 %94, i32* %10, align 4
  %95 = load %struct.hclge_desc*, %struct.hclge_desc** %7, align 8
  %96 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %95, i64 0
  %97 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @le16_to_cpu(i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @HCLGE_MAC_VLAN_ADD, align 4
  %104 = call i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport* %100, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %44, %19
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %110 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %105
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %108
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hclge_mac_vlan_tbl_entry_cmd*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport*, i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
