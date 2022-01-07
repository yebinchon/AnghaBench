; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rm_uc_addr_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rm_uc_addr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Remove mac err! invalid mac:%pM.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_MAC_VLAN_BIT0_EN_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_rm_uc_addr_common(%struct.hclge_vport* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 0
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  store %struct.hclge_dev* %11, %struct.hclge_dev** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @is_zero_ether_addr(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @is_broadcast_ether_addr(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @is_multicast_ether_addr(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19, %15, %2
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %19
  %33 = call i32 @memset(%struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32 0, i32 4)
  %34 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HCLGE_MAC_VLAN_BIT0_EN_B, align 4
  %37 = call i32 @hnae3_set_bit(i32 %35, i32 %36, i32 0)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd* %7, i8* %38, i32 0)
  %40 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %41 = call i32 @hclge_remove_mac_vlan_tbl(%struct.hclge_vport* %40, %struct.hclge_mac_vlan_tbl_entry_cmd* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %46 = call i32 @hclge_update_umv_space(%struct.hclge_vport* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %23
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @is_zero_ether_addr(i8*) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.hclge_mac_vlan_tbl_entry_cmd*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd*, i8*, i32) #1

declare dso_local i32 @hclge_remove_mac_vlan_tbl(%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*) #1

declare dso_local i32 @hclge_update_umv_space(%struct.hclge_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
