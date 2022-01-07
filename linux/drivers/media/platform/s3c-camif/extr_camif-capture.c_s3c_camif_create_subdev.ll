; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_create_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_create_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__*, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i8* }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler*, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@s3c_camif_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"S3C-CAMIF\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@CAMIF_SD_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@CAMIF_SD_PAD_SOURCE_C = common dso_local global i64 0, align 8
@CAMIF_SD_PAD_SOURCE_P = common dso_local global i64 0, align 8
@CAMIF_SD_PADS_NUM = common dso_local global i32 0, align 4
@s3c_camif_subdev_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@s3c_camif_test_pattern_menu = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_SET_CBCR = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX_CBCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_camif_create_subdev(%struct.camif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %3, align 8
  %7 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %8 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %7, i32 0, i32 6
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %10 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %9, i32 0, i32 5
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %11, i32* @s3c_camif_subdev_ops)
  %13 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strscpy(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %23 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %24 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* @CAMIF_SD_PAD_SINK, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %22, i8** %28, align 8
  %29 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %30 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %31 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* @CAMIF_SD_PAD_SOURCE_C, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %29, i8** %35, align 8
  %36 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %37 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %38 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* @CAMIF_SD_PAD_SOURCE_P, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %36, i8** %42, align 8
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %43, i32 0, i32 1
  %45 = load i32, i32* @CAMIF_SD_PADS_NUM, align 4
  %46 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %47 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @media_entity_pads_init(i32* %44, i32 %45, %struct.TYPE_4__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %118

54:                                               ; preds = %1
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %56 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %55, i32 3)
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %58 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %59 = load i32, i32* @s3c_camif_test_pattern_menu, align 4
  %60 = call i64 @ARRAY_SIZE(i32 %59)
  %61 = sub nsw i64 %60, 1
  %62 = load i32, i32* @s3c_camif_test_pattern_menu, align 4
  %63 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %57, i32* @s3c_camif_subdev_ctrl_ops, i32 %58, i64 %61, i32 0, i32 0, i32 %62)
  %64 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %65 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %67 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %54
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %74 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %75 = load i32, i32* @V4L2_COLORFX_SET_CBCR, align 4
  %76 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %77 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %73, i32* @s3c_camif_subdev_ctrl_ops, i32 %74, i32 %75, i32 -38944, i32 %76)
  %78 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %79 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %81 = load i32, i32* @V4L2_CID_COLORFX_CBCR, align 4
  %82 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %80, i32* @s3c_camif_subdev_ctrl_ops, i32 %81, i32 0, i32 65535, i32 1, i32 0)
  %83 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %84 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %72, %54
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %92 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %93, i32 0, i32 1
  %95 = call i32 @media_entity_cleanup(i32* %94)
  %96 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %97 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %2, align 4
  br label %118

99:                                               ; preds = %85
  %100 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %101 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %108 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %107, i32 0, i32 0
  %109 = load i32, i32* @V4L2_COLORFX_SET_CBCR, align 4
  %110 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i32* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %106, %99
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %113, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %112, %struct.v4l2_ctrl_handler** %114, align 8
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %116 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %117 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %115, %struct.camif_dev* %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %111, %90, %52
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i32*, i32, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.camif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
