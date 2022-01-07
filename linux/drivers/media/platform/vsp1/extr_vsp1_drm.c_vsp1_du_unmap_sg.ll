; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.vsp1_device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_du_unmap_sg(%struct.device* %0, %struct.sg_table* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.vsp1_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.sg_table* %1, %struct.sg_table** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.vsp1_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.vsp1_device* %7, %struct.vsp1_device** %5, align 8
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %5, align 8
  %9 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %12 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %15 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %19 = call i32 @dma_unmap_sg_attrs(i32 %10, i32 %13, i32 %16, i32 %17, i32 %18)
  ret void
}

declare dso_local %struct.vsp1_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dma_unmap_sg_attrs(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
