; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.ocelot_port = type { %struct.ocelot* }
%struct.ocelot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @ocelot_get_port_parent_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_phys_item_id*, align 8
  %5 = alloca %struct.ocelot_port*, align 8
  %6 = alloca %struct.ocelot*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %7)
  store %struct.ocelot_port* %8, %struct.ocelot_port** %5, align 8
  %9 = load %struct.ocelot_port*, %struct.ocelot_port** %5, align 8
  %10 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %9, i32 0, i32 0
  %11 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  store %struct.ocelot* %11, %struct.ocelot** %6, align 8
  %12 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %13 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %12, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %15 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %14, i32 0, i32 1
  %16 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %17 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %16, i32 0, i32 0
  %18 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %19 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32* %15, i32* %17, i32 %20)
  ret i32 0
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
