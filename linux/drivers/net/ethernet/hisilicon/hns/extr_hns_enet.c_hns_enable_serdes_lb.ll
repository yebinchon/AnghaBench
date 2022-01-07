; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_enable_serdes_lb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_enable_serdes_lb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*, i32, i32)* }

@MAC_INTERNALLOOP_SERDES = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns_enable_serdes_lb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_enable_serdes_lb(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns_nic_priv*, align 8
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca %struct.hnae_ae_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hns_nic_priv* %11, %struct.hns_nic_priv** %4, align 8
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 0
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %13, align 8
  store %struct.hnae_handle* %14, %struct.hnae_handle** %5, align 8
  %15 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %16 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %18, align 8
  store %struct.hnae_ae_ops* %19, %struct.hnae_ae_ops** %6, align 8
  %20 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %21 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %21, align 8
  %23 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %24 = load i32, i32* @MAC_INTERNALLOOP_SERDES, align 4
  %25 = call i32 %22(%struct.hnae_handle* %23, i32 %24, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %1
  %31 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %32 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %31, i32 0, i32 1
  %33 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %32, align 8
  %34 = icmp ne i32 (%struct.hnae_handle*)* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %37 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %36, i32 0, i32 1
  %38 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %37, align 8
  %39 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %40 = call i32 %38(%struct.hnae_handle* %39)
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %40, %35 ], [ 0, %41 ]
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %42
  %49 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %50 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1000, i32* %7, align 4
  br label %56

55:                                               ; preds = %48
  store i32 10000, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  store i32 1, i32* %8, align 4
  %57 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %6, align 8
  %58 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %57, i32 0, i32 2
  %59 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %58, align 8
  %60 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 %59(%struct.hnae_handle* %60, i32 %61, i32 %62)
  %64 = call i32 @mdelay(i32 300)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %56, %46, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
