; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.adv748x_afe = type { i32 }

@ADV748X_AFE_SOURCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv748x_afe_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_afe_get_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv748x_afe*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.adv748x_afe* @adv748x_sd_to_afe(%struct.v4l2_subdev* %10)
  store %struct.adv748x_afe* %11, %struct.adv748x_afe** %8, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADV748X_AFE_SOURCE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %27, %struct.v4l2_subdev_pad_config* %28, i64 %31)
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %9, align 8
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 2
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %36 = bitcast %struct.v4l2_mbus_framefmt* %34 to i8*
  %37 = bitcast %struct.v4l2_mbus_framefmt* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 4 %37, i64 4, i1 false)
  br label %45

38:                                               ; preds = %20
  %39 = load %struct.adv748x_afe*, %struct.adv748x_afe** %8, align 8
  %40 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %40, i32 0, i32 2
  %42 = call i32 @adv748x_afe_fill_format(%struct.adv748x_afe* %39, %struct.v4l2_mbus_framefmt* %41)
  %43 = load %struct.adv748x_afe*, %struct.adv748x_afe** %8, align 8
  %44 = call i32 @adv748x_afe_propagate_pixelrate(%struct.adv748x_afe* %43)
  br label %45

45:                                               ; preds = %38, %26
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.adv748x_afe* @adv748x_sd_to_afe(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @adv748x_afe_fill_format(%struct.adv748x_afe*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @adv748x_afe_propagate_pixelrate(%struct.adv748x_afe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
