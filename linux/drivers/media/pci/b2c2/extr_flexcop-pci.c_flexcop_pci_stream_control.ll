; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_stream_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_stream_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.flexcop_pci* }
%struct.flexcop_pci = type { i32, i32, i64, i32* }

@FC_DMA_1 = common dso_local global i32 0, align 4
@FC_DMA_2 = common dso_local global i32 0, align 4
@FC_DMA_SUBADDR_0 = common dso_local global i32 0, align 4
@FC_DMA_SUBADDR_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DMA xfer enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"IRQ enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"IRQ disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DMA xfer disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, i32)* @flexcop_pci_stream_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_stream_control(%struct.flexcop_device* %0, i32 %1) #0 {
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flexcop_pci*, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %7 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %6, i32 0, i32 0
  %8 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  store %struct.flexcop_pci* %8, %struct.flexcop_pci** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %13 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %14 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* @FC_DMA_1, align 4
  %18 = call i32 @flexcop_dma_config(%struct.flexcop_device* %12, i32* %16, i32 %17)
  %19 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %20 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %21 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* @FC_DMA_2, align 4
  %25 = call i32 @flexcop_dma_config(%struct.flexcop_device* %19, i32* %23, i32 %24)
  %26 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %27 = load i32, i32* @FC_DMA_1, align 4
  %28 = call i32 @flexcop_dma_config_timer(%struct.flexcop_device* %26, i32 %27, i32 0)
  %29 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %30 = load i32, i32* @FC_DMA_1, align 4
  %31 = load i32, i32* @FC_DMA_SUBADDR_0, align 4
  %32 = load i32, i32* @FC_DMA_SUBADDR_1, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @flexcop_dma_xfer_control(%struct.flexcop_device* %29, i32 %30, i32 %33, i32 1)
  %35 = call i32 @deb_irq(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %37 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %39 = load i32, i32* @FC_DMA_1, align 4
  %40 = call i32 @flexcop_dma_control_timer_irq(%struct.flexcop_device* %38, i32 %39, i32 1)
  %41 = call i32 @deb_irq(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %43 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %46 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %59

47:                                               ; preds = %2
  %48 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %49 = load i32, i32* @FC_DMA_1, align 4
  %50 = call i32 @flexcop_dma_control_timer_irq(%struct.flexcop_device* %48, i32 %49, i32 0)
  %51 = call i32 @deb_irq(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %53 = load i32, i32* @FC_DMA_1, align 4
  %54 = load i32, i32* @FC_DMA_SUBADDR_0, align 4
  %55 = load i32, i32* @FC_DMA_SUBADDR_1, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @flexcop_dma_xfer_control(%struct.flexcop_device* %52, i32 %53, i32 %56, i32 0)
  %58 = call i32 @deb_irq(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %47, %11
  ret i32 0
}

declare dso_local i32 @flexcop_dma_config(%struct.flexcop_device*, i32*, i32) #1

declare dso_local i32 @flexcop_dma_config_timer(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_dma_xfer_control(%struct.flexcop_device*, i32, i32, i32) #1

declare dso_local i32 @deb_irq(i8*) #1

declare dso_local i32 @flexcop_dma_control_timer_irq(%struct.flexcop_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
