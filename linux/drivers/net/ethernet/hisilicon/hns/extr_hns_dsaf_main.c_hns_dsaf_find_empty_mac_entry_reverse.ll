; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_find_empty_mac_entry_reverse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_find_empty_mac_entry_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_drv_priv = type { %struct.dsaf_drv_soft_mac_tbl* }
%struct.dsaf_drv_soft_mac_tbl = type { i64 }

@DSAF_TCAM_SUM = common dso_local global i32 0, align 4
@DSAF_INVALID_ENTRY_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsaf_device*)* @hns_dsaf_find_empty_mac_entry_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_dsaf_find_empty_mac_entry_reverse(%struct.dsaf_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca %struct.dsaf_drv_priv*, align 8
  %5 = alloca %struct.dsaf_drv_soft_mac_tbl*, align 8
  %6 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %8 = call %struct.dsaf_drv_priv* @hns_dsaf_dev_priv(%struct.dsaf_device* %7)
  store %struct.dsaf_drv_priv* %8, %struct.dsaf_drv_priv** %4, align 8
  %9 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %4, align 8
  %10 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %9, i32 0, i32 0
  %11 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %10, align 8
  %12 = load i32, i32* @DSAF_TCAM_SUM, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %11, i64 %14
  store %struct.dsaf_drv_soft_mac_tbl* %15, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  %16 = load i32, i32* @DSAF_TCAM_SUM, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  %23 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  %31 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %30, i32 -1
  store %struct.dsaf_drv_soft_mac_tbl* %31, %struct.dsaf_drv_soft_mac_tbl** %5, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.dsaf_drv_priv* @hns_dsaf_dev_priv(%struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
