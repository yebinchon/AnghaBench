; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_set_color_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_set_color_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_4__, %struct.fimc_effect }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fimc_effect = type { i32, i32, i8* }

@FIMC_REG_CIIMGEFF_FIN_BYPASS = common dso_local global i8* null, align 8
@FIMC_REG_CIIMGEFF_FIN_ARBITRARY = common dso_local global i8* null, align 8
@FIMC_REG_CIIMGEFF_FIN_NEGATIVE = common dso_local global i8* null, align 8
@FIMC_REG_CIIMGEFF_FIN_EMBOSSING = common dso_local global i8* null, align 8
@FIMC_REG_CIIMGEFF_FIN_ARTFREEZE = common dso_local global i8* null, align 8
@FIMC_REG_CIIMGEFF_FIN_SILHOUETTE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*, i32)* @fimc_set_color_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_set_color_effect(%struct.fimc_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_effect*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 1
  store %struct.fimc_effect* %8, %struct.fimc_effect** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %68 [
    i32 131, label %10
    i32 134, label %14
    i32 130, label %22
    i32 132, label %30
    i32 133, label %34
    i32 135, label %38
    i32 128, label %42
    i32 129, label %46
  ]

10:                                               ; preds = %2
  %11 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_BYPASS, align 8
  %12 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %13 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  br label %71

14:                                               ; preds = %2
  %15 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_ARBITRARY, align 8
  %16 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %17 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %19 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %18, i32 0, i32 0
  store i32 128, i32* %19, align 8
  %20 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %21 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %20, i32 0, i32 1
  store i32 128, i32* %21, align 4
  br label %71

22:                                               ; preds = %2
  %23 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_ARBITRARY, align 8
  %24 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %25 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %27 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %26, i32 0, i32 0
  store i32 115, i32* %27, align 8
  %28 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %29 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %28, i32 0, i32 1
  store i32 145, i32* %29, align 4
  br label %71

30:                                               ; preds = %2
  %31 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_NEGATIVE, align 8
  %32 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %33 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %71

34:                                               ; preds = %2
  %35 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_EMBOSSING, align 8
  %36 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %37 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %71

38:                                               ; preds = %2
  %39 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_ARTFREEZE, align 8
  %40 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %41 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %71

42:                                               ; preds = %2
  %43 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_SILHOUETTE, align 8
  %44 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %45 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %71

46:                                               ; preds = %2
  %47 = load i8*, i8** @FIMC_REG_CIIMGEFF_FIN_ARBITRARY, align 8
  %48 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %49 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %58 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = load %struct.fimc_effect*, %struct.fimc_effect** %6, align 8
  %67 = getelementptr inbounds %struct.fimc_effect, %struct.fimc_effect* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %46, %42, %38, %34, %30, %22, %14, %10
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
