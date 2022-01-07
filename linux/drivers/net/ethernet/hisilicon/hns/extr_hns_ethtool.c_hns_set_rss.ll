; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.TYPE_4__*, i32*, i32*, i32)* }

@.str = private unnamed_addr constant [47 x i8] c"RSS feature is not supported on this hardware\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i32 0, align 4
@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid hfunc!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32)* @hns_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_set_rss(%struct.net_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_nic_priv*, align 8
  %11 = alloca %struct.hnae_ae_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.hns_nic_priv* %13, %struct.hns_nic_priv** %10, align 8
  %14 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %10, align 8
  %15 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @AE_IS_VER1(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %55

24:                                               ; preds = %4
  %25 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %10, align 8
  %26 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %30, align 8
  store %struct.hnae_ae_ops* %31, %struct.hnae_ae_ops** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ETH_RSS_HASH_NO_CHANGE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @netdev_err(%struct.net_device* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %55

44:                                               ; preds = %35, %24
  %45 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %11, align 8
  %46 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_4__*, i32*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32*, i32)** %46, align 8
  %48 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %10, align 8
  %49 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 %47(%struct.TYPE_4__* %50, i32* %51, i32* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %39, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
