; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_add_uc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_add_uc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, %struct.dsaf_device* }
%struct.dsaf_device = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_add_uc_addr(%struct.hns_mac_cb* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dsaf_device*, align 8
  %9 = alloca %struct.dsaf_drv_mac_single_dest_entry, align 4
  %10 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %12 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %11, i32 0, i32 1
  %13 = load %struct.dsaf_device*, %struct.dsaf_device** %12, align 8
  store %struct.dsaf_device* %13, %struct.dsaf_device** %8, align 8
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %8, align 8
  %15 = call i64 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = call i32 @memset(%struct.dsaf_drv_mac_single_dest_entry* %9, i32 0, i32 12)
  %22 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %9, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @memcpy(i32 %23, i8* %24, i32 4)
  %26 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %27 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %9, i32 0, i32 0
  %33 = call i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb* %30, i32 %31, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %20
  %39 = load %struct.dsaf_device*, %struct.dsaf_device** %8, align 8
  %40 = call i32 @hns_dsaf_set_mac_uc_entry(%struct.dsaf_device* %39, %struct.dsaf_drv_mac_single_dest_entry* %9)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %36, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @memset(%struct.dsaf_drv_mac_single_dest_entry*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb*, i32, i32*) #1

declare dso_local i32 @hns_dsaf_set_mac_uc_entry(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
