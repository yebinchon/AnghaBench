; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@VMXNET3_DEVICE_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@enable_mq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vmxnet3_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.vmxnet3_adapter* %10, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rounddown_pow_of_two(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 13
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @unregister_netdev(%struct.net_device* %16)
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %19 = call i32 @vmxnet3_free_intr_resources(%struct.vmxnet3_adapter* %18)
  %20 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %21 = call i32 @vmxnet3_free_pci_resources(%struct.vmxnet3_adapter* %20)
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %23 = call i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_free_coherent(i32* %29, i32 4, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %25, %1
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %41, i32 4, i32 %44, i32 %47)
  %49 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dma_free_coherent(i32* %65, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dma_free_coherent(i32* %77, i32 4, i32 %80, i32 %83)
  %85 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %93 = call i32 @dma_unmap_single(i32* %88, i32 %91, i32 64, i32 %92)
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = call i32 @free_netdev(%struct.net_device* %94)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @vmxnet3_free_intr_resources(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_free_pci_resources(%struct.vmxnet3_adapter*) #1

declare dso_local i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
