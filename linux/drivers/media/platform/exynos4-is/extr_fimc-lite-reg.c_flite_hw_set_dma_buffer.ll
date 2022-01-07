; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flite_buffer = type { i32, i32 }

@FLITE_REG_CIOSA = common dso_local global i64 0, align 8
@FLITE_REG_CIFCNTSEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_dma_buffer(%struct.fimc_lite* %0, %struct.flite_buffer* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.flite_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.flite_buffer* %1, %struct.flite_buffer** %4, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.flite_buffer*, %struct.flite_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.flite_buffer*, %struct.flite_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FLITE_REG_CIOSA, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  br label %43

31:                                               ; preds = %18
  %32 = load %struct.flite_buffer*, %struct.flite_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %36 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 %38, 1
  %40 = call i64 @FLITE_REG_CIOSAN(i32 %39)
  %41 = add nsw i64 %37, %40
  %42 = call i32 @writel(i32 %34, i64 %41)
  br label %43

43:                                               ; preds = %31, %21
  %44 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %45 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FLITE_REG_CIFCNTSEQ, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %56 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FLITE_REG_CIFCNTSEQ, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @FLITE_REG_CIOSAN(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
