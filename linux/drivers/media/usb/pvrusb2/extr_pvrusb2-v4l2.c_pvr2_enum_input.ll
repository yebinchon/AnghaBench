; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_input = type { i64, i64*, i32 }
%struct.pvr2_ctrl = type { i32 }

@PVR2_CID_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @pvr2_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.pvr2_ctrl*, align 8
  %11 = alloca %struct.v4l2_input, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %15, align 8
  store %struct.pvr2_v4l2_fh* %16, %struct.pvr2_v4l2_fh** %8, align 8
  %17 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %18 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %21, align 8
  store %struct.pvr2_hdw* %22, %struct.pvr2_hdw** %9, align 8
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %24 = load i32, i32* @PVR2_CID_INPUT, align 4
  %25 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %23, i32 %24)
  store %struct.pvr2_ctrl* %25, %struct.pvr2_ctrl** %10, align 8
  %26 = call i32 @memset(%struct.v4l2_input* %11, i32 0, i32 24)
  %27 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %35 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %3
  %42 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %43 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %57 [
    i32 128, label %51
    i32 131, label %51
    i32 130, label %51
    i32 129, label %54
    i32 132, label %54
  ]

51:                                               ; preds = %41, %41, %41
  %52 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %53 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  br label %60

54:                                               ; preds = %41, %41
  %55 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %56 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  br label %60

57:                                               ; preds = %41
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %74

60:                                               ; preds = %54, %51
  store i32 0, i32* %12, align 4
  %61 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @pvr2_ctrl_get_valname(%struct.pvr2_ctrl* %61, i32 %62, i64* %64, i32 7, i32* %12)
  %66 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 0, i64* %70, align 8
  %71 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %72 = bitcast %struct.v4l2_input* %71 to i8*
  %73 = bitcast %struct.v4l2_input* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %60, %57, %38
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @memset(%struct.v4l2_input*, i32, i32) #1

declare dso_local i32 @pvr2_ctrl_get_valname(%struct.pvr2_ctrl*, i32, i64*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
