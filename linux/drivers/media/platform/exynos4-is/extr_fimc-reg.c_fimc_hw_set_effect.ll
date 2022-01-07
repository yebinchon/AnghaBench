; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_effect, %struct.fimc_dev* }
%struct.fimc_effect = type { i32, i32, i32 }
%struct.fimc_dev = type { i64 }

@FIMC_REG_CIIMGEFF_FIN_BYPASS = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGEFF_IE_SC_AFTER = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGEFF_IE_ENABLE = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGEFF_FIN_ARBITRARY = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGEFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_effect(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_effect*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %6 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %6, i32 0, i32 1
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  store %struct.fimc_dev* %8, %struct.fimc_dev** %3, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 0
  store %struct.fimc_effect* %10, %struct.fimc_effect** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.fimc_effect*, %struct.fimc_effect** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FIMC_REG_CIIMGEFF_FIN_BYPASS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load i32, i32* @FIMC_REG_CIIMGEFF_IE_SC_AFTER, align 4
  %18 = load i32, i32* @FIMC_REG_CIIMGEFF_IE_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.fimc_effect*, %struct.fimc_effect** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.fimc_effect*, %struct.fimc_effect** %4, align 8
  %28 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FIMC_REG_CIIMGEFF_FIN_ARBITRARY, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %16
  %33 = load %struct.fimc_effect*, %struct.fimc_effect** %4, align 8
  %34 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 13
  %37 = load %struct.fimc_effect*, %struct.fimc_effect** %4, align 8
  %38 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %16
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %47 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FIMC_REG_CIIMGEFF, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
