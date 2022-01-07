; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_uc_addr_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_uc_addr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, %struct.hclge_dev* }
%struct.hclge_dev = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32 }
%struct.hclge_desc = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"Set_uc mac err! invalid mac:%pM. is_zero:%d,is_br=%d,is_mul=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_MAC_EPORT_VFID_M = common dso_local global i32 0, align 4
@HCLGE_MAC_EPORT_VFID_S = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"UC MAC table full(%u)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"VF %d mac(%pM) exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"PF failed to add unicast entry(%pM) in the MAC table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_add_uc_addr_common(%struct.hclge_vport* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd, align 4
  %8 = alloca %struct.hclge_desc, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 1
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @is_zero_ether_addr(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @is_broadcast_ether_addr(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @is_multicast_ether_addr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21, %17, %2
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @is_zero_ether_addr(i8* %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @is_broadcast_ether_addr(i8* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @is_multicast_ether_addr(i8* %35)
  %37 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %30, i64 %32, i64 %34, i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %106

40:                                               ; preds = %21
  %41 = call i32 @memset(%struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32 0, i32 4)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @HCLGE_MAC_EPORT_VFID_M, align 4
  %44 = load i32, i32* @HCLGE_MAC_EPORT_VFID_S, align 4
  %45 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %46 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hnae3_set_field(i32 %42, i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd* %7, i8* %52, i32 0)
  %54 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %55 = call i32 @hclge_lookup_mac_vlan_tbl(%struct.hclge_vport* %54, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, %struct.hclge_desc* %8, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %40
  %61 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %62 = call i32 @hclge_is_umv_space_full(%struct.hclge_vport* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %66 = call i32 @hclge_add_mac_vlan_tbl(%struct.hclge_vport* %65, %struct.hclge_mac_vlan_tbl_entry_cmd* %7, i32* null)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %71 = call i32 @hclge_update_umv_space(%struct.hclge_vport* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %60
  %75 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %76 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %80 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %106

85:                                               ; preds = %40
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %90 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %94 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @dev_warn(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %96)
  store i32 0, i32* %3, align 4
  br label %106

98:                                               ; preds = %85
  %99 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %100 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %98, %88, %74, %72, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @is_zero_ether_addr(i8*) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.hclge_mac_vlan_tbl_entry_cmd*, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd*, i8*, i32) #1

declare dso_local i32 @hclge_lookup_mac_vlan_tbl(%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @hclge_is_umv_space_full(%struct.hclge_vport*) #1

declare dso_local i32 @hclge_add_mac_vlan_tbl(%struct.hclge_vport*, %struct.hclge_mac_vlan_tbl_entry_cmd*, i32*) #1

declare dso_local i32 @hclge_update_umv_space(%struct.hclge_vport*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
