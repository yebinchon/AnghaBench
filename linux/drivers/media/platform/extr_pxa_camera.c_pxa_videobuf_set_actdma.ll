; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_videobuf_set_actdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_videobuf_set_actdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32 }
%struct.pxa_buffer = type { i32, i32 }

@DMA_Y = common dso_local global i32 0, align 4
@DMA_U = common dso_local global i32 0, align 4
@DMA_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_camera_dev*, %struct.pxa_buffer*)* @pxa_videobuf_set_actdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_videobuf_set_actdma(%struct.pxa_camera_dev* %0, %struct.pxa_buffer* %1) #0 {
  %3 = alloca %struct.pxa_camera_dev*, align 8
  %4 = alloca %struct.pxa_buffer*, align 8
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %3, align 8
  store %struct.pxa_buffer* %1, %struct.pxa_buffer** %4, align 8
  %5 = load i32, i32* @DMA_Y, align 4
  %6 = load %struct.pxa_buffer*, %struct.pxa_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.pxa_buffer*, %struct.pxa_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @DMA_U, align 4
  %14 = load i32, i32* @DMA_V, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.pxa_buffer*, %struct.pxa_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %12, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
