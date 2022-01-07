; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_port_config_bc_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_port_config_bc_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32, %struct.dsaf_device* }
%struct.dsaf_device = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i32, i32 }

@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*, i32, i32, i32)* @hns_mac_port_config_bc_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_port_config_bc_en(%struct.hns_mac_cb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dsaf_device*, align 8
  %12 = alloca %struct.dsaf_drv_mac_single_dest_entry, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %14 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %13, i32 0, i32 2
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %14, align 8
  store %struct.dsaf_device* %15, %struct.dsaf_device** %11, align 8
  %16 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %17 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %24 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @eth_broadcast_addr(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %33 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %42 = call i32 @hns_dsaf_del_mac_mc_port(%struct.dsaf_device* %41, %struct.dsaf_drv_mac_single_dest_entry* %12)
  store i32 %42, i32* %10, align 4
  br label %46

43:                                               ; preds = %26
  %44 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %45 = call i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device* %44, %struct.dsaf_drv_mac_single_dest_entry* %12)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %46, %21
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @hns_dsaf_del_mac_mc_port(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

declare dso_local i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
