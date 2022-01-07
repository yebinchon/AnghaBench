; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.hns_nic_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.TYPE_4__*, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @hns_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.hns_nic_priv*, align 8
  %6 = alloca %struct.hnae_ae_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hns_nic_priv* %8, %struct.hns_nic_priv** %5, align 8
  %9 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %10 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %14, align 8
  store %struct.hnae_ae_ops* %15, %struct.hnae_ae_ops** %6, align 8
  %16 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %17 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_4__*, i32*, i32*, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_4__*, i32*, i32*, i32*)* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %22 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_4__*, i32*, i32*, i32*)** %22, align 8
  %24 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %27, i32 0, i32 2
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 1
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 0
  %33 = call i32 %23(%struct.TYPE_4__* %26, i32* %28, i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
