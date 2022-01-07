; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_vm_config_bc_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_vm_config_bc_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32, %struct.mac_entry_idx*, %struct.dsaf_device* }
%struct.mac_entry_idx = type { i32 }
%struct.dsaf_device = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i32, i32 }

@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_vm_config_bc_en(%struct.hns_mac_cb* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dsaf_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mac_entry_idx*, align 8
  %12 = alloca %struct.dsaf_drv_mac_single_dest_entry, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %14 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %13, i32 0, i32 3
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %14, align 8
  store %struct.dsaf_device* %15, %struct.dsaf_device** %9, align 8
  %16 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %17 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 2
  %25 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %25, i64 %26
  store %struct.mac_entry_idx* %27, %struct.mac_entry_idx** %11, align 8
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %29 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @eth_broadcast_addr(i32 %33)
  %35 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %11, align 8
  %36 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %40 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb* %43, i64 %44, i32* %10)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %31
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %57 = call i32 @hns_dsaf_del_mac_mc_port(%struct.dsaf_device* %56, %struct.dsaf_drv_mac_single_dest_entry* %12)
  store i32 %57, i32* %8, align 4
  br label %61

58:                                               ; preds = %50
  %59 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %60 = call i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device* %59, %struct.dsaf_drv_mac_single_dest_entry* %12)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %48, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb*, i64, i32*) #1

declare dso_local i32 @hns_dsaf_del_mac_mc_port(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

declare dso_local i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
