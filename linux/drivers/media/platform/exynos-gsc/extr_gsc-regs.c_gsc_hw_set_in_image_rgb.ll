; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_in_image_rgb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_in_image_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_dev* }
%struct.gsc_frame = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.gsc_dev = type { i64 }

@GSC_IN_CON = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i64 0, align 8
@GSC_IN_RGB_HD_WIDE = common dso_local global i32 0, align 4
@GSC_IN_RGB_SD_WIDE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB565X = common dso_local global i64 0, align 8
@GSC_IN_RGB565 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@GSC_IN_XRGB8888 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_in_image_rgb(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %6 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %6, i32 0, i32 1
  %8 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  store %struct.gsc_dev* %8, %struct.gsc_dev** %3, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %9, i32 0, i32 0
  store %struct.gsc_frame* %10, %struct.gsc_frame** %4, align 8
  %11 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GSC_IN_CON, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_COLORSPACE_REC709, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @GSC_IN_RGB_HD_WIDE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @GSC_IN_RGB_SD_WIDE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %32 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_PIX_FMT_RGB565X, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @GSC_IN_RGB565, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %55

42:                                               ; preds = %30
  %43 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %44 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_PIX_FMT_RGB32, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @GSC_IN_XRGB8888, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %58 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GSC_IN_CON, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
