; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.vicodec_ctx = type { %struct.TYPE_4__, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vicodec_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicodec_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.vicodec_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.video_device* @video_devdata(%struct.file* %5)
  store %struct.video_device* %6, %struct.video_device** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.vicodec_ctx* @file2ctx(%struct.file* %7)
  store %struct.vicodec_ctx* %8, %struct.vicodec_ctx** %4, align 8
  %9 = load %struct.video_device*, %struct.video_device** %3, align 8
  %10 = getelementptr inbounds %struct.video_device, %struct.video_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mutex_lock(i32 %11)
  %13 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @v4l2_m2m_ctx_release(i32 %16)
  %18 = load %struct.video_device*, %struct.video_device** %3, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mutex_unlock(i32 %20)
  %22 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %22, i32 0, i32 2
  %24 = call i32 @v4l2_fh_del(%struct.TYPE_5__* %23)
  %25 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %25, i32 0, i32 2
  %27 = call i32 @v4l2_fh_exit(%struct.TYPE_5__* %26)
  %28 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %28, i32 0, i32 1
  %30 = call i32 @v4l2_ctrl_handler_free(i32* %29)
  %31 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kvfree(i32 %34)
  %36 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %37 = call i32 @kfree(%struct.vicodec_ctx* %36)
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.vicodec_ctx* @file2ctx(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.vicodec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
