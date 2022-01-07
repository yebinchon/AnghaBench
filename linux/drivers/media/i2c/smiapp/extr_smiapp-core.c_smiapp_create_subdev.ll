; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_create_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_create_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { %struct.smiapp_subdev*, %struct.smiapp_subdev*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.smiapp_subdev = type { i16, i16, i64, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_11__*, %struct.TYPE_15__, %struct.smiapp_sensor* }
%struct.TYPE_14__ = type { i32*, i32, i32*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@smiapp_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@smiapp_entity_ops = common dso_local global i32 0, align 4
@smiapp_internal_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smiapp_sensor*, %struct.smiapp_subdev*, i8*, i16)* @smiapp_create_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smiapp_create_subdev(%struct.smiapp_sensor* %0, %struct.smiapp_subdev* %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.smiapp_sensor*, align 8
  %6 = alloca %struct.smiapp_subdev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %5, align 8
  store %struct.smiapp_subdev* %1, %struct.smiapp_subdev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i16 %3, i16* %8, align 2
  %10 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %10, i32 0, i32 0
  %12 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %11, align 8
  %13 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %12, i32 0, i32 3
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_14__* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %16 = icmp ne %struct.smiapp_subdev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %150

18:                                               ; preds = %4
  %19 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %20 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %21 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %20, i32 0, i32 0
  %22 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %21, align 8
  %23 = icmp ne %struct.smiapp_subdev* %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %26 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %25, i32 0, i32 3
  %27 = call i32 @v4l2_subdev_init(%struct.TYPE_14__* %26, i32* @smiapp_ops)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %30 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %31 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %36 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %37 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %36, i32 0, i32 8
  store %struct.smiapp_sensor* %35, %struct.smiapp_sensor** %37, align 8
  %38 = load i16, i16* %8, align 2
  %39 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %40 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %39, i32 0, i32 0
  store i16 %38, i16* %40, align 8
  %41 = load i16, i16* %8, align 2
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %42, 1
  %44 = trunc i32 %43 to i16
  %45 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %46 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %45, i32 0, i32 1
  store i16 %44, i16* %46, align 2
  %47 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %48 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %47, i32 0, i32 3
  %49 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %50 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %51 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @v4l2_i2c_subdev_set_name(%struct.TYPE_14__* %48, %struct.i2c_client* %49, i32 %53, i8* %54)
  %56 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %57 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %58 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %57, i32 0, i32 7
  %59 = call i32 @smiapp_get_native_size(%struct.smiapp_subdev* %56, %struct.TYPE_15__* %58)
  %60 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %61 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %65 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %68 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %72 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %75 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %74, i32 0, i32 6
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %78 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %77, i32 0, i32 1
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %80
  %82 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %83 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %82, i32 0, i32 5
  %84 = bitcast %struct.TYPE_11__* %81 to i8*
  %85 = bitcast %struct.TYPE_11__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %87 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %88 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %87, i32 0, i32 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %91 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %90, i32 0, i32 1
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %86, i32* %95, align 4
  %96 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %97 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %98 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %97, i32 0, i32 1
  %99 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %98, align 8
  %100 = icmp ne %struct.smiapp_subdev* %96, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %28
  %102 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %103 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %102, i32 0, i32 6
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %106 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %107
  %109 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %110 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %109, i32 0, i32 5
  %111 = bitcast %struct.TYPE_11__* %108 to i8*
  %112 = bitcast %struct.TYPE_11__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 8 %112, i64 8, i1 false)
  %113 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %114 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %115 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %114, i32 0, i32 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %118 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i32 %113, i32* %121, align 4
  br label %122

122:                                              ; preds = %101, %28
  %123 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %124 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i32* @smiapp_entity_ops, i32** %126, align 8
  %127 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %128 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %129 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %128, i32 0, i32 0
  %130 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %129, align 8
  %131 = icmp eq %struct.smiapp_subdev* %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %150

133:                                              ; preds = %122
  %134 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %135 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  store i32* @smiapp_internal_ops, i32** %136, align 8
  %137 = load i32, i32* @THIS_MODULE, align 4
  %138 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %139 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 8
  %141 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %144 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  store i32* %142, i32** %145, align 8
  %146 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %6, align 8
  %147 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %146, i32 0, i32 3
  %148 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %149 = call i32 @v4l2_set_subdevdata(%struct.TYPE_14__* %147, %struct.i2c_client* %148)
  br label %150

150:                                              ; preds = %133, %132, %17
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_14__*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_set_name(%struct.TYPE_14__*, %struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @smiapp_get_native_size(%struct.smiapp_subdev*, %struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_14__*, %struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
