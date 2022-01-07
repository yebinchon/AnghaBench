; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rm_mc_addr_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rm_mc_addr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32 }
%struct.hclge_desc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Remove mc mac err! invalid mac:%pM.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_MAC_VLAN_BIT0_EN_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_rm_mc_addr_common(%struct.hclge_vport* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.hclge_desc], align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 1
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @is_multicast_ether_addr(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32 0, i32 4)
  %27 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HCLGE_MAC_VLAN_BIT0_EN_B, align 4
  %30 = call i32 @hnae3_set_bit(i32 %28, i32 %29, i32 0)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd* %7, i8* %31, i32 1)
  %33 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %34 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %9, i64 0, i64 0
  %35 = call i32 @hclge_lookup_mac_vlan_tbl(%struct.hclge_vport* %33, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, %struct.hclge_desc* %34, i32 1)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %25
  %39 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %9, i64 0, i64 0
  %40 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %41 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @hclge_update_desc_vfid(%struct.hclge_desc* %39, i32 %42, i32 1)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %38
  %49 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %9, i64 0, i64 0
  %50 = call i64 @hclge_is_all_function_id_zero(%struct.hclge_desc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %54 = call i32 @hclge_remove_mac_vlan_tbl(%struct.hclge_vport* %53, %struct.hclge_mac_vlan_tbl_entry_cmd* %7)
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %57 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %9, i64 0, i64 0
  %58 = call i32 @hclge_add_mac_vlan_tbl(%struct.hclge_vport* %56, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, %struct.hclge_desc* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %52
  br label %61

60:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %46, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.hclge_mac_vlan_tbl_entry_cmd*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd*, i8*, i32) #1

declare dso_local i32 @hclge_lookup_mac_vlan_tbl(%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @hclge_update_desc_vfid(%struct.hclge_desc*, i32, i32) #1

declare dso_local i64 @hclge_is_all_function_id_zero(%struct.hclge_desc*) #1

declare dso_local i32 @hclge_remove_mac_vlan_tbl(%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*) #1

declare dso_local i32 @hclge_add_mac_vlan_tbl(%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
