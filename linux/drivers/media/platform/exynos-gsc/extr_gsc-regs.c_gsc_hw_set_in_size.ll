; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_in_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_in_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_dev* }
%struct.gsc_frame = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.gsc_dev = type { i64 }

@GSC_SRCIMG_OFFSET = common dso_local global i64 0, align 8
@GSC_SRCIMG_SIZE = common dso_local global i64 0, align 8
@GSC_CROPPED_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_in_size(%struct.gsc_ctx* %0) #0 {
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
  %11 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %12 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GSC_SRCIMG_OFFSET_X(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %17 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GSC_SRCIMG_OFFSET_Y(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %25 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GSC_SRCIMG_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %31 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GSC_SRCIMG_WIDTH(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %35 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GSC_SRCIMG_HEIGHT(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GSC_SRCIMG_SIZE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %48 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @GSC_CROPPED_WIDTH(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %53 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GSC_CROPPED_HEIGHT(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %61 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GSC_CROPPED_SIZE, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  ret void
}

declare dso_local i32 @GSC_SRCIMG_OFFSET_X(i32) #1

declare dso_local i32 @GSC_SRCIMG_OFFSET_Y(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @GSC_SRCIMG_WIDTH(i32) #1

declare dso_local i32 @GSC_SRCIMG_HEIGHT(i32) #1

declare dso_local i32 @GSC_CROPPED_WIDTH(i32) #1

declare dso_local i32 @GSC_CROPPED_HEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
