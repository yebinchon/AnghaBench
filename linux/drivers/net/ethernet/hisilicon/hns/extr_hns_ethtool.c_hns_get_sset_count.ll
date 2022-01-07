; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.hnae_handle*, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"get_sset_count is null!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_SS_TEST = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@ETH_SS_STATS = common dso_local global i32 0, align 4
@HNS_NET_STATS_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hns_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_handle*, align 8
  %8 = alloca %struct.hnae_ae_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hns_nic_priv* %11, %struct.hns_nic_priv** %6, align 8
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 0
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %13, align 8
  store %struct.hnae_handle* %14, %struct.hnae_handle** %7, align 8
  %15 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %16 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %18, align 8
  store %struct.hnae_ae_ops* %19, %struct.hnae_ae_ops** %8, align 8
  %20 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %8, align 8
  %21 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.hnae_handle*, i32)* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ETH_SS_TEST, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = udiv i64 4, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %39 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %38, i32 0, i32 0
  %40 = load %struct.hnae_handle*, %struct.hnae_handle** %39, align 8
  %41 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %81

65:                                               ; preds = %29
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ETH_SS_STATS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* @HNS_NET_STATS_CNT, align 4
  %71 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %8, align 8
  %72 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %71, i32 0, i32 0
  %73 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %72, align 8
  %74 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 %73(%struct.hnae_handle* %74, i32 %75)
  %77 = add nsw i32 %70, %76
  store i32 %77, i32* %3, align 4
  br label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %69, %63, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
