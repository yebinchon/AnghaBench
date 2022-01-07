; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i32, i32, i32, i32 }
%struct.hns_nic_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @hns_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_ae_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hns_nic_priv* %11, %struct.hns_nic_priv** %6, align 8
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %17, align 8
  store %struct.hnae_ae_ops* %18, %struct.hnae_ae_ops** %7, align 8
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %93

29:                                               ; preds = %2
  %30 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %31 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.TYPE_5__*, i32)* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %36 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_5__*, i32, i32)* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @ESRCH, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %34
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %47 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %57 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %42
  %61 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %62 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %62, align 8
  %64 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %65 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %63(%struct.TYPE_5__* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %72 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %72, align 8
  %74 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %75 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %73(%struct.TYPE_5__* %76, i32 %79, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %60
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %60
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %89, %39, %26
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
