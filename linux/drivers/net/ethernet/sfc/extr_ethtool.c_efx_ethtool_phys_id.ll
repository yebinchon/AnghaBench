; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, i32)* }

@EFX_LED_DEFAULT = common dso_local global i32 0, align 4
@EFX_LED_ON = common dso_local global i32 0, align 4
@EFX_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @efx_ethtool_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.efx_nic* %9, %struct.efx_nic** %6, align 8
  %10 = load i32, i32* @EFX_LED_DEFAULT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %19 [
    i32 128, label %12
    i32 129, label %14
    i32 130, label %16
    i32 131, label %18
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @EFX_LED_ON, align 4
  store i32 %13, i32* %7, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @EFX_LED_OFF, align 4
  store i32 %15, i32* %7, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EFX_LED_DEFAULT, align 4
  store i32 %17, i32* %7, align 4
  br label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

19:                                               ; preds = %2, %16, %14, %12
  %20 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.efx_nic*, i32)*, i32 (%struct.efx_nic*, i32)** %23, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %24(%struct.efx_nic* %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
