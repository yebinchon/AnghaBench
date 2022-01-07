; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hns_nic_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*)* }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @hns_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_ae_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hns_nic_priv* %9, %struct.hns_nic_priv** %6, align 8
  %10 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %11 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %15, align 8
  store %struct.hnae_ae_ops* %16, %struct.hnae_ae_ops** %7, align 8
  %17 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %18 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %25 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %32 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %31, i32 0, i32 2
  %33 = load i32 (%struct.TYPE_6__*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32*)* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %37 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_6__*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32*)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %2
  %41 = load i32, i32* @ESRCH, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %35
  %44 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %45 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %44, i32 0, i32 2
  %46 = load i32 (%struct.TYPE_6__*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*)** %45, align 8
  %47 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %48 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 11
  %52 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %52, i32 0, i32 10
  %54 = call i32 %46(%struct.TYPE_6__* %49, i32* %51, i32* %53)
  %55 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %56 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_6__*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*)** %56, align 8
  %58 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %59 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 9
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 8
  %65 = call i32 %57(%struct.TYPE_6__* %60, i32* %62, i32* %64)
  %66 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %7, align 8
  %67 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)** %67, align 8
  %69 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %70 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %72, i32 0, i32 7
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 6
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 5
  %78 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 4
  %80 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %80, i32 0, i32 3
  %82 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %82, i32 0, i32 2
  %84 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %84, i32 0, i32 1
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %86, i32 0, i32 0
  %88 = call i32 %68(%struct.TYPE_6__* %71, i32* %73, i32* %75, i32* %77, i32* %79, i32* %81, i32* %83, i32* %85, i32* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %43, %40
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
