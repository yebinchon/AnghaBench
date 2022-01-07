; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_find_soft_mac_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_find_soft_mac_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i64 }
%struct.dsaf_drv_tbl_tcam_key = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.dsaf_drv_priv = type { %struct.dsaf_drv_soft_mac_tbl* }
%struct.dsaf_drv_soft_mac_tbl = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@DSAF_INVALID_ENTRY_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*)* @hns_dsaf_find_soft_mac_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device* %0, %struct.dsaf_drv_tbl_tcam_key* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca %struct.dsaf_drv_tbl_tcam_key*, align 8
  %6 = alloca %struct.dsaf_drv_priv*, align 8
  %7 = alloca %struct.dsaf_drv_soft_mac_tbl*, align 8
  %8 = alloca i64, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store %struct.dsaf_drv_tbl_tcam_key* %1, %struct.dsaf_drv_tbl_tcam_key** %5, align 8
  %9 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %10 = call i64 @hns_dsaf_dev_priv(%struct.dsaf_device* %9)
  %11 = inttoptr i64 %10 to %struct.dsaf_drv_priv*
  store %struct.dsaf_drv_priv* %11, %struct.dsaf_drv_priv** %6, align 8
  %12 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %6, align 8
  %13 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %12, i32 0, i32 0
  %14 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %13, align 8
  store %struct.dsaf_drv_soft_mac_tbl* %14, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %56, %2
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %18 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  %23 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  %29 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %5, align 8
  %34 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %27
  %39 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  %40 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %5, align 8
  %45 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  %51 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %3, align 8
  br label %61

53:                                               ; preds = %38, %27, %21
  %54 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  %55 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %54, i32 1
  store %struct.dsaf_drv_soft_mac_tbl* %55, %struct.dsaf_drv_soft_mac_tbl** %7, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %15

59:                                               ; preds = %15
  %60 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i64 @hns_dsaf_dev_priv(%struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
