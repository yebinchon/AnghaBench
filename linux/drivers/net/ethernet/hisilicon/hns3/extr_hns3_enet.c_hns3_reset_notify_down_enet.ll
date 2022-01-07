; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_down_enet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_down_enet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.hnae3_knic_private_info, i32 }
%struct.hnae3_knic_private_info = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hnae3_ae_dev = type { i32 }
%struct.hns3_nic_priv = type { i32 }

@HNS3_NIC_STATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns3_reset_notify_down_enet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_reset_notify_down_enet(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca %struct.hnae3_knic_private_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hns3_nic_priv*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %9 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.hnae3_ae_dev* @pci_get_drvdata(i32 %10)
  store %struct.hnae3_ae_dev* %11, %struct.hnae3_ae_dev** %4, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %13 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %12, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %13, %struct.hnae3_knic_private_info** %5, align 8
  %14 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %15 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.hns3_nic_priv* %18, %struct.hns3_nic_priv** %7, align 8
  %19 = load i32, i32* @HNS3_NIC_STATE_RESETTING, align 4
  %20 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %21 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %20, i32 0, i32 0
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %27 = call i64 @hns3_dev_ongoing_func_reset(%struct.hnae3_ae_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @hns3_remove_hw_addr(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @hns3_del_all_fd_rules(%struct.net_device* %32, i32 0)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @netif_running(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @hns3_nic_net_stop(%struct.net_device* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %38, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(i32) #1

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @hns3_dev_ongoing_func_reset(%struct.hnae3_ae_dev*) #1

declare dso_local i32 @hns3_remove_hw_addr(%struct.net_device*) #1

declare dso_local i32 @hns3_del_all_fd_rules(%struct.net_device*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @hns3_nic_net_stop(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
