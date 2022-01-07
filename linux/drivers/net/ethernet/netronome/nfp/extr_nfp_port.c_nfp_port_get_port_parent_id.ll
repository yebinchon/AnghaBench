; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.nfp_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_port_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.nfp_port*, align 8
  %7 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %8)
  store %struct.nfp_port* %9, %struct.nfp_port** %6, align 8
  %10 = load %struct.nfp_port*, %struct.nfp_port** %6, align 8
  %11 = icmp ne %struct.nfp_port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.nfp_port*, %struct.nfp_port** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfp_cpp_serial(i32 %20, i32** %7)
  %22 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %23 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %25 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %24, i32 0, i32 1
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %28 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32* %25, i32* %26, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_cpp_serial(i32, i32**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
