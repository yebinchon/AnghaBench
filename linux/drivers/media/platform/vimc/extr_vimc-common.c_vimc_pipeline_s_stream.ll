; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_pipeline_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_pipeline_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.media_pad = type { i32 }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vimc_pipeline_s_stream(%struct.media_entity* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %69, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %13 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %10
  %17 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %18 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %69

29:                                               ; preds = %16
  %30 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %31 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = call %struct.media_pad* @media_entity_remote_pad(%struct.TYPE_2__* %35)
  store %struct.media_pad* %36, %struct.media_pad** %7, align 8
  %37 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %38 = icmp ne %struct.media_pad* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %69

40:                                               ; preds = %29
  %41 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %42 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @is_media_entity_v4l2_subdev(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %51 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %52)
  store %struct.v4l2_subdev* %53, %struct.v4l2_subdev** %6, align 8
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %55 = load i32, i32* @video, align 4
  %56 = load i32, i32* @s_stream, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ENOIOCTLCMD, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %61, %49
  br label %69

69:                                               ; preds = %68, %39, %28
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %10

72:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %66, %46
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.TYPE_2__*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
