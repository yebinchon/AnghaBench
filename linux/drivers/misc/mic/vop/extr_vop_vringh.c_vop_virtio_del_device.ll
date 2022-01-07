; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_virtio_del_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_virtio_del_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vdev = type { %struct.TYPE_6__*, %struct.vop_vringh*, i32, i32, i32, %struct.vop_device*, %struct.vop_info* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vop_vringh = type { %struct.TYPE_5__, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.vop_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.vop_device*, i32, %struct.vop_vdev*)*, %struct.mic_bootparam* (%struct.vop_device*)* }
%struct.mic_bootparam = type { i32 }
%struct.vop_info = type { i32 }
%struct.mic_vqconfig = type { i32 }

@VOP_INT_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vop_vdev*)* @vop_virtio_del_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_virtio_del_device(%struct.vop_vdev* %0) #0 {
  %2 = alloca %struct.vop_vdev*, align 8
  %3 = alloca %struct.vop_info*, align 8
  %4 = alloca %struct.vop_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mic_vqconfig*, align 8
  %7 = alloca %struct.mic_bootparam*, align 8
  %8 = alloca %struct.vop_vringh*, align 8
  store %struct.vop_vdev* %0, %struct.vop_vdev** %2, align 8
  %9 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %10 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %9, i32 0, i32 6
  %11 = load %struct.vop_info*, %struct.vop_info** %10, align 8
  store %struct.vop_info* %11, %struct.vop_info** %3, align 8
  %12 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %13 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %12, i32 0, i32 5
  %14 = load %struct.vop_device*, %struct.vop_device** %13, align 8
  store %struct.vop_device* %14, %struct.vop_device** %4, align 8
  %15 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %16 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.mic_bootparam* (%struct.vop_device*)*, %struct.mic_bootparam* (%struct.vop_device*)** %18, align 8
  %20 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %21 = call %struct.mic_bootparam* %19(%struct.vop_device* %20)
  store %struct.mic_bootparam* %21, %struct.mic_bootparam** %7, align 8
  %22 = load %struct.mic_bootparam*, %struct.mic_bootparam** %7, align 8
  %23 = icmp ne %struct.mic_bootparam* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.vop_info*, %struct.vop_info** %3, align 8
  %27 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %28 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %31 = call i32 @vop_dev_remove(%struct.vop_info* %26, i32 %29, %struct.vop_device* %30)
  br label %32

32:                                               ; preds = %25, %24
  %33 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %34 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.vop_device*, i32, %struct.vop_vdev*)*, i32 (%struct.vop_device*, i32, %struct.vop_vdev*)** %36, align 8
  %38 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %39 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %40 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %43 = call i32 %37(%struct.vop_device* %38, i32 %41, %struct.vop_vdev* %42)
  %44 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %45 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %44, i32 0, i32 2
  %46 = call i32 @flush_work(i32* %45)
  %47 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %48 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call %struct.mic_vqconfig* @mic_vq_config(%struct.TYPE_6__* %49)
  store %struct.mic_vqconfig* %50, %struct.mic_vqconfig** %6, align 8
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %111, %32
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %54 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %51
  %60 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %61 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %60, i32 0, i32 1
  %62 = load %struct.vop_vringh*, %struct.vop_vringh** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %62, i64 %64
  store %struct.vop_vringh* %65, %struct.vop_vringh** %8, align 8
  %66 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %67 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %66, i32 0, i32 0
  %68 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %69 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VOP_INT_DMA_BUF_SIZE, align 4
  %72 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %73 = call i32 @dma_unmap_single(i32* %67, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %75 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @VOP_INT_DMA_BUF_SIZE, align 4
  %78 = call i32 @get_order(i32 %77)
  %79 = call i32 @free_pages(i64 %76, i32 %78)
  %80 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %81 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %80, i32 0, i32 2
  %82 = call i32 @vringh_kiov_cleanup(i32* %81)
  %83 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %84 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %83, i32 0, i32 1
  %85 = call i32 @vringh_kiov_cleanup(i32* %84)
  %86 = load %struct.vop_device*, %struct.vop_device** %4, align 8
  %87 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %86, i32 0, i32 0
  %88 = load %struct.mic_vqconfig*, %struct.mic_vqconfig** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mic_vqconfig, %struct.mic_vqconfig* %88, i64 %90
  %92 = getelementptr inbounds %struct.mic_vqconfig, %struct.mic_vqconfig* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le64_to_cpu(i32 %93)
  %95 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %96 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %100 = call i32 @dma_unmap_single(i32* %87, i32 %94, i32 %98, i32 %99)
  %101 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %102 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.vop_vringh*, %struct.vop_vringh** %8, align 8
  %106 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @get_order(i32 %108)
  %110 = call i32 @free_pages(i64 %104, i32 %109)
  br label %111

111:                                              ; preds = %59
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %51

114:                                              ; preds = %51
  %115 = call i32 (...) @smp_wmb()
  %116 = load %struct.vop_vdev*, %struct.vop_vdev** %2, align 8
  %117 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 4
  ret void
}

declare dso_local i32 @vop_dev_remove(%struct.vop_info*, i32, %struct.vop_device*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local %struct.mic_vqconfig* @mic_vq_config(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @vringh_kiov_cleanup(i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
