; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32 }

@MAGIC_DMABUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_dmabuf*)* @videobuf_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @videobuf_dma_init(%struct.videobuf_dmabuf* %0) #0 {
  %2 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %2, align 8
  %3 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %4 = call i32 @memset(%struct.videobuf_dmabuf* %3, i32 0, i32 4)
  %5 = load i32, i32* @MAGIC_DMABUF, align 4
  %6 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %7 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  ret void
}

declare dso_local i32 @memset(%struct.videobuf_dmabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
