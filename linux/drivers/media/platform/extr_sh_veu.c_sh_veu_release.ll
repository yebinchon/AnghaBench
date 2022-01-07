; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.sh_veu_file* }
%struct.sh_veu_file = type { i32 }
%struct.sh_veu_dev = type { i32, i32*, %struct.sh_veu_file*, %struct.sh_veu_file* }

@.str = private unnamed_addr constant [23 x i8] c"Releasing instance %p\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sh_veu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.sh_veu_dev*, align 8
  %4 = alloca %struct.sh_veu_file*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.sh_veu_dev* @video_drvdata(%struct.file* %5)
  store %struct.sh_veu_dev* %6, %struct.sh_veu_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  store %struct.sh_veu_file* %9, %struct.sh_veu_file** %4, align 8
  %10 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sh_veu_file*, %struct.sh_veu_file** %4, align 8
  %14 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.sh_veu_file* %13)
  %15 = load %struct.sh_veu_file*, %struct.sh_veu_file** %4, align 8
  %16 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %16, i32 0, i32 2
  %18 = load %struct.sh_veu_file*, %struct.sh_veu_file** %17, align 8
  %19 = icmp eq %struct.sh_veu_file* %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %22 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %21, i32 0, i32 2
  store %struct.sh_veu_file* null, %struct.sh_veu_file** %22, align 8
  %23 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %24 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %27 = call i32 @v4l2_m2m_get_vq(i32* %25, i32 %26)
  %28 = call i32 @vb2_queue_release(i32 %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.sh_veu_file*, %struct.sh_veu_file** %4, align 8
  %31 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %32 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %31, i32 0, i32 3
  %33 = load %struct.sh_veu_file*, %struct.sh_veu_file** %32, align 8
  %34 = icmp eq %struct.sh_veu_file* %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %37 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %36, i32 0, i32 3
  store %struct.sh_veu_file* null, %struct.sh_veu_file** %37, align 8
  %38 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %39 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %42 = call i32 @v4l2_m2m_get_vq(i32* %40, i32 %41)
  %43 = call i32 @vb2_queue_release(i32 %42)
  br label %44

44:                                               ; preds = %35, %29
  %45 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %46 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %45, i32 0, i32 3
  %47 = load %struct.sh_veu_file*, %struct.sh_veu_file** %46, align 8
  %48 = icmp ne %struct.sh_veu_file* %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %51 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %50, i32 0, i32 2
  %52 = load %struct.sh_veu_file*, %struct.sh_veu_file** %51, align 8
  %53 = icmp ne %struct.sh_veu_file* %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %56 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %61 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @v4l2_m2m_ctx_release(i32* %62)
  %64 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %65 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %54, %49, %44
  %67 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %68 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pm_runtime_put(i32 %69)
  %71 = load %struct.sh_veu_file*, %struct.sh_veu_file** %4, align 8
  %72 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %71, i32 0, i32 0
  %73 = call i32 @v4l2_fh_del(i32* %72)
  %74 = load %struct.sh_veu_file*, %struct.sh_veu_file** %4, align 8
  %75 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %74, i32 0, i32 0
  %76 = call i32 @v4l2_fh_exit(i32* %75)
  %77 = load %struct.sh_veu_file*, %struct.sh_veu_file** %4, align 8
  %78 = call i32 @kfree(%struct.sh_veu_file* %77)
  ret i32 0
}

declare dso_local %struct.sh_veu_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.sh_veu_file*) #1

declare dso_local i32 @vb2_queue_release(i32) #1

declare dso_local i32 @v4l2_m2m_get_vq(i32*, i32) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.sh_veu_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
