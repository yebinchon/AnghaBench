; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_output_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_output_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64 }
%struct.flite_frame = type { i32 }

@FLITE_REG_CIGCTRL = common dso_local global i64 0, align 8
@FLITE_REG_CIGCTRL_ODMA_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_output_dma(%struct.fimc_lite* %0, %struct.flite_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.fimc_lite*, align 8
  %5 = alloca %struct.flite_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %4, align 8
  store %struct.flite_frame* %1, %struct.flite_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %9 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FLITE_REG_CIGCTRL_ODMA_DISABLE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %22 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  br label %47

27:                                               ; preds = %3
  %28 = load i32, i32* @FLITE_REG_CIGCTRL_ODMA_DISABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %34 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %40 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %41 = call i32 @flite_hw_set_out_order(%struct.fimc_lite* %39, %struct.flite_frame* %40)
  %42 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %43 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %44 = call i32 @flite_hw_set_dma_window(%struct.fimc_lite* %42, %struct.flite_frame* %43)
  %45 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %46 = call i32 @flite_hw_set_pack12(%struct.fimc_lite* %45, i32 0)
  br label %47

47:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @flite_hw_set_out_order(%struct.fimc_lite*, %struct.flite_frame*) #1

declare dso_local i32 @flite_hw_set_dma_window(%struct.fimc_lite*, %struct.flite_frame*) #1

declare dso_local i32 @flite_hw_set_pack12(%struct.fimc_lite*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
