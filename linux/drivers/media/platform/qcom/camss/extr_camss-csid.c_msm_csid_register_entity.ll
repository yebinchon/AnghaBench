; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_msm_csid_register_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_msm_csid_register_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csid_device = type { %struct.TYPE_8__, %struct.v4l2_subdev, i32, i32, %struct.TYPE_7__*, %struct.media_pad* }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_subdev = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.media_pad = type { i32 }
%struct.v4l2_device = type { i32 }

@csid_v4l2_ops = common dso_local global i32 0, align 4
@csid_v4l2_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@MSM_CSID_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to init ctrl handler: %d\0A\00", align 1
@csid_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@csid_test_pattern_menu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init ctrl: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to init format: %d\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MSM_CSID_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MSM_CSID_PAD_SRC = common dso_local global i64 0, align 8
@MEDIA_ENT_F_IO_V4L = common dso_local global i32 0, align 4
@csid_media_ops = common dso_local global i32 0, align 4
@MSM_CSID_PADS_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to init media entity: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to register subdev: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_csid_register_entity(%struct.csid_device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csid_device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.csid_device* %0, %struct.csid_device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %10 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %11 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %10, i32 0, i32 1
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %6, align 8
  %12 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %13 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %12, i32 0, i32 5
  %14 = load %struct.media_pad*, %struct.media_pad** %13, align 8
  store %struct.media_pad* %14, %struct.media_pad** %7, align 8
  %15 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %16 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %15, i32 0, i32 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %20, i32* @csid_v4l2_ops)
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 4
  store i32* @csid_v4l2_internal_ops, i32** %23, align 8
  %24 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %25 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load i8*, i8** @MSM_CSID_NAME, align 8
  %39 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %40 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i32 %33, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %44 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %45 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %43, %struct.csid_device* %44)
  %46 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %47 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %46, i32 0, i32 0
  %48 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %47, i32 1)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %2
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %146

56:                                               ; preds = %2
  %57 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %58 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %57, i32 0, i32 0
  %59 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %60 = load i32, i32* @csid_test_pattern_menu, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* @csid_test_pattern_menu, align 4
  %64 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_8__* %58, i32* @csid_ctrl_ops, i32 %59, i32 %62, i32 0, i32 0, i32 %63)
  %65 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %66 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %68 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %75 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %80 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %9, align 4
  br label %141

83:                                               ; preds = %56
  %84 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %85 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %84, i32 0, i32 0
  %86 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %87 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %87, i32 0, i32 2
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %88, align 8
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %90 = call i32 @csid_init_formats(%struct.v4l2_subdev* %89, i32* null)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.device*, %struct.device** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %141

97:                                               ; preds = %83
  %98 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %99 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %100 = load i64, i64* @MSM_CSID_PAD_SINK, align 8
  %101 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %99, i64 %100
  %102 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %104 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %105 = load i64, i64* @MSM_CSID_PAD_SRC, align 8
  %106 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %104, i64 %105
  %107 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32* @csid_media_ops, i32** %114, align 8
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %115, i32 0, i32 1
  %117 = load i32, i32* @MSM_CSID_PADS_NUM, align 4
  %118 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %119 = call i32 @media_entity_pads_init(%struct.TYPE_9__* %116, i32 %117, %struct.media_pad* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %97
  %123 = load %struct.device*, %struct.device** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %141

126:                                              ; preds = %97
  %127 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %129 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %127, %struct.v4l2_subdev* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.device*, %struct.device** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %137

136:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %146

137:                                              ; preds = %132
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %138, i32 0, i32 1
  %140 = call i32 @media_entity_cleanup(%struct.TYPE_9__* %139)
  br label %141

141:                                              ; preds = %137, %122, %93, %72
  %142 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %143 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %142, i32 0, i32 0
  %144 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %141, %136, %51
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.csid_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @csid_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_9__*, i32, %struct.media_pad*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
