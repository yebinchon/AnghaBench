; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_in_dma_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_in_dma_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i64, %struct.fimc_frame, %struct.fimc_dev* }
%struct.fimc_frame = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { i64 }

@FIMC_IO_LCDFIFO = common dso_local global i64 0, align 8
@FIMC_REG_CIREAL_ISIZE_AUTOLOAD_EN = common dso_local global i32 0, align 4
@FIMC_REG_ORGISIZE = common dso_local global i64 0, align 8
@FIMC_REG_CIREAL_ISIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_ctx*)* @fimc_hw_set_in_dma_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_hw_set_in_dma_size(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 2
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  store %struct.fimc_dev* %9, %struct.fimc_dev** %3, align 8
  %10 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %10, i32 0, i32 1
  store %struct.fimc_frame* %11, %struct.fimc_frame** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i64, i64* @FIMC_IO_LCDFIFO, align 8
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @FIMC_REG_CIREAL_ISIZE_AUTOLOAD_EN, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %33 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %37 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FIMC_REG_ORGISIZE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %51 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FIMC_REG_CIREAL_ISIZE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
