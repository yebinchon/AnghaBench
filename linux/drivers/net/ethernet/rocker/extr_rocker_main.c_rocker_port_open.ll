; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rocker_port = type { i32, i32, i32 }

@rocker_tx_irq_handler = common dso_local global i32 0, align 4
@rocker_driver_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot assign tx irq\0A\00", align 1
@rocker_rx_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot assign rx irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot open port in world\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rocker_port_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rocker_port*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %6)
  store %struct.rocker_port* %7, %struct.rocker_port** %4, align 8
  %8 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %9 = call i32 @rocker_port_dma_rings_init(%struct.rocker_port* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %16 = call i32 @rocker_msix_tx_vector(%struct.rocker_port* %15)
  %17 = load i32, i32* @rocker_tx_irq_handler, align 4
  %18 = load i32, i32* @rocker_driver_name, align 4
  %19 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %20 = call i32 @request_irq(i32 %16, i32 %17, i32 0, i32 %18, %struct.rocker_port* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %25 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %79

28:                                               ; preds = %14
  %29 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %30 = call i32 @rocker_msix_rx_vector(%struct.rocker_port* %29)
  %31 = load i32, i32* @rocker_rx_irq_handler, align 4
  %32 = load i32, i32* @rocker_driver_name, align 4
  %33 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %34 = call i32 @request_irq(i32 %30, i32 %31, i32 0, i32 %32, %struct.rocker_port* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %39 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %74

42:                                               ; preds = %28
  %43 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %44 = call i32 @rocker_world_port_open(%struct.rocker_port* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %49 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_err(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %69

52:                                               ; preds = %42
  %53 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %54 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %53, i32 0, i32 1
  %55 = call i32 @napi_enable(i32* %54)
  %56 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %57 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %56, i32 0, i32 0
  %58 = call i32 @napi_enable(i32* %57)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %65 = call i32 @rocker_port_set_enable(%struct.rocker_port* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %52
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netif_start_queue(%struct.net_device* %67)
  store i32 0, i32* %2, align 4
  br label %83

69:                                               ; preds = %47
  %70 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %71 = call i32 @rocker_msix_rx_vector(%struct.rocker_port* %70)
  %72 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %73 = call i32 @free_irq(i32 %71, %struct.rocker_port* %72)
  br label %74

74:                                               ; preds = %69, %37
  %75 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %76 = call i32 @rocker_msix_tx_vector(%struct.rocker_port* %75)
  %77 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %78 = call i32 @free_irq(i32 %76, %struct.rocker_port* %77)
  br label %79

79:                                               ; preds = %74, %23
  %80 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %81 = call i32 @rocker_port_dma_rings_fini(%struct.rocker_port* %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %66, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rocker_port_dma_rings_init(%struct.rocker_port*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rocker_port*) #1

declare dso_local i32 @rocker_msix_tx_vector(%struct.rocker_port*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rocker_msix_rx_vector(%struct.rocker_port*) #1

declare dso_local i32 @rocker_world_port_open(%struct.rocker_port*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rocker_port_set_enable(%struct.rocker_port*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.rocker_port*) #1

declare dso_local i32 @rocker_port_dma_rings_fini(%struct.rocker_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
