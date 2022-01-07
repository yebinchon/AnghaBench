; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_vb2_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_vb2_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.ceu_device = type { i32, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"Plane size too small (%lu < %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @ceu_vb2_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_vb2_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.ceu_device*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ceu_device* @vb2_get_drv_priv(i32 %9)
  store %struct.ceu_device* %10, %struct.ceu_device** %4, align 8
  %11 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %12 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %11, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %12, %struct.v4l2_pix_format_mplane** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %62, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @vb2_plane_size(%struct.vb2_buffer* %20, i32 %21)
  %23 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %22, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %19
  %33 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %34 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @vb2_plane_size(%struct.vb2_buffer* %36, i32 %37)
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %66

50:                                               ; preds = %19
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %51, i32 %52, i64 %60)
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %13

65:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ceu_device* @vb2_get_drv_priv(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
