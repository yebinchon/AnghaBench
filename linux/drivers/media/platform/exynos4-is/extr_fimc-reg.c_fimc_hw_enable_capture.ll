; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_enable_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_enable_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_2__, %struct.fimc_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.fimc_dev = type { i64 }

@FIMC_REG_CIIMGCPT = common dso_local global i64 0, align 8
@FIMC_REG_CIIMGCPT_CPT_FREN_ENABLE = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGCPT_IMGCPTEN_SC = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGCPT_IMGCPTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_enable_capture(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %5 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %5, i32 0, i32 1
  %7 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  store %struct.fimc_dev* %7, %struct.fimc_dev** %3, align 8
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FIMC_REG_CIIMGCPT, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @FIMC_REG_CIIMGCPT_CPT_FREN_ENABLE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @FIMC_REG_CIIMGCPT_IMGCPTEN_SC, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @FIMC_REG_CIIMGCPT_IMGCPTEN_SC, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @FIMC_REG_CIIMGCPT_IMGCPTEN, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %36 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FIMC_REG_CIIMGCPT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
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
