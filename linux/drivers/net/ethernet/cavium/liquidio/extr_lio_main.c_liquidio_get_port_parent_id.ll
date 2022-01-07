; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.lio = type { %struct.TYPE_2__, %struct.octeon_device* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_device = type { i64 }

@DEVLINK_ESWITCH_MODE_SWITCHDEV = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @liquidio_get_port_parent_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.lio* @GET_LIO(%struct.net_device* %8)
  store %struct.lio* %9, %struct.lio** %6, align 8
  %10 = load %struct.lio*, %struct.lio** %6, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 1
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %7, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DEVLINK_ESWITCH_MODE_SWITCHDEV, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %24 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %26 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lio*, %struct.lio** %6, align 8
  %29 = getelementptr inbounds %struct.lio, %struct.lio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to i8*
  %32 = getelementptr i8, i8* %31, i64 2
  %33 = call i32 @ether_addr_copy(i32 %27, i8* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
