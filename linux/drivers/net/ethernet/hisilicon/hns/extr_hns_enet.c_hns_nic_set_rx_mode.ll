; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_handle*, i32)* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@hns_nic_uc_sync = common dso_local global i32 0, align 4
@hns_nic_uc_unsync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sync uc address fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns_nic_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca %struct.hnae_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hns_nic_priv* %6, %struct.hns_nic_priv** %3, align 8
  %7 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %7, i32 0, i32 0
  %9 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  store %struct.hnae_handle* %9, %struct.hnae_handle** %4, align 8
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %11 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.hnae_handle*, i32)* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_PROMISC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %27 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %31, align 8
  %33 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %34 = call i32 %32(%struct.hnae_handle* %33, i32 1)
  br label %45

35:                                               ; preds = %18
  %36 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %37 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %41, align 8
  %43 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %44 = call i32 %42(%struct.hnae_handle* %43, i32 0)
  br label %45

45:                                               ; preds = %35, %25
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @hns_set_multicast_list(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* @hns_nic_uc_sync, align 4
  %51 = load i32, i32* @hns_nic_uc_unsync, align 4
  %52 = call i64 @__dev_uc_sync(%struct.net_device* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %46
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns_set_multicast_list(%struct.net_device*) #1

declare dso_local i64 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
