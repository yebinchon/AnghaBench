; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.hnae_handle*, i32, i32, i32)* }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @hns_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_handle*, align 8
  %8 = alloca %struct.hnae_ae_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns_nic_priv* %10, %struct.hns_nic_priv** %6, align 8
  %11 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %12 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %11, i32 0, i32 0
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %12, align 8
  store %struct.hnae_handle* %13, %struct.hnae_handle** %7, align 8
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %15 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %17, align 8
  store %struct.hnae_ae_ops* %18, %struct.hnae_ae_ops** %8, align 8
  %19 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %8, align 8
  %20 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.hnae_handle*, i32, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.hnae_handle*, i32, i32, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ESRCH, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %8, align 8
  %28 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.hnae_handle*, i32, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32, i32)** %28, align 8
  %30 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %31 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %30, i32 0, i32 0
  %32 = load %struct.hnae_handle*, %struct.hnae_handle** %31, align 8
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %29(%struct.hnae_handle* %32, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
