; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_pipeline_pm_power_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_pipeline_pm_power_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i64 }
%struct.v4l2_subdev = type { i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, i32)* @pipeline_pm_power_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipeline_pm_power_one(%struct.media_entity* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %9 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %13 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi %struct.v4l2_subdev* [ %13, %11 ], [ null, %14 ]
  store %struct.v4l2_subdev* %16, %struct.v4l2_subdev** %6, align 8
  %17 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %18 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = icmp ne %struct.v4l2_subdev* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = load i32, i32* @core, align 4
  %30 = load i32, i32* @s_power, align 4
  %31 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %28, i32 %29, i32 %30, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ENOIOCTLCMD, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %71

41:                                               ; preds = %34, %27
  br label %42

42:                                               ; preds = %41, %24, %21, %15
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %46 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %50 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %56 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %64 = icmp ne %struct.v4l2_subdev* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %67 = load i32, i32* @core, align 4
  %68 = load i32, i32* @s_power, align 4
  %69 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %65, %62, %59, %42
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
