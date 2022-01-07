; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_get_frame_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_get_frame_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FIMC_REG_CISTATUS2 = common dso_local global i64 0, align 8
@FIMC_REG_CISTATUS = common dso_local global i64 0, align 8
@FIMC_REG_CISTATUS_FRAMECNT_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CISTATUS_FRAMECNT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_hw_get_frame_index(%struct.fimc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  %5 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FIMC_REG_CISTATUS2, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = and i32 %17, 63
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FIMC_REG_CISTATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FIMC_REG_CISTATUS_FRAMECNT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @FIMC_REG_CISTATUS_FRAMECNT_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %21, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
