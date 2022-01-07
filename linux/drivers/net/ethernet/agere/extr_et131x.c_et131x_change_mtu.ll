; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.et131x_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Change MTU failed; couldn't re-alloc DMA memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @et131x_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.et131x_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @et131x_disable_txrx(%struct.net_device* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %16 = call i32 @et131x_adapter_memory_free(%struct.et131x_adapter* %15)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 14
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %22 = call i32 @et131x_soft_reset(%struct.et131x_adapter* %21)
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %24 = call i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %36 = call i32 @et131x_init_send(%struct.et131x_adapter* %35)
  %37 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %38 = call i32 @et131x_hwaddr_init(%struct.et131x_adapter* %37)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ether_addr_copy(i32 %41, i32 %44)
  %46 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %47 = call i32 @et131x_adapter_setup(%struct.et131x_adapter* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @et131x_enable_txrx(%struct.net_device* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @et131x_disable_txrx(%struct.net_device*) #1

declare dso_local i32 @et131x_adapter_memory_free(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_soft_reset(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @et131x_init_send(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_hwaddr_init(%struct.et131x_adapter*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_enable_txrx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
