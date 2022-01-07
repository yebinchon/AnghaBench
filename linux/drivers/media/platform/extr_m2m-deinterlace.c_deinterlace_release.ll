; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.deinterlace_ctx* }
%struct.deinterlace_ctx = type { %struct.deinterlace_ctx*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.deinterlace_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Releasing instance %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @deinterlace_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterlace_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.deinterlace_dev*, align 8
  %4 = alloca %struct.deinterlace_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.deinterlace_dev* @video_drvdata(%struct.file* %5)
  store %struct.deinterlace_dev* %6, %struct.deinterlace_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %8, align 8
  store %struct.deinterlace_ctx* %9, %struct.deinterlace_ctx** %4, align 8
  %10 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %3, align 8
  %11 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %12 = call i32 @dprintk(%struct.deinterlace_dev* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.deinterlace_ctx* %11)
  %13 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %13, i32 0, i32 1
  %15 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %14)
  %16 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %16, i32 0, i32 1
  %18 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %17)
  %19 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @v4l2_m2m_ctx_release(i32 %22)
  %24 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %24, i32 0, i32 0
  %26 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %25, align 8
  %27 = call i32 @kfree(%struct.deinterlace_ctx* %26)
  %28 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %29 = call i32 @kfree(%struct.deinterlace_ctx* %28)
  ret i32 0
}

declare dso_local %struct.deinterlace_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(%struct.deinterlace_dev*, i8*, %struct.deinterlace_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @kfree(%struct.deinterlace_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
