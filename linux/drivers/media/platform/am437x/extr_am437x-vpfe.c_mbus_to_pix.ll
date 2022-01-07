; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_mbus_to_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_mbus_to_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32 }
%struct.vpfe_fmt = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid mbus code set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_device*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*, i32*)* @mbus_to_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbus_to_pix(%struct.vpfe_device* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_pix_format* %2, i32* %3) #0 {
  %5 = alloca %struct.vpfe_device*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vpfe_fmt*, align 8
  store %struct.vpfe_device* %0, %struct.vpfe_device** %5, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %6, align 8
  store %struct.v4l2_pix_format* %2, %struct.v4l2_pix_format** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 0
  %14 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %13, align 8
  store %struct.vpfe_subdev_info* %14, %struct.vpfe_subdev_info** %9, align 8
  %15 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %16 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vpfe_fmt* @find_format_by_code(i32 %21)
  store %struct.vpfe_fmt* %22, %struct.vpfe_fmt** %11, align 8
  %23 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %11, align 8
  %24 = icmp eq %struct.vpfe_fmt* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %8, align 8
  store i32 1, i32* %30, align 4
  br label %75

31:                                               ; preds = %4
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %33 = call i32 @memset(%struct.v4l2_pix_format* %32, i32 0, i32 20)
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %36 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %34, %struct.v4l2_mbus_framefmt* %35)
  %37 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %11, align 8
  %38 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %11, align 8
  %46 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %54

49:                                               ; preds = %31
  %50 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %11, align 8
  %51 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i32 [ %48, %44 ], [ %53, %49 ]
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul i32 %59, %61
  %63 = call i32 @ALIGN(i32 %62, i32 32)
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %54, %28
  ret void
}

declare dso_local %struct.vpfe_fmt* @find_format_by_code(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(%struct.v4l2_pix_format*, i32, i32) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
