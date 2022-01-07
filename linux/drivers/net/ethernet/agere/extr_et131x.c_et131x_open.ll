; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.et131x_adapter = type { i32, i32, %struct.TYPE_3__, %struct.pci_dev* }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { i32, i32 }

@et131x_error_timer_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TX_ERROR_PERIOD = common dso_local global i32 0, align 4
@et131x_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not register IRQ %d\0A\00", align 1
@FMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @et131x_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.et131x_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %4, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 3
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* @et131x_error_timer_handler, align 4
  %19 = call i32 @timer_setup(%struct.TYPE_3__* %17, i32 %18, i32 0)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @TX_ERROR_PERIOD, align 4
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %27, i32 0, i32 2
  %29 = call i32 @add_timer(%struct.TYPE_3__* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @et131x_isr, align 4
  %32 = load i32, i32* @IRQF_SHARED, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @request_irq(i32 %30, i32 %31, i32 %32, i32 %35, %struct.net_device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %1
  %47 = load i32, i32* @FMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %48 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %52, i32 0, i32 0
  %54 = call i32 @napi_enable(i32* %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @et131x_up(%struct.net_device* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %46, %40
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @et131x_up(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
