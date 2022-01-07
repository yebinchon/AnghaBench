; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.dpaa_priv = type { %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dpaa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dpaa_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.net_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.dpaa_priv* %14, %struct.dpaa_priv** %4, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @dpaa_eth_sysfs_remove(%struct.device* %15)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @dev_set_drvdata(%struct.device* %17, i32* null)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @unregister_netdev(%struct.net_device* %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %23 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %22, i32 0, i32 2
  %24 = call i32 @dpaa_fq_free(%struct.device* %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %26 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %25, i32 0, i32 1
  %27 = call i32 @qman_delete_cgr_safe(%struct.TYPE_6__* %26)
  %28 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %29 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qman_release_cgrid(i32 %31)
  %33 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %34 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @qman_delete_cgr_safe(%struct.TYPE_6__* %35)
  %37 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %38 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qman_release_cgrid(i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @dpaa_napi_del(%struct.net_device* %43)
  %45 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %46 = call i32 @dpaa_bps_free(%struct.dpaa_priv* %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @free_netdev(%struct.net_device* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpaa_eth_sysfs_remove(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dpaa_fq_free(%struct.device*, i32*) #1

declare dso_local i32 @qman_delete_cgr_safe(%struct.TYPE_6__*) #1

declare dso_local i32 @qman_release_cgrid(i32) #1

declare dso_local i32 @dpaa_napi_del(%struct.net_device*) #1

declare dso_local i32 @dpaa_bps_free(%struct.dpaa_priv*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
