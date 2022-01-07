; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_tx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i64, %struct.TYPE_6__*, %struct.sk_buff**, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @wanxl_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wanxl_tx_intr(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %6 = load %struct.port*, %struct.port** %2, align 8
  %7 = getelementptr inbounds %struct.port, %struct.port* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  br label %9

9:                                                ; preds = %1, %57
  %10 = load %struct.port*, %struct.port** %2, align 8
  %11 = call %struct.TYPE_8__* @get_status(%struct.port* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load %struct.port*, %struct.port** %2, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %16
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.port*, %struct.port** %2, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 2
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = load %struct.port*, %struct.port** %2, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %43 [
    i32 129, label %29
    i32 130, label %29
    i32 128, label %32
  ]

29:                                               ; preds = %9, %9
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @netif_wake_queue(%struct.net_device* %30)
  ret void

32:                                               ; preds = %9
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %57

43:                                               ; preds = %9
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %43, %32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 130, i32* %59, align 4
  %60 = load %struct.port*, %struct.port** %2, align 8
  %61 = getelementptr inbounds %struct.port, %struct.port* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %72 = call i32 @pci_unmap_single(i32 %64, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %73)
  %75 = load %struct.port*, %struct.port** %2, align 8
  %76 = getelementptr inbounds %struct.port, %struct.port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  %79 = load i32, i32* @TX_BUFFERS, align 4
  %80 = sext i32 %79 to i64
  %81 = urem i64 %78, %80
  %82 = load %struct.port*, %struct.port** %2, align 8
  %83 = getelementptr inbounds %struct.port, %struct.port* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %9
}

declare dso_local %struct.TYPE_8__* @get_status(%struct.port*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
