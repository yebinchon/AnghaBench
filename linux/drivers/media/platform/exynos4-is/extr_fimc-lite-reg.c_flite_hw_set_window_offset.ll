; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_window_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_window_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64 }
%struct.flite_frame = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@FLITE_REG_CIWDOFST = common dso_local global i64 0, align 8
@FLITE_REG_CIWDOFST_OFST_MASK = common dso_local global i32 0, align 4
@FLITE_REG_CIWDOFST_WINOFSEN = common dso_local global i32 0, align 4
@FLITE_REG_CIWDOFST2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_window_offset(%struct.fimc_lite* %0, %struct.flite_frame* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.flite_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.flite_frame* %1, %struct.flite_frame** %4, align 8
  %8 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FLITE_REG_CIWDOFST, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @FLITE_REG_CIWDOFST_OFST_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %19 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %24 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %22, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @FLITE_REG_CIWDOFST_WINOFSEN, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %35 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FLITE_REG_CIWDOFST, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %41 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %44 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %42, %46
  %48 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %49 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %47, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %54 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %57 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %55, %59
  %61 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %62 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %72 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FLITE_REG_CIWDOFST2, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
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
