; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.adv748x_csi2 = type { %struct.adv748x_state* }
%struct.adv748x_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADV748X_CSI2_SOURCE = common dso_local global i64 0, align 8
@ADV748X_CSI2_SINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv748x_csi2_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_csi2_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv748x_csi2*, align 8
  %9 = alloca %struct.adv748x_state*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.adv748x_csi2* @adv748x_sd_to_csi2(%struct.v4l2_subdev* %13)
  store %struct.adv748x_csi2* %14, %struct.adv748x_csi2** %8, align 8
  %15 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %8, align 8
  %16 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %15, i32 0, i32 0
  %17 = load %struct.adv748x_state*, %struct.adv748x_state** %16, align 8
  store %struct.adv748x_state* %17, %struct.adv748x_state** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @adv748x_csi2_get_pad_format(%struct.v4l2_subdev* %18, %struct.v4l2_subdev_pad_config* %19, i64 %22, i32 %25)
  %27 = bitcast i8* %26 to %struct.v4l2_mbus_framefmt*
  store %struct.v4l2_mbus_framefmt* %27, %struct.v4l2_mbus_framefmt** %10, align 8
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %29 = icmp ne %struct.v4l2_mbus_framefmt* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %3
  %34 = load %struct.adv748x_state*, %struct.adv748x_state** %9, align 8
  %35 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ADV748X_CSI2_SOURCE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %33
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %45 = load i64, i64* @ADV748X_CSI2_SINK, align 8
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @adv748x_csi2_get_pad_format(%struct.v4l2_subdev* %43, %struct.v4l2_subdev_pad_config* %44, i64 %45, i32 %48)
  %50 = bitcast i8* %49 to %struct.v4l2_mbus_framefmt*
  store %struct.v4l2_mbus_framefmt* %50, %struct.v4l2_mbus_framefmt** %12, align 8
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %52 = icmp ne %struct.v4l2_mbus_framefmt* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %68

56:                                               ; preds = %42
  %57 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %57, i32 0, i32 1
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %60 = bitcast %struct.v4l2_mbus_framefmt* %58 to i8*
  %61 = bitcast %struct.v4l2_mbus_framefmt* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 4, i1 false)
  br label %62

62:                                               ; preds = %56, %33
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %64 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %64, i32 0, i32 1
  %66 = bitcast %struct.v4l2_mbus_framefmt* %63 to i8*
  %67 = bitcast %struct.v4l2_mbus_framefmt* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %67, i64 4, i1 false)
  br label %68

68:                                               ; preds = %62, %53
  %69 = load %struct.adv748x_state*, %struct.adv748x_state** %9, align 8
  %70 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %30
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.adv748x_csi2* @adv748x_sd_to_csi2(%struct.v4l2_subdev*) #1

declare dso_local i8* @adv748x_csi2_get_pad_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
