; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_async_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_async_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.cal_ctx = type { %struct.v4l2_mbus_framefmt, %struct.cal_fmt*, %struct.TYPE_6__ }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.cal_fmt = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"mbus code format (0x%08x) not found.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*)* @cal_async_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_async_complete(%struct.v4l2_async_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  %4 = alloca %struct.cal_ctx*, align 8
  %5 = alloca %struct.cal_fmt*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %3, align 8
  %8 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %9 = call %struct.cal_ctx* @notifier_to_ctx(%struct.v4l2_async_notifier* %8)
  store %struct.cal_ctx* %9, %struct.cal_ctx** %4, align 8
  %10 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %11 = call i32 @__subdev_get_format(%struct.cal_ctx* %10, %struct.v4l2_mbus_framefmt* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cal_fmt* @find_format_by_code(%struct.cal_ctx* %17, i32 %19)
  store %struct.cal_fmt* %20, %struct.cal_fmt** %5, align 8
  %21 = load %struct.cal_fmt*, %struct.cal_fmt** %5, align 8
  %22 = icmp ne %struct.cal_fmt* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %16
  %31 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @v4l2_fill_pix_format(%struct.TYPE_5__* %34, %struct.v4l2_mbus_framefmt* %6)
  %36 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %37 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.cal_fmt*, %struct.cal_fmt** %5, align 8
  %41 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  %48 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %49 = load %struct.cal_fmt*, %struct.cal_fmt** %5, align 8
  %50 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %50, i32 0, i32 2
  %52 = call i32 @cal_calc_format_size(%struct.cal_ctx* %48, %struct.cal_fmt* %49, %struct.TYPE_6__* %51)
  %53 = load %struct.cal_fmt*, %struct.cal_fmt** %5, align 8
  %54 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %54, i32 0, i32 1
  store %struct.cal_fmt* %53, %struct.cal_fmt** %55, align 8
  %56 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %56, i32 0, i32 0
  %58 = bitcast %struct.v4l2_mbus_framefmt* %57 to i8*
  %59 = bitcast %struct.v4l2_mbus_framefmt* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 4 %59, i64 4, i1 false)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %30, %23, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.cal_ctx* @notifier_to_ctx(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @__subdev_get_format(%struct.cal_ctx*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local %struct.cal_fmt* @find_format_by_code(%struct.cal_ctx*, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.TYPE_5__*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @cal_calc_format_size(%struct.cal_ctx*, %struct.cal_fmt*, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
