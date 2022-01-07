; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_remove_mac_vlan_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_remove_mac_vlan_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32 }
%struct.hclge_desc = type { i32, i32* }

@HCLGE_OPC_MAC_VLAN_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"del mac addr failed for cmd_send, ret =%d.\0A\00", align 1
@HCLGE_MAC_VLAN_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*)* @hclge_remove_mac_vlan_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_remove_mac_vlan_tbl(%struct.hclge_vport* %0, %struct.hclge_mac_vlan_tbl_entry_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store %struct.hclge_mac_vlan_tbl_entry_cmd* %1, %struct.hclge_mac_vlan_tbl_entry_cmd** %5, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 0
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %6, align 8
  %14 = load i32, i32* @HCLGE_OPC_MAC_VLAN_REMOVE, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %5, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.hclge_mac_vlan_tbl_entry_cmd* %18, i32 4)
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 1
  %22 = call i32 @hclge_cmd_send(i32* %21, %struct.hclge_desc* %7, i32 1)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  store i32 %40, i32* %8, align 4
  %41 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @HCLGE_MAC_VLAN_REMOVE, align 4
  %48 = call i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %25
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

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
