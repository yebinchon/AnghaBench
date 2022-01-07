; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_camera_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_camera_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i64 }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32 }

@FIMC_REG_CIWDOFST = common dso_local global i64 0, align 8
@FIMC_REG_CIWDOFST_HOROFF_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIWDOFST_VEROFF_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIWDOFST_OFF_EN = common dso_local global i32 0, align 4
@FIMC_REG_CIWDOFST2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_camera_offset(%struct.fimc_dev* %0, %struct.fimc_frame* %1) #0 {
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  store %struct.fimc_frame* %1, %struct.fimc_frame** %4, align 8
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FIMC_REG_CIWDOFST, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @FIMC_REG_CIWDOFST_HOROFF_MASK, align 4
  %15 = load i32, i32* @FIMC_REG_CIWDOFST_VEROFF_MASK, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @FIMC_REG_CIWDOFST_OFF_EN, align 4
  %21 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %22 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %20, %24
  %26 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FIMC_REG_CIWDOFST, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %40 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %43 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %47 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %51 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %54 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %58 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %67 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FIMC_REG_CIWDOFST2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
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
