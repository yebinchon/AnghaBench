; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_pipeline_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_pipeline_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_pipeline = type { %struct.v4l2_subdev** }
%struct.v4l2_subdev = type { i32, %struct.media_entity }
%struct.media_entity = type { i32, %struct.media_pad* }
%struct.media_pad = type { i32, i32 }
%struct.fimc_md = type { i32 }

@IDX_MAX = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@IDX_SENSOR = common dso_local global i64 0, align 8
@IDX_CSIS = common dso_local global i64 0, align 8
@IDX_FLITE = common dso_local global i64 0, align 8
@IDX_FIMC = common dso_local global i64 0, align 8
@IDX_IS_ISP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_pipeline*, %struct.media_entity*)* @fimc_pipeline_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_pipeline_prepare(%struct.fimc_pipeline* %0, %struct.media_entity* %1) #0 {
  %3 = alloca %struct.fimc_pipeline*, align 8
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca %struct.fimc_md*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.media_pad*, align 8
  %10 = alloca %struct.media_pad*, align 8
  store %struct.fimc_pipeline* %0, %struct.fimc_pipeline** %3, align 8
  store %struct.media_entity* %1, %struct.media_entity** %4, align 8
  %11 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %12 = call %struct.fimc_md* @entity_to_fimc_mdev(%struct.media_entity* %11)
  store %struct.fimc_md* %12, %struct.fimc_md** %5, align 8
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IDX_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %19 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %18, i32 0, i32 0
  %20 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %20, i64 %22
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %13

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %123
  store %struct.media_pad* null, %struct.media_pad** %9, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %32 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %37 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %36, i32 0, i32 1
  %38 = load %struct.media_pad*, %struct.media_pad** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i64 %40
  store %struct.media_pad* %41, %struct.media_pad** %10, align 8
  %42 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %43 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %56

49:                                               ; preds = %35
  %50 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %51 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %50)
  store %struct.media_pad* %51, %struct.media_pad** %9, align 8
  %52 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %53 = icmp ne %struct.media_pad* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %59

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %29

59:                                               ; preds = %54, %29
  %60 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %61 = icmp ne %struct.media_pad* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %64 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @is_media_entity_v4l2_subdev(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %59
  br label %124

69:                                               ; preds = %62
  %70 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %71 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %72)
  store %struct.v4l2_subdev* %73, %struct.v4l2_subdev** %6, align 8
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %114 [
    i32 128, label %77
    i32 130, label %79
    i32 133, label %86
    i32 129, label %93
    i32 132, label %100
    i32 131, label %107
  ]

77:                                               ; preds = %69
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev* %78, %struct.v4l2_subdev** %7, align 8
  br label %79

79:                                               ; preds = %69, %77
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %81 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %82 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %81, i32 0, i32 0
  %83 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %82, align 8
  %84 = load i64, i64* @IDX_SENSOR, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %83, i64 %84
  store %struct.v4l2_subdev* %80, %struct.v4l2_subdev** %85, align 8
  br label %115

86:                                               ; preds = %69
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %88 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %89 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %88, i32 0, i32 0
  %90 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %89, align 8
  %91 = load i64, i64* @IDX_CSIS, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %90, i64 %91
  store %struct.v4l2_subdev* %87, %struct.v4l2_subdev** %92, align 8
  br label %115

93:                                               ; preds = %69
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %95 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %96 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %95, i32 0, i32 0
  %97 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %96, align 8
  %98 = load i64, i64* @IDX_FLITE, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %97, i64 %98
  store %struct.v4l2_subdev* %94, %struct.v4l2_subdev** %99, align 8
  br label %115

100:                                              ; preds = %69
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %102 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %103 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %102, i32 0, i32 0
  %104 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %103, align 8
  %105 = load i64, i64* @IDX_FIMC, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %104, i64 %105
  store %struct.v4l2_subdev* %101, %struct.v4l2_subdev** %106, align 8
  br label %115

107:                                              ; preds = %69
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %109 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %110 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %109, i32 0, i32 0
  %111 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %110, align 8
  %112 = load i64, i64* @IDX_IS_ISP, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %111, i64 %112
  store %struct.v4l2_subdev* %108, %struct.v4l2_subdev** %113, align 8
  br label %115

114:                                              ; preds = %69
  br label %115

115:                                              ; preds = %114, %107, %100, %93, %86, %79
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %116, i32 0, i32 1
  store %struct.media_entity* %117, %struct.media_entity** %4, align 8
  %118 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %119 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %124

123:                                              ; preds = %115
  br label %28

124:                                              ; preds = %122, %68
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %126 = icmp ne %struct.v4l2_subdev* %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %129 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %128, i32 0, i32 0
  %130 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %129, align 8
  %131 = load i64, i64* @IDX_FIMC, align 8
  %132 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %130, i64 %131
  %133 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %132, align 8
  %134 = icmp ne %struct.v4l2_subdev* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %138 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %3, align 8
  %139 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %138, i32 0, i32 0
  %140 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %139, align 8
  %141 = load i64, i64* @IDX_FIMC, align 8
  %142 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %140, i64 %141
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %142, align 8
  %144 = call i32 @__setup_sensor_notification(%struct.fimc_md* %136, %struct.v4l2_subdev* %137, %struct.v4l2_subdev* %143)
  br label %145

145:                                              ; preds = %135, %127, %124
  ret void
}

declare dso_local %struct.fimc_md* @entity_to_fimc_mdev(%struct.media_entity*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @__setup_sensor_notification(%struct.fimc_md*, %struct.v4l2_subdev*, %struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
