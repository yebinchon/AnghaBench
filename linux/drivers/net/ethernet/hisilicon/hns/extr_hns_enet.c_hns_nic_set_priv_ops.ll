; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_set_priv_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_set_priv_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { %struct.TYPE_4__, i32, %struct.hnae_handle* }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.hnae_handle = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae_handle*, i32)* }

@fill_desc = common dso_local global i32 0, align 4
@get_rx_desc_bnum = common dso_local global i32 0, align 4
@hns_nic_maybe_stop_tx = common dso_local global i8* null, align 8
@get_v2rx_desc_bnum = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@fill_tso_desc = common dso_local global i32 0, align 4
@hns_nic_maybe_stop_tso = common dso_local global i8* null, align 8
@fill_v2_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns_nic_set_priv_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_set_priv_ops(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca %struct.hnae_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hns_nic_priv* %6, %struct.hns_nic_priv** %3, align 8
  %7 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %7, i32 0, i32 2
  %9 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  store %struct.hnae_handle* %9, %struct.hnae_handle** %4, align 8
  %10 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %11 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @AE_IS_VER1(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @fill_desc, align 4
  %17 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @get_rx_desc_bnum, align 4
  %21 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i8*, i8** @hns_nic_maybe_stop_tx, align 8
  %25 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %26 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  br label %76

28:                                               ; preds = %1
  %29 = load i32, i32* @get_v2rx_desc_bnum, align 4
  %30 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %31 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NETIF_F_TSO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %28
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NETIF_F_TSO6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39, %28
  %47 = load i32, i32* @fill_tso_desc, align 4
  %48 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %49 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** @hns_nic_maybe_stop_tso, align 8
  %52 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %53 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netif_set_gso_max_size(%struct.net_device* %55, i32 28672)
  br label %66

57:                                               ; preds = %39
  %58 = load i32, i32* @fill_v2_desc, align 4
  %59 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %60 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @hns_nic_maybe_stop_tx, align 8
  %63 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %64 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %57, %46
  %67 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %68 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %72, align 8
  %74 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %75 = call i32 %73(%struct.hnae_handle* %74, i32 1)
  br label %76

76:                                               ; preds = %66, %15
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
