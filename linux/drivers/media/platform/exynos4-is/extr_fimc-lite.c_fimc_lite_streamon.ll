; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_lite = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @fimc_lite_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fimc_lite*, align 8
  %9 = alloca %struct.media_entity*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.fimc_lite* @video_drvdata(%struct.file* %11)
  store %struct.fimc_lite* %12, %struct.fimc_lite** %8, align 8
  %13 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %14 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.media_entity* %16, %struct.media_entity** %9, align 8
  %17 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %18 = call i64 @fimc_lite_active(%struct.fimc_lite* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @media_pipeline_start(%struct.media_entity* %24, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %62

35:                                               ; preds = %23
  %36 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %37 = call i32 @fimc_pipeline_validate(%struct.fimc_lite* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %59

41:                                               ; preds = %35
  %42 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %43 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @fimc_find_remote_sensor(i32* %44)
  %46 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %47 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @vb2_ioctl_streamon(%struct.file* %48, i8* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %56 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %61 = call i32 @media_pipeline_stop(%struct.media_entity* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %54, %33, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

declare dso_local i64 @fimc_lite_active(%struct.fimc_lite*) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local i32 @fimc_pipeline_validate(%struct.fimc_lite*) #1

declare dso_local i32 @fimc_find_remote_sensor(i32*) #1

declare dso_local i32 @vb2_ioctl_streamon(%struct.file*, i8*, i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
