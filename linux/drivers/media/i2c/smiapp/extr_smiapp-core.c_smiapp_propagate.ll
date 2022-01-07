; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_propagate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.smiapp_sensor = type { i32, i32, %struct.smiapp_subdev*, i32, i32*, i32, %struct.smiapp_subdev* }
%struct.smiapp_subdev = type { i32 }
%struct.v4l2_rect = type { i32, i32 }

@SMIAPP_PADS = common dso_local global i32 0, align 4
@SMIAPP_PAD_SINK = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_SCALER_N_MIN = common dso_local global i64 0, align 8
@SMIAPP_SCALING_MODE_NONE = common dso_local global i32 0, align 4
@SMIAPP_PAD_SRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32, i32)* @smiapp_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smiapp_propagate(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smiapp_sensor*, align 8
  %10 = alloca %struct.smiapp_subdev*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %14)
  store %struct.smiapp_sensor* %15, %struct.smiapp_sensor** %9, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %16)
  store %struct.smiapp_subdev* %17, %struct.smiapp_subdev** %10, align 8
  %18 = load i32, i32* @SMIAPP_PADS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.v4l2_rect*, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @smiapp_get_crop_compose(%struct.v4l2_subdev* %22, %struct.v4l2_subdev_pad_config* %23, %struct.v4l2_rect** %21, %struct.v4l2_rect** %11, i32 %24)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %84 [
    i32 128, label %27
    i32 129, label %77
  ]

27:                                               ; preds = %4
  %28 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %28
  %30 = load %struct.v4l2_rect*, %struct.v4l2_rect** %29, align 8
  %31 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %35
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %36, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %27
  %46 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %10, align 8
  %47 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %48 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %47, i32 0, i32 6
  %49 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %48, align 8
  %50 = icmp eq %struct.smiapp_subdev* %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %53 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @SMIAPP_LIMIT_SCALER_N_MIN, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %59 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @SMIAPP_SCALING_MODE_NONE, align 4
  %61 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %62 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %75

63:                                               ; preds = %45
  %64 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %10, align 8
  %65 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %66 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %65, i32 0, i32 2
  %67 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %66, align 8
  %68 = icmp eq %struct.smiapp_subdev* %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %71 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %9, align 8
  %73 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %27
  br label %77

77:                                               ; preds = %4, %76
  %78 = load i64, i64* @SMIAPP_PAD_SRC, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %21, i64 %78
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %79, align 8
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %82 = bitcast %struct.v4l2_rect* %80 to i8*
  %83 = bitcast %struct.v4l2_rect* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  br label %86

84:                                               ; preds = %4
  %85 = call i32 (...) @BUG()
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  ret void
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @smiapp_get_crop_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect**, %struct.v4l2_rect**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @BUG(...) #1

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
