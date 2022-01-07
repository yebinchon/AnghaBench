; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_rm_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_rm_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i64, i32, i32, i32 }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i64 }
%struct.dsaf_drv_tbl_tcam_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i32 }

@DSAF_INVALID_ENTRY_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"rm_uc_addr %s Mac %pM err!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"rm_uc_addr no tcam, %s Mac key(%#x:%#x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"rm_uc_addr, %s Mac key(%#x:%#x) entry_index%d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_dsaf_rm_mac_addr(%struct.dsaf_device* %0, %struct.dsaf_drv_mac_single_dest_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca %struct.dsaf_drv_mac_single_dest_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dsaf_tbl_tcam_ucast_cfg, align 8
  %8 = alloca %struct.dsaf_drv_tbl_tcam_key, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store %struct.dsaf_drv_mac_single_dest_entry* %1, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %9 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %11 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_valid_ether_addr(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %17 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %20 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %24 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %102

29:                                               ; preds = %2
  %30 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %31 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %32 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %35 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %38 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @hns_dsaf_set_mac_key(%struct.dsaf_device* %30, %struct.dsaf_drv_tbl_tcam_key* %8, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %42 = call i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device* %41, %struct.dsaf_drv_tbl_tcam_key* %8)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %29
  %47 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %48 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %51 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  store i32 0, i32* %3, align 4
  br label %102

61:                                               ; preds = %29
  %62 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %63 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %66 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %8, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %8, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i64 %75)
  %77 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %78 = load i64, i64* %6, align 8
  %79 = bitcast %struct.dsaf_drv_tbl_tcam_key* %8 to %struct.dsaf_tbl_tcam_data*
  %80 = call i32 @hns_dsaf_tcam_uc_get(%struct.dsaf_device* %77, i64 %78, %struct.dsaf_tbl_tcam_data* %79, %struct.dsaf_tbl_tcam_ucast_cfg* %7)
  %81 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %82 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %7, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %61
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %102

90:                                               ; preds = %61
  %91 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %92 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %93 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %96 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %99 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @hns_dsaf_del_mac_entry(%struct.dsaf_device* %91, i32 %94, i32 %97, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %90, %87, %46, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @hns_dsaf_set_mac_key(%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*, i32, i32, i32) #1

declare dso_local i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @hns_dsaf_tcam_uc_get(%struct.dsaf_device*, i64, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_ucast_cfg*) #1

declare dso_local i32 @hns_dsaf_del_mac_entry(%struct.dsaf_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
