; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_descriptor_list_interrupt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_descriptor_list_interrupt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_dma_desc_info = type { %struct.sg_dma_descriptor* }
%struct.sg_dma_descriptor = type { i32 }

@INTERRUPT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @descriptor_list_interrupt_disable(%struct.sg_dma_desc_info* %0) #0 {
  %2 = alloca %struct.sg_dma_desc_info*, align 8
  %3 = alloca %struct.sg_dma_descriptor*, align 8
  store %struct.sg_dma_desc_info* %0, %struct.sg_dma_desc_info** %2, align 8
  %4 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %2, align 8
  %5 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %4, i32 0, i32 0
  %6 = load %struct.sg_dma_descriptor*, %struct.sg_dma_descriptor** %5, align 8
  store %struct.sg_dma_descriptor* %6, %struct.sg_dma_descriptor** %3, align 8
  %7 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.sg_dma_descriptor*, %struct.sg_dma_descriptor** %3, align 8
  %10 = getelementptr inbounds %struct.sg_dma_descriptor, %struct.sg_dma_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
