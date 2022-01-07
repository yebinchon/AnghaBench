; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pciefd_can = type { i64, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_6__*, %struct.pciefd_rx_dma* }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.pciefd_rx_dma = type { i32, i32 }

@PCIEFD_REG_SYS_VER1 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pciefd_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciefd_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pciefd_can*, align 8
  %7 = alloca %struct.pciefd_rx_dma*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pciefd_can*
  store %struct.pciefd_can* %10, %struct.pciefd_can** %6, align 8
  %11 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %12 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %11, i32 0, i32 6
  %13 = load %struct.pciefd_rx_dma*, %struct.pciefd_rx_dma** %12, align 8
  store %struct.pciefd_rx_dma* %13, %struct.pciefd_rx_dma** %7, align 8
  %14 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %15 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %14, i32 0, i32 5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_dev_msi_enabled(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %23 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %22, i32 0, i32 5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* @PCIEFD_REG_SYS_VER1, align 4
  %26 = call i32 @pciefd_sys_readreg(%struct.TYPE_6__* %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.pciefd_rx_dma*, %struct.pciefd_rx_dma** %7, align 8
  %29 = getelementptr inbounds %struct.pciefd_rx_dma, %struct.pciefd_rx_dma* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %33 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %35 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @pciefd_irq_tag(i32 %36)
  %38 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %39 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %27
  %45 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %46 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %45, i32 0, i32 1
  %47 = load %struct.pciefd_rx_dma*, %struct.pciefd_rx_dma** %7, align 8
  %48 = getelementptr inbounds %struct.pciefd_rx_dma, %struct.pciefd_rx_dma* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %51 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pciefd_irq_rx_cnt(i32 %52)
  %54 = call i32 @peak_canfd_handle_msgs_list(%struct.TYPE_5__* %46, i32 %49, i32 %53)
  %55 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %56 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @pciefd_irq_is_lnk(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %44
  %61 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %62 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %61, i32 0, i32 2
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %66 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %70 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %69, i32 0, i32 2
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %74 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %79 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %84 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %60
  %91 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %92 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @netif_wake_queue(i32 %94)
  br label %96

96:                                               ; preds = %90, %60
  %97 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %98 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %96, %44
  %103 = load %struct.pciefd_can*, %struct.pciefd_can** %6, align 8
  %104 = call i32 @pciefd_can_ack_rx_dma(%struct.pciefd_can* %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %42
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @pci_dev_msi_enabled(i32) #1

declare dso_local i32 @pciefd_sys_readreg(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @pciefd_irq_tag(i32) #1

declare dso_local i32 @peak_canfd_handle_msgs_list(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pciefd_irq_rx_cnt(i32) #1

declare dso_local i64 @pciefd_irq_is_lnk(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @pciefd_can_ack_rx_dma(%struct.pciefd_can*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
