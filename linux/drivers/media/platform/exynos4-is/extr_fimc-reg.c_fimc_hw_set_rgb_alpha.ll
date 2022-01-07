; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_rgb_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_rgb_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_dev* }
%struct.fimc_frame = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fimc_dev = type { i64 }

@FMT_HAS_ALPHA = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CIOCTRL_ALPHA_OUT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_rgb_alpha(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %6 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %6, i32 0, i32 1
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  store %struct.fimc_dev* %8, %struct.fimc_dev** %3, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 0
  store %struct.fimc_frame* %10, %struct.fimc_frame** %4, align 8
  %11 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FMT_HAS_ALPHA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FIMC_REG_CIOCTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @FIMC_REG_CIOCTRL_ALPHA_OUT_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %32 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %39 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FIMC_REG_CIOCTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %20, %19
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
