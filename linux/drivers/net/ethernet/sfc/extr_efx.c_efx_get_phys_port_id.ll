; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_get_phys_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_get_phys_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32 }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @efx_get_phys_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_get_phys_port_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.efx_nic* %8, %struct.efx_nic** %6, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)*, i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)** %12, align 8
  %14 = icmp ne i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)*, i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)** %19, align 8
  %21 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %22 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %23 = call i32 %20(%struct.efx_nic* %21, %struct.netdev_phys_item_id* %22)
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
