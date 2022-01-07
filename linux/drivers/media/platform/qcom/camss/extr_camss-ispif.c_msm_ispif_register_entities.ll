; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_msm_ispif_register_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_msm_ispif_register_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_subdev, %struct.media_pad* }
%struct.v4l2_subdev = type { %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.media_pad = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.device = type { i32 }

@ispif_v4l2_ops = common dso_local global i32 0, align 4
@ispif_v4l2_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@MSM_ISPIF_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to init format: %d\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MSM_ISPIF_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MSM_ISPIF_PAD_SRC = common dso_local global i64 0, align 8
@MEDIA_ENT_F_IO_V4L = common dso_local global i32 0, align 4
@ispif_media_ops = common dso_local global i32 0, align 4
@MSM_ISPIF_PADS_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to init media entity: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register subdev: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_ispif_register_entities(%struct.ispif_device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispif_device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.media_pad*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  store %struct.ispif_device* %0, %struct.ispif_device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %12 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %13 = call %struct.device* @to_device(%struct.ispif_device* %12)
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %114, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %17 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %14
  %21 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %22 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.v4l2_subdev* %27, %struct.v4l2_subdev** %9, align 8
  %28 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %29 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.media_pad*, %struct.media_pad** %34, align 8
  store %struct.media_pad* %35, %struct.media_pad** %10, align 8
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %37 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %36, i32* @ispif_v4l2_ops)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %38, i32 0, i32 3
  store i32* @ispif_v4l2_internal_ops, i32** %39, align 8
  %40 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load i8*, i8** @MSM_ISPIF_NAME, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @snprintf(i32 %47, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %56 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %57 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %55, %struct.TYPE_4__* %61)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %64 = call i32 @ispif_init_formats(%struct.v4l2_subdev* %63, i32* null)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %20
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %118

71:                                               ; preds = %20
  %72 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %73 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %74 = load i64, i64* @MSM_ISPIF_PAD_SINK, align 8
  %75 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %73, i64 %74
  %76 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %78 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %79 = load i64, i64* @MSM_ISPIF_PAD_SRC, align 8
  %80 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %78, i64 %79
  %81 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32* @ispif_media_ops, i32** %88, align 8
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %89, i32 0, i32 0
  %91 = load i32, i32* @MSM_ISPIF_PADS_NUM, align 4
  %92 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %93 = call i32 @media_entity_pads_init(%struct.TYPE_5__* %90, i32 %91, %struct.media_pad* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %71
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %118

100:                                              ; preds = %71
  %101 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %103 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %101, %struct.v4l2_subdev* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %110, i32 0, i32 0
  %112 = call i32 @media_entity_cleanup(%struct.TYPE_5__* %111)
  br label %118

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %14

117:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %142

118:                                              ; preds = %106, %96, %67
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %137, %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  %125 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %126 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store %struct.v4l2_subdev* %131, %struct.v4l2_subdev** %11, align 8
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %133 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %132)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %134, i32 0, i32 0
  %136 = call i32 @media_entity_cleanup(%struct.TYPE_5__* %135)
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %8, align 4
  br label %121

140:                                              ; preds = %121
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %117
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.device* @to_device(%struct.ispif_device*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.TYPE_4__*) #1

declare dso_local i32 @ispif_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_5__*, i32, %struct.media_pad*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
