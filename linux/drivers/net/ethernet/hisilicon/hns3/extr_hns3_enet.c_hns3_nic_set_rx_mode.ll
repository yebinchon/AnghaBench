; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hnae3_handle = type { i32 }

@hns3_nic_uc_sync = common dso_local global i32 0, align 4
@hns3_nic_uc_unsync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sync uc address fail\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@HNAE3_OVERFLOW_UPE = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@hns3_nic_mc_sync = common dso_local global i32 0, align 4
@hns3_nic_mc_unsync = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"sync mc address fail\0A\00", align 1
@HNAE3_OVERFLOW_MPE = common dso_local global i32 0, align 4
@HNAE3_VLAN_FLTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns3_nic_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %6)
  store %struct.hnae3_handle* %7, %struct.hnae3_handle** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @hns3_get_netdev_flags(%struct.net_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @hns3_nic_uc_sync, align 4
  %12 = load i32, i32* @hns3_nic_uc_unsync, align 4
  %13 = call i32 @__dev_uc_sync(%struct.net_device* %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @HNAE3_OVERFLOW_UPE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %16
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_MULTICAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @hns3_nic_mc_sync, align 4
  %38 = load i32, i32* @hns3_nic_mc_unsync, align 4
  %39 = call i32 @__dev_mc_sync(%struct.net_device* %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @HNAE3_OVERFLOW_MPE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %42
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @HNAE3_VLAN_FLTR, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @hns3_enable_vlan_filter(%struct.net_device* %56, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %63 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @hns3_update_promisc_mode(%struct.net_device* %64, i32 %65)
  ret void
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @hns3_get_netdev_flags(%struct.net_device*) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @hns3_enable_vlan_filter(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_update_promisc_mode(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
