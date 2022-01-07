; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_set_mac_uc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_set_mac_uc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i32, i32 }
%struct.dsaf_drv_tbl_tcam_key = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i32, i32, i64, i64, i64 }
%struct.dsaf_drv_priv = type { %struct.dsaf_drv_soft_mac_tbl* }
%struct.dsaf_drv_soft_mac_tbl = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i32, i32 }

@DSAF_INVALID_ENTRY_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"set_uc %s Mac %pM err!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"set_uc_entry failed, %s Mac key(%#x:%#x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"set_uc_entry, %s Mac key(%#x:%#x) entry_index%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_dsaf_set_mac_uc_entry(%struct.dsaf_device* %0, %struct.dsaf_drv_mac_single_dest_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca %struct.dsaf_drv_mac_single_dest_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dsaf_drv_tbl_tcam_key, align 4
  %8 = alloca %struct.dsaf_tbl_tcam_ucast_cfg, align 8
  %9 = alloca %struct.dsaf_drv_priv*, align 8
  %10 = alloca %struct.dsaf_drv_soft_mac_tbl*, align 8
  %11 = alloca %struct.dsaf_tbl_tcam_data, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store %struct.dsaf_drv_mac_single_dest_entry* %1, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %12 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %14 = call i64 @hns_dsaf_dev_priv(%struct.dsaf_device* %13)
  %15 = inttoptr i64 %14 to %struct.dsaf_drv_priv*
  store %struct.dsaf_drv_priv* %15, %struct.dsaf_drv_priv** %9, align 8
  %16 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %9, align 8
  %17 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %16, i32 0, i32 0
  %18 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %17, align 8
  store %struct.dsaf_drv_soft_mac_tbl* %18, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %19 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %20 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @MAC_IS_ALL_ZEROS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %2
  %25 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %26 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @MAC_IS_BROADCAST(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %32 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @MAC_IS_MULTICAST(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30, %24, %2
  %37 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %38 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %41 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %45 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %146

50:                                               ; preds = %30
  %51 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %52 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %53 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %56 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %59 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hns_dsaf_set_mac_key(%struct.dsaf_device* %51, %struct.dsaf_drv_tbl_tcam_key* %7, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %63 = call i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device* %62, %struct.dsaf_drv_tbl_tcam_key* %7)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %50
  %68 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %69 = call i64 @hns_dsaf_find_empty_mac_entry(%struct.dsaf_device* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %75 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %78 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %146

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %50
  %92 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %93 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %96 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i64 %105)
  %107 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %8, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %8, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %8, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %8, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %112 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %8, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %11, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %11, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @hns_dsaf_tcam_uc_cfg(%struct.dsaf_device* %123, i64 %124, %struct.dsaf_tbl_tcam_data* %11, %struct.dsaf_tbl_tcam_ucast_cfg* %8)
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %128 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %127, i64 %126
  store %struct.dsaf_drv_soft_mac_tbl* %128, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %131 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %136 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %143 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %91, %73, %36
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @hns_dsaf_dev_priv(%struct.dsaf_device*) #1

declare dso_local i64 @MAC_IS_ALL_ZEROS(i32) #1

declare dso_local i64 @MAC_IS_BROADCAST(i32) #1

declare dso_local i64 @MAC_IS_MULTICAST(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @hns_dsaf_set_mac_key(%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*, i32, i32, i32) #1

declare dso_local i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*) #1

declare dso_local i64 @hns_dsaf_find_empty_mac_entry(%struct.dsaf_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @hns_dsaf_tcam_uc_cfg(%struct.dsaf_device*, i64, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_ucast_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
