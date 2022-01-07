; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_get_streaminfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_get_streaminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32 }
%struct.delta_mjpeg_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, %struct.delta_streaminfo*)* @delta_mjpeg_get_streaminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_mjpeg_get_streaminfo(%struct.delta_ctx* %0, %struct.delta_streaminfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_streaminfo*, align 8
  %6 = alloca %struct.delta_mjpeg_ctx*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_streaminfo* %1, %struct.delta_streaminfo** %5, align 8
  %7 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %8 = call %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx* %7)
  store %struct.delta_mjpeg_ctx* %8, %struct.delta_mjpeg_ctx** %6, align 8
  %9 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %6, align 8
  %10 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %16 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %17 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %24 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %31 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %33 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %34 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %36 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %40

37:                                               ; preds = %13
  %38 = load i32, i32* @ENODATA, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
