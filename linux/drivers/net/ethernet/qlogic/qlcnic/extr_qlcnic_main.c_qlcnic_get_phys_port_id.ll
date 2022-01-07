; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_get_phys_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_get_phys_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32 }

@QLCNIC_HAS_PHYS_PORT_ID = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @qlcnic_get_phys_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_phys_port_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %7, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QLCNIC_HAS_PHYS_PORT_ID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %24 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %23, i32 0, i32 0
  store i32 4, i32* %24, align 4
  %25 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %26 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %32 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %27, i32 %30, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
