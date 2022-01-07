; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_viu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_viu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.viu_fh* }
%struct.viu_fh = type { i32, i32, %struct.viu_dev* }
%struct.viu_dev = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"close (minor=%d, users=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @viu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viu_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.viu_fh*, align 8
  %4 = alloca %struct.viu_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.viu_fh*, %struct.viu_fh** %7, align 8
  store %struct.viu_fh* %8, %struct.viu_fh** %3, align 8
  %9 = load %struct.viu_fh*, %struct.viu_fh** %3, align 8
  %10 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %9, i32 0, i32 2
  %11 = load %struct.viu_dev*, %struct.viu_dev** %10, align 8
  store %struct.viu_dev* %11, %struct.viu_dev** %4, align 8
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = call %struct.TYPE_2__* @video_devdata(%struct.file* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %17 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %20 = call i32 @viu_stop_dma(%struct.viu_dev* %19)
  %21 = load %struct.viu_fh*, %struct.viu_fh** %3, align 8
  %22 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %21, i32 0, i32 1
  %23 = call i32 @videobuf_stop(i32* %22)
  %24 = load %struct.viu_fh*, %struct.viu_fh** %3, align 8
  %25 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %24, i32 0, i32 1
  %26 = call i32 @videobuf_mmap_free(i32* %25)
  %27 = load %struct.viu_fh*, %struct.viu_fh** %3, align 8
  %28 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %27, i32 0, i32 0
  %29 = call i32 @v4l2_fh_del(i32* %28)
  %30 = load %struct.viu_fh*, %struct.viu_fh** %3, align 8
  %31 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %30, i32 0, i32 0
  %32 = call i32 @v4l2_fh_exit(i32* %31)
  %33 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %34 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.viu_fh*, %struct.viu_fh** %3, align 8
  %37 = call i32 @kfree(%struct.viu_fh* %36)
  %38 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %39 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %44 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @video_devdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @viu_stop_dma(%struct.viu_dev*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.viu_fh*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
