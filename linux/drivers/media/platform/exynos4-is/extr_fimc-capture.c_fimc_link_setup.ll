; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_subdev = type { i64, i32 }
%struct.fimc_dev = type { %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s --> %s, flags: 0x%x. input: 0x%x\00", align 1
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @fimc_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.fimc_dev*, align 8
  %12 = alloca %struct.fimc_vid_cap*, align 8
  %13 = alloca %struct.v4l2_subdev*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %15 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %14)
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %10, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %17 = call %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.fimc_dev* %17, %struct.fimc_dev** %11, align 8
  %18 = load %struct.fimc_dev*, %struct.fimc_dev** %11, align 8
  %19 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %18, i32 0, i32 0
  store %struct.fimc_vid_cap* %19, %struct.fimc_vid_cap** %12, align 8
  %20 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i32 @is_media_entity_v4l2_subdev(%struct.TYPE_8__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %102

28:                                               ; preds = %4
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %11, align 8
  %30 = icmp eq %struct.fimc_dev* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %102

35:                                               ; preds = %28
  %36 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %37 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %42 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.fimc_dev*, %struct.fimc_dev** %11, align 8
  %48 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %46, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %35
  %57 = load %struct.fimc_dev*, %struct.fimc_dev** %11, align 8
  %58 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 0, i32* %5, align 4
  br label %102

60:                                               ; preds = %35
  %61 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %12, align 8
  %62 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %102

68:                                               ; preds = %60
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %12, align 8
  %73 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %12, align 8
  %75 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %68
  %79 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %12, align 8
  %80 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %68
  store i32 0, i32* %5, align 4
  br label %102

84:                                               ; preds = %78
  %85 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %12, align 8
  %86 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call %struct.v4l2_subdev* @fimc_find_remote_sensor(i32* %87)
  store %struct.v4l2_subdev* %88, %struct.v4l2_subdev** %13, align 8
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %13, align 8
  %90 = icmp eq %struct.v4l2_subdev* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %102

92:                                               ; preds = %84
  %93 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %12, align 8
  %94 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %13, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @v4l2_ctrl_add_handler(i32* %97, i32 %100, i32* null, i32 1)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %92, %91, %83, %65, %56, %34, %25
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.TYPE_8__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32, i64) #1

declare dso_local %struct.v4l2_subdev* @fimc_find_remote_sensor(i32*) #1

declare dso_local i32 @v4l2_ctrl_add_handler(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
