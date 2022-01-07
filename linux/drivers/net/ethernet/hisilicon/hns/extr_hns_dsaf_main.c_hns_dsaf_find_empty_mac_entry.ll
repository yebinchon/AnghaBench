; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_find_empty_mac_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_find_empty_mac_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i64 }
%struct.dsaf_drv_priv = type { %struct.dsaf_drv_soft_mac_tbl* }
%struct.dsaf_drv_soft_mac_tbl = type { i64 }

@DSAF_INVALID_ENTRY_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dsaf_device*)* @hns_dsaf_find_empty_mac_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hns_dsaf_find_empty_mac_entry(%struct.dsaf_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca %struct.dsaf_drv_priv*, align 8
  %5 = alloca %struct.dsaf_drv_soft_mac_tbl*, align 8
  %6 = alloca i64, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %8 = call i64 @hns_dsaf_dev_priv(%struct.dsaf_device* %7)
  %9 = inttoptr i64 %8 to %struct.dsaf_drv_priv*
  store %struct.dsaf_drv_priv* %9, %struct.dsaf_drv_priv** %4, align 8
  %10 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %4, align 8
  %11 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %10, i32 0, i32 0
  %12 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %11, align 8
  store %struct.dsaf_drv_soft_mac_tbl* %12, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %16 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  %21 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %2, align 8
  br label %35

27:                                               ; preds = %19
  %28 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  %29 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %28, i32 1
  store %struct.dsaf_drv_soft_mac_tbl* %29, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i64 @hns_dsaf_dev_priv(%struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
