; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i64, %struct.fimc_dev* }
%struct.fimc_dev = type { i64 }

@FIMC_REG_CITRGFMT = common dso_local global i64 0, align 8
@FIMC_REG_CITRGFMT_INROT90 = common dso_local global i32 0, align 4
@FIMC_REG_CITRGFMT_OUTROT90 = common dso_local global i32 0, align 4
@FIMC_REG_CITRGFMT_FLIP_180 = common dso_local global i32 0, align 4
@FIMC_IO_LCDFIFO = common dso_local global i64 0, align 8
@FIMC_IO_DMA = common dso_local global i64 0, align 8
@FIMC_REG_MSCTRL = common dso_local global i64 0, align 8
@FIMC_REG_MSCTRL_FLIP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_rotation(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_dev*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %6 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %6, i32 0, i32 2
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  store %struct.fimc_dev* %8, %struct.fimc_dev** %5, align 8
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FIMC_REG_CITRGFMT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @FIMC_REG_CITRGFMT_INROT90, align 4
  %16 = load i32, i32* @FIMC_REG_CITRGFMT_OUTROT90, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FIMC_REG_CITRGFMT_FLIP_180, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 90
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 270
  br i1 %31, label %32, label %47

32:                                               ; preds = %27, %1
  %33 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FIMC_IO_LCDFIFO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @FIMC_REG_CITRGFMT_INROT90, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @FIMC_REG_CITRGFMT_OUTROT90, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FIMC_IO_DMA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %55 = call i32 @fimc_hw_get_target_flip(%struct.fimc_ctx* %54)
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %60 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FIMC_REG_CITRGFMT, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  br label %87

65:                                               ; preds = %47
  %66 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %67 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FIMC_REG_MSCTRL, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @FIMC_REG_MSCTRL_FLIP_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %77 = call i32 @fimc_hw_get_in_flip(%struct.fimc_ctx* %76)
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %82 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FIMC_REG_MSCTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %65, %53
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @fimc_hw_get_target_flip(%struct.fimc_ctx*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fimc_hw_get_in_flip(%struct.fimc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
