; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, %struct.v4l2_rect, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.s5k6aa = type { i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Current crop rectangle: (%d,%d)/%dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @s5k6aa_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.s5k6aa*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %10)
  store %struct.s5k6aa* %11, %struct.s5k6aa** %8, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %3
  %21 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %26 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %29 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %30 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.v4l2_rect* @__s5k6aa_get_crop_rect(%struct.s5k6aa* %28, %struct.v4l2_subdev_pad_config* %29, i32 %32)
  store %struct.v4l2_rect* %33, %struct.v4l2_rect** %9, align 8
  %34 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %34, i32 0, i32 1
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %37 = bitcast %struct.v4l2_rect* %35 to i8*
  %38 = bitcast %struct.v4l2_rect* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 16, i1 false)
  %39 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %40 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* @debug, align 4
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @v4l2_dbg(i32 1, i32 %42, %struct.v4l2_subdev* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %20, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_rect* @__s5k6aa_get_crop_rect(%struct.s5k6aa*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
