; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.lio_vf_rep_desc = type { %struct.net_device* }
%struct.lio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @lio_vf_get_port_parent_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_vf_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_phys_item_id*, align 8
  %5 = alloca %struct.lio_vf_rep_desc*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lio*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %8)
  store %struct.lio_vf_rep_desc* %9, %struct.lio_vf_rep_desc** %5, align 8
  %10 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %5, align 8
  %11 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.lio* @GET_LIO(%struct.net_device* %13)
  store %struct.lio* %14, %struct.lio** %7, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %17 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %19 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lio*, %struct.lio** %7, align 8
  %22 = getelementptr inbounds %struct.lio, %struct.lio* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr i8, i8* %24, i64 2
  %26 = call i32 @ether_addr_copy(i32 %20, i8* %25)
  ret i32 0
}

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
