; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.v4l2_fract }
%struct.camera_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@framerate_controls = common dso_local global %struct.TYPE_11__* null, align 8
@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @cpia2_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.camera_data*, align 8
  %9 = alloca %struct.v4l2_captureparm*, align 8
  %10 = alloca %struct.v4l2_fract, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_fract, align 4
  %15 = alloca %struct.v4l2_fract, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.camera_data* @video_drvdata(%struct.file* %16)
  store %struct.camera_data* %17, %struct.camera_data** %8, align 8
  %18 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.v4l2_captureparm* %20, %struct.v4l2_captureparm** %9, align 8
  %21 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %21, i32 0, i32 0
  %23 = bitcast %struct.v4l2_fract* %10 to i8*
  %24 = bitcast %struct.v4l2_fract* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %31 = call i32 @cpia2_g_parm(%struct.file* %28, i8* %29, %struct.v4l2_streamparm* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %34, %3
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %122

44:                                               ; preds = %38
  %45 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %46 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DEVICE_STV_672, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %54 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 2
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %52, %44
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %95, %63
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  %69 = bitcast %struct.v4l2_fract* %14 to i8*
  %70 = bitcast %struct.v4l2_fract* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = bitcast %struct.v4l2_fract* %15 to i8*
  %77 = bitcast %struct.v4l2_fract* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %14, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, %79
  store i32 %82, i32* %80, align 4
  %83 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %14, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %14, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %68
  br label %98

94:                                               ; preds = %68
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %64

98:                                               ; preds = %93, %64
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %106 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = bitcast %struct.v4l2_fract* %106 to i8*
  %113 = bitcast %struct.v4l2_fract* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 8, i1 false)
  %114 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @cpia2_set_fps(%struct.camera_data* %114, i32 %120)
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %104, %42
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @cpia2_g_parm(%struct.file*, i8*, %struct.v4l2_streamparm*) #1

declare dso_local i32 @cpia2_set_fps(%struct.camera_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
