; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_queue_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_queue_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cio2_queue = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cio2_device*, %struct.cio2_queue*)* @cio2_queue_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cio2_queue_exit(%struct.cio2_device* %0, %struct.cio2_queue* %1) #0 {
  %3 = alloca %struct.cio2_device*, align 8
  %4 = alloca %struct.cio2_queue*, align 8
  store %struct.cio2_device* %0, %struct.cio2_device** %3, align 8
  store %struct.cio2_queue* %1, %struct.cio2_queue** %4, align 8
  %5 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %6 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %5, i32 0, i32 3
  %7 = call i32 @video_unregister_device(%struct.TYPE_5__* %6)
  %8 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %9 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @media_entity_cleanup(i32* %10)
  %12 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %13 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %12, i32 0, i32 2
  %14 = call i32 @vb2_queue_release(i32* %13)
  %15 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %16 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %15, i32 0, i32 1
  %17 = call i32 @v4l2_device_unregister_subdev(%struct.TYPE_6__* %16)
  %18 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %19 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @media_entity_cleanup(i32* %20)
  %22 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %23 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %24 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @cio2_fbpt_exit(%struct.cio2_queue* %22, i32* %26)
  %28 = load %struct.cio2_queue*, %struct.cio2_queue** %4, align 8
  %29 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %28, i32 0, i32 0
  %30 = call i32 @mutex_destroy(i32* %29)
  ret void
}

declare dso_local i32 @video_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @cio2_fbpt_exit(%struct.cio2_queue*, i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
