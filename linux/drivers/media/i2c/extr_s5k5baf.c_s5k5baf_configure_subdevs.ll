; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_configure_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_configure_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { %struct.v4l2_subdev, %struct.TYPE_5__*, %struct.v4l2_subdev, %struct.TYPE_5__ }
%struct.v4l2_subdev = type { i32, %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.i2c_client = type { i32, i32, i32 }

@s5k5baf_cis_subdev_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"S5K5BAF-CIS %d-%04x\00", align 1
@s5k5baf_cis_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@NUM_CIS_PADS = common dso_local global i32 0, align 4
@s5k5baf_subdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"S5K5BAF-ISP %d-%04x\00", align 1
@s5k5baf_subdev_internal_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@PAD_CIS = common dso_local global i64 0, align 8
@PAD_OUT = common dso_local global i64 0, align 8
@MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN = common dso_local global i32 0, align 4
@NUM_ISP_PADS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot init media entity %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*, %struct.i2c_client*)* @s5k5baf_configure_subdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_configure_subdevs(%struct.s5k5baf* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %8 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %9 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %11 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %10, i32* @s5k5baf_cis_subdev_ops)
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %17 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %15, %struct.s5k5baf* %16)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i2c_adapter_id(i32 %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 3
  store i32* @s5k5baf_cis_subdev_internal_ops, i32** %30, align 8
  %31 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %37 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %38 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %44, i32 0, i32 1
  %46 = load i32, i32* @NUM_CIS_PADS, align 4
  %47 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %48 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %47, i32 0, i32 3
  %49 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %45, i32 %46, %struct.TYPE_5__* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %2
  br label %110

53:                                               ; preds = %2
  %54 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %55 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %54, i32 0, i32 2
  store %struct.v4l2_subdev* %55, %struct.v4l2_subdev** %6, align 8
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %56, %struct.i2c_client* %57, i32* @s5k5baf_subdev_ops)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i2c_adapter_id(i32 %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 3
  store i32* @s5k5baf_subdev_internal_ops, i32** %71, align 8
  %72 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %78 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %79 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i64, i64* @PAD_CIS, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i8* %77, i8** %83, align 8
  %84 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %85 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %86 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i64, i64* @PAD_OUT, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i8* %84, i8** %90, align 8
  %91 = load i32, i32* @MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN, align 4
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %95, i32 0, i32 1
  %97 = load i32, i32* @NUM_ISP_PADS, align 4
  %98 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %99 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %96, i32 %97, %struct.TYPE_5__* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %53
  store i32 0, i32* %3, align 4
  br label %118

105:                                              ; preds = %53
  %106 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %107 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %107, i32 0, i32 1
  %109 = call i32 @media_entity_cleanup(%struct.TYPE_4__* %108)
  br label %110

110:                                              ; preds = %105, %52
  %111 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 1
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %110, %104
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.s5k5baf*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_4__*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
