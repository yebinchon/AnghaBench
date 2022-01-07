; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_get_phys_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_get_phys_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.netdev_phys_item_id*)* @efx_ef10_get_phys_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_get_phys_port_id(%struct.efx_nic* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %6, align 8
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %11 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @is_valid_ether_addr(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %21 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %23 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %26 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %29 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %24, i32 %27, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
