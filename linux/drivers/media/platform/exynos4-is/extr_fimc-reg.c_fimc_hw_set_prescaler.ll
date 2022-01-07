; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_scaler, %struct.fimc_dev* }
%struct.fimc_scaler = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_dev = type { i64 }

@FIMC_REG_CISCPRERATIO = common dso_local global i64 0, align 8
@FIMC_REG_CISCPREDST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_prescaler(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_scaler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 1
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  store %struct.fimc_dev* %9, %struct.fimc_dev** %3, align 8
  %10 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %10, i32 0, i32 0
  store %struct.fimc_scaler* %11, %struct.fimc_scaler** %4, align 8
  %12 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = sub nsw i32 10, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 28
  store i32 %21, i32* %5, align 4
  %22 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FIMC_REG_CISCPRERATIO, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %40 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %44 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %49 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FIMC_REG_CISCPREDST, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
