; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i8*, i8* }
%struct.hns_nic_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.hnae_queue** }
%struct.TYPE_5__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.hnae_queue*, i8**)* }
%struct.hnae_queue = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @hns_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.hns_nic_priv*, align 8
  %6 = alloca %struct.hnae_ae_ops*, align 8
  %7 = alloca %struct.hnae_queue*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns_nic_priv* %10, %struct.hns_nic_priv** %5, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %12 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.hnae_queue**, %struct.hnae_queue*** %14, align 8
  %16 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %15, i64 0
  %17 = load %struct.hnae_queue*, %struct.hnae_queue** %16, align 8
  store %struct.hnae_queue* %17, %struct.hnae_queue** %7, align 8
  %18 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %19 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %23, align 8
  store %struct.hnae_ae_ops* %24, %struct.hnae_ae_ops** %6, align 8
  %25 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %26 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.hnae_queue*, i8**)*, i32 (%struct.hnae_queue*, i8**)** %26, align 8
  %28 = icmp ne i32 (%struct.hnae_queue*, i8**)* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %31 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.hnae_queue*, i8**)*, i32 (%struct.hnae_queue*, i8**)** %31, align 8
  %33 = load %struct.hnae_queue*, %struct.hnae_queue** %7, align 8
  %34 = call i32 %32(%struct.hnae_queue* %33, i8** %8)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.hnae_queue*, %struct.hnae_queue** %7, align 8
  %43 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hnae_queue*, %struct.hnae_queue** %7, align 8
  %49 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
