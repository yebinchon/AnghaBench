; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.smiapp_sensor = type { i32, i32* }
%struct.smiapp_subdev = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@SMIAPP_PADS = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_MIN_X_OUTPUT_SIZE = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_X_OUTPUT_SIZE = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_Y_OUTPUT_SIZE = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_Y_OUTPUT_SIZE = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @smiapp_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.smiapp_sensor*, align 8
  %9 = alloca %struct.smiapp_subdev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %14)
  store %struct.smiapp_sensor* %15, %struct.smiapp_sensor** %8, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %16)
  store %struct.smiapp_subdev* %17, %struct.smiapp_subdev** %9, align 8
  %18 = load i32, i32* @SMIAPP_PADS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.v4l2_rect*, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %23 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %29 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %34 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %36 = call i32 @smiapp_set_format_source(%struct.v4l2_subdev* %33, %struct.v4l2_subdev_pad_config* %34, %struct.v4l2_subdev_format* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %38 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

41:                                               ; preds = %3
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @__smiapp_get_mbus_code(%struct.v4l2_subdev* %42, i64 %45)
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -2
  store i32 %54, i32* %52, align 4
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -2
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %61 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %69 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @SMIAPP_LIMIT_MIN_X_OUTPUT_SIZE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %75 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @SMIAPP_LIMIT_MAX_X_OUTPUT_SIZE, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @clamp(i32 %67, i32 %73, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %90 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @SMIAPP_LIMIT_MIN_Y_OUTPUT_SIZE, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %96 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @SMIAPP_LIMIT_MAX_Y_OUTPUT_SIZE, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @clamp(i32 %88, i32 %94, i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %107 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %108 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @smiapp_get_crop_compose(%struct.v4l2_subdev* %106, %struct.v4l2_subdev_pad_config* %107, %struct.v4l2_rect** %21, i32* null, i32 %110)
  %112 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %113 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %114
  %116 = load %struct.v4l2_rect*, %struct.v4l2_rect** %115, align 8
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %119 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %120
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %121, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %129 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %130
  %132 = load %struct.v4l2_rect*, %struct.v4l2_rect** %131, align 8
  %133 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 8
  %134 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %139 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %140
  %142 = load %struct.v4l2_rect*, %struct.v4l2_rect** %141, align 8
  %143 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %142, i32 0, i32 1
  store i32 %137, i32* %143, align 4
  %144 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %41
  %150 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %151 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %150, i32 0, i32 2
  %152 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %153 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %154
  %156 = load %struct.v4l2_rect*, %struct.v4l2_rect** %155, align 8
  %157 = bitcast %struct.v4l2_rect* %151 to i8*
  %158 = bitcast %struct.v4l2_rect* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 24, i1 false)
  br label %159

159:                                              ; preds = %149, %41
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %161 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %162 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %163 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  %166 = call i32 @smiapp_propagate(%struct.v4l2_subdev* %160, %struct.v4l2_subdev_pad_config* %161, i32 %164, i32 %165)
  %167 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %168 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

170:                                              ; preds = %159, %32
  %171 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smiapp_set_format_source(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__smiapp_get_mbus_code(%struct.v4l2_subdev*, i64) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @smiapp_get_crop_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect**, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @smiapp_propagate(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
