; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@FLITE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL = common dso_local global i64 0, align 8
@FLITE_REG_CIGCTRL_SWRST_REQ = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_SWRST_RDY = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_SWRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_reset(%struct.fimc_lite* %0) #0 {
  %2 = alloca %struct.fimc_lite*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @FLITE_RESET_TIMEOUT, align 4
  %7 = call i64 @msecs_to_jiffies(i32 %6)
  %8 = add i64 %5, %7
  store i64 %8, i64* %3, align 8
  %9 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @FLITE_REG_CIGCTRL_SWRST_REQ, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %20 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  br label %25

25:                                               ; preds = %41, %1
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @time_is_after_jiffies(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %31 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FLITE_REG_CIGCTRL_SWRST_RDY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %43

41:                                               ; preds = %29
  %42 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %25

43:                                               ; preds = %40, %25
  %44 = load i32, i32* @FLITE_REG_CIGCTRL_SWRST, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %49 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
