; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, i32*)* }

@EFX_ETHTOOL_SW_STAT_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @efx_ethtool_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.efx_nic* %8, %struct.efx_nic** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %29 [
    i32 129, label %10
    i32 128, label %26
  ]

10:                                               ; preds = %2
  %11 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.efx_nic*, i32*)*, i32 (%struct.efx_nic*, i32*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %17 = call i32 %15(%struct.efx_nic* %16, i32* null)
  %18 = load i32, i32* @EFX_ETHTOOL_SW_STAT_COUNT, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %21 = call i32 @efx_describe_per_queue_stats(%struct.efx_nic* %20, i32* null)
  %22 = add nsw i32 %19, %21
  %23 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %24 = call i32 @efx_ptp_describe_stats(%struct.efx_nic* %23, i32* null)
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %28 = call i32 @efx_ethtool_fill_self_tests(%struct.efx_nic* %27, i32* null, i32* null, i32* null)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %26, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @efx_describe_per_queue_stats(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_ptp_describe_stats(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_ethtool_fill_self_tests(%struct.efx_nic*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
