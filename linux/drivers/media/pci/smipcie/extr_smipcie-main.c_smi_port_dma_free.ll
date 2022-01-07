; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_port_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_port_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMI_TS_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_port*)* @smi_port_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_port_dma_free(%struct.smi_port* %0) #0 {
  %2 = alloca %struct.smi_port*, align 8
  store %struct.smi_port* %0, %struct.smi_port** %2, align 8
  %3 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %4 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %3, i32 0, i32 0
  %5 = load i32**, i32*** %4, align 8
  %6 = getelementptr inbounds i32*, i32** %5, i64 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %11 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SMI_TS_DMA_BUF_SIZE, align 4
  %16 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %17 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %22 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_free_consistent(i32 %14, i32 %15, i32* %20, i32 %25)
  %27 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %28 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %9, %1
  %32 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %33 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %40 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SMI_TS_DMA_BUF_SIZE, align 4
  %45 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %46 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %51 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_free_consistent(i32 %43, i32 %44, i32* %49, i32 %54)
  %56 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %57 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
