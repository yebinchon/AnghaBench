; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.s5k5baf = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }

@EINVAL = common dso_local global i32 0, align 4
@s5k5baf_cis_rect = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @s5k5baf_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.s5k5baf*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %10)
  store %struct.s5k5baf* %11, %struct.s5k5baf** %9, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @s5k5baf_get_sel_rect(i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %27 [
    i32 128, label %20
    i32 132, label %23
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %104

23:                                               ; preds = %3
  %24 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %24, i32 0, i32 1
  %26 = bitcast %struct.TYPE_4__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_4__* @s5k5baf_cis_rect to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %104

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %38, i32 0, i32 1
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %41 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %42 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_4__* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev* %40, %struct.v4l2_subdev_pad_config* %41, i32 %44)
  %46 = bitcast %struct.TYPE_4__* %39 to i8*
  %47 = bitcast %struct.TYPE_4__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  br label %59

48:                                               ; preds = %34
  %49 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %49, i32 0, i32 1
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %52 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %53 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_4__* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %51, %struct.v4l2_subdev_pad_config* %52, i32 %55)
  %57 = bitcast %struct.TYPE_4__* %50 to i8*
  %58 = bitcast %struct.TYPE_4__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  br label %59

59:                                               ; preds = %48, %37
  store i32 0, i32* %4, align 4
  br label %104

60:                                               ; preds = %28
  %61 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %62 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %86 [
    i32 130, label %65
    i32 131, label %72
    i32 129, label %79
  ]

65:                                               ; preds = %60
  %66 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %66, i32 0, i32 1
  %68 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %69 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %68, i32 0, i32 3
  %70 = bitcast %struct.TYPE_4__* %67 to i8*
  %71 = bitcast %struct.TYPE_4__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  br label %87

72:                                               ; preds = %60
  %73 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %73, i32 0, i32 1
  %75 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %76 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %75, i32 0, i32 2
  %77 = bitcast %struct.TYPE_4__* %74 to i8*
  %78 = bitcast %struct.TYPE_4__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  br label %87

79:                                               ; preds = %60
  %80 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %80, i32 0, i32 1
  %82 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %83 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %82, i32 0, i32 1
  %84 = bitcast %struct.TYPE_4__* %81 to i8*
  %85 = bitcast %struct.TYPE_4__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  br label %87

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86, %79, %72, %65
  %88 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @s5k5baf_is_bound_target(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %102 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %59, %23, %20
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local i32 @s5k5baf_get_sel_rect(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.TYPE_4__* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @s5k5baf_is_bound_target(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
