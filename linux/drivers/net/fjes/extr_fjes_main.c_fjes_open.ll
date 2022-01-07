; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fjes_adapter = type { i32, i64, %struct.fjes_hw }
%struct.fjes_hw = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@REG_ICTL_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fjes_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fjes_adapter*, align 8
  %5 = alloca %struct.fjes_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.fjes_adapter* %8, %struct.fjes_adapter** %4, align 8
  %9 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %9, i32 0, i32 2
  store %struct.fjes_hw* %10, %struct.fjes_hw** %5, align 8
  %11 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %20 = call i32 @fjes_setup_resources(%struct.fjes_adapter* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %26 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %28 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %29, i32 0, i32 0
  %31 = call i32 @napi_enable(i32* %30)
  %32 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %33 = call i32 @fjes_hw_capture_interrupt_status(%struct.fjes_hw* %32)
  %34 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %35 = call i32 @fjes_request_irq(%struct.fjes_adapter* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %47

39:                                               ; preds = %24
  %40 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %41 = load i32, i32* @REG_ICTL_MASK_ALL, align 4
  %42 = call i32 @fjes_hw_set_irqmask(%struct.fjes_hw* %40, i32 %41, i32 0)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netif_tx_start_all_queues(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netif_carrier_on(%struct.net_device* %45)
  store i32 0, i32* %2, align 4
  br label %57

47:                                               ; preds = %38
  %48 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %49 = call i32 @fjes_free_irq(%struct.fjes_adapter* %48)
  %50 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %50, i32 0, i32 0
  %52 = call i32 @napi_disable(i32* %51)
  br label %53

53:                                               ; preds = %47, %23
  %54 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %55 = call i32 @fjes_free_resources(%struct.fjes_adapter* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %39, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fjes_setup_resources(%struct.fjes_adapter*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @fjes_hw_capture_interrupt_status(%struct.fjes_hw*) #1

declare dso_local i32 @fjes_request_irq(%struct.fjes_adapter*) #1

declare dso_local i32 @fjes_hw_set_irqmask(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @fjes_free_irq(%struct.fjes_adapter*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @fjes_free_resources(%struct.fjes_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
