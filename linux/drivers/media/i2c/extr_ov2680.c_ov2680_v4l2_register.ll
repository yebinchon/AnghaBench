; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_v4l2_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_v4l2_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.ov2680_dev = type { %struct.TYPE_10__, i32, %struct.TYPE_12__, i32, %struct.ov2680_ctrls }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.v4l2_ctrl_handler*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.ov2680_ctrls = type { i8*, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ov2680_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@ov2680_subdev_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@test_pattern_menu = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*)* @ov2680_v4l2_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_v4l2_register(%struct.ov2680_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2680_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.ov2680_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %3, align 8
  store %struct.v4l2_ctrl_ops* @ov2680_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %8 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %8, i32 0, i32 4
  store %struct.ov2680_ctrls* %9, %struct.ov2680_ctrls** %5, align 8
  %10 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %11 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %10, i32 0, i32 7
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %12, i32 0, i32 0
  %14 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_10__* %13, i32 %16, i32* @ov2680_subdev_ops)
  %18 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %19 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %23 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %28 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %31 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %30, i32 0, i32 2
  %32 = call i32 @media_entity_pads_init(%struct.TYPE_11__* %29, i32 1, %struct.TYPE_12__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %141

37:                                               ; preds = %1
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %39 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %38, i32 7)
  %40 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %41 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %40, i32 0, i32 1
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %45 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %46 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %47 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %44, %struct.v4l2_ctrl_ops* %45, i32 %46, i32 0, i32 1, i32 1, i32 0)
  %48 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %49 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %51 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %52 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %53 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, %struct.v4l2_ctrl_ops* %51, i32 %52, i32 0, i32 1, i32 1, i32 0)
  %54 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %55 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %57 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %58 = load i32, i32* @test_pattern_menu, align 4
  %59 = call i64 @ARRAY_SIZE(i32 %58)
  %60 = sub nsw i64 %59, 1
  %61 = load i32, i32* @test_pattern_menu, align 4
  %62 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %56, %struct.v4l2_ctrl_ops* @ov2680_ctrl_ops, i32 %57, i64 %60, i32 0, i32 0, i32 %61)
  %63 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %64 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %66 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %67 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %68 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %69 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %70 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %65, %struct.v4l2_ctrl_ops* %66, i32 %67, i32 %68, i32 0, i32 %69)
  %71 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %72 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %74 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %75 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %76 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %73, %struct.v4l2_ctrl_ops* %74, i32 %75, i32 0, i32 32767, i32 1, i32 0)
  %77 = bitcast i8* %76 to %struct.TYPE_9__*
  %78 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %79 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %78, i32 0, i32 2
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %79, align 8
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %81 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %82 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %83 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %80, %struct.v4l2_ctrl_ops* %81, i32 %82, i32 0, i32 1, i32 1, i32 1)
  %84 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %85 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %87 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %88 = load i32, i32* @V4L2_CID_GAIN, align 4
  %89 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %86, %struct.v4l2_ctrl_ops* %87, i32 %88, i32 0, i32 2047, i32 1, i32 0)
  %90 = bitcast i8* %89 to %struct.TYPE_8__*
  %91 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %92 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %91, i32 0, i32 3
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %92, align 8
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %37
  %98 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  br label %133

101:                                              ; preds = %37
  %102 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %103 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %104 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %103, i32 0, i32 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %110 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %111 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %117 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %116, i32 0, i32 1
  %118 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %117, i32 0, i32 1)
  %119 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %5, align 8
  %120 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %119, i32 0, i32 0
  %121 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %120, i32 1, i32 1)
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %123 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %124 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %122, %struct.v4l2_ctrl_handler** %125, align 8
  %126 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %127 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %126, i32 0, i32 0
  %128 = call i32 @v4l2_async_register_subdev(%struct.TYPE_10__* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %101
  br label %133

132:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %141

133:                                              ; preds = %131, %97
  %134 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %135 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = call i32 @media_entity_cleanup(%struct.TYPE_11__* %136)
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %139 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %133, %132, %35
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_10__*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
