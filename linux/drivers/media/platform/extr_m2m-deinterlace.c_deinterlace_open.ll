; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.deinterlace_dev = type { i32 }
%struct.deinterlace_ctx = type { %struct.TYPE_3__, i32, i8*, %struct.deinterlace_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Created instance %p, m2m_ctx: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @deinterlace_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterlace_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.deinterlace_dev*, align 8
  %5 = alloca %struct.deinterlace_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.deinterlace_dev* @video_drvdata(%struct.file* %7)
  store %struct.deinterlace_dev* %8, %struct.deinterlace_dev** %4, align 8
  store %struct.deinterlace_ctx* null, %struct.deinterlace_ctx** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 24, i32 %9)
  %11 = bitcast i8* %10 to %struct.deinterlace_ctx*
  store %struct.deinterlace_ctx* %11, %struct.deinterlace_ctx** %5, align 8
  %12 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %13 = icmp ne %struct.deinterlace_ctx* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %18, i32 0, i32 0
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = call i32 @video_devdata(%struct.file* %20)
  %22 = call i32 @v4l2_fh_init(%struct.TYPE_3__* %19, i32 %21)
  %23 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %23, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %4, align 8
  %28 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %28, i32 0, i32 3
  store %struct.deinterlace_dev* %27, %struct.deinterlace_dev** %29, align 8
  %30 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %4, align 8
  %31 = getelementptr inbounds %struct.deinterlace_dev, %struct.deinterlace_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %34 = call i32 @v4l2_m2m_ctx_init(i32 %32, %struct.deinterlace_ctx* %33, i32* @queue_init)
  %35 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %17
  %45 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %51 = call i32 @kfree(%struct.deinterlace_ctx* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %81

53:                                               ; preds = %17
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 8, i32 %54)
  %56 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %64 = call i32 @kfree(%struct.deinterlace_ctx* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %53
  %68 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %69 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %71, i32 0, i32 0
  %73 = call i32 @v4l2_fh_add(%struct.TYPE_3__* %72)
  %74 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %4, align 8
  %75 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %76 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dprintk(%struct.deinterlace_dev* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.deinterlace_ctx* %75, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %67, %62, %44, %14
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.deinterlace_dev* @video_drvdata(%struct.file*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.deinterlace_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.deinterlace_ctx*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_3__*) #1

declare dso_local i32 @dprintk(%struct.deinterlace_dev*, i8*, %struct.deinterlace_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
