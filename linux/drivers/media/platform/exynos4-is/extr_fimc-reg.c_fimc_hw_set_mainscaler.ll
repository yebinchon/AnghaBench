; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_mainscaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_mainscaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_scaler, %struct.fimc_dev* }
%struct.fimc_scaler = type { i32, i32 }
%struct.fimc_dev = type { i64, %struct.fimc_variant* }
%struct.fimc_variant = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"main_hratio= 0x%X  main_vratio= 0x%X\00", align 1
@FIMC_REG_CISCCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_MHRATIO_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CISCCTRL_MVRATIO_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIEXTEN = common dso_local global i64 0, align 8
@FIMC_REG_CIEXTEN_MVRATIO_EXT_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIEXTEN_MHRATIO_EXT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_mainscaler(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_variant*, align 8
  %5 = alloca %struct.fimc_scaler*, align 8
  %6 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 1
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  store %struct.fimc_dev* %9, %struct.fimc_dev** %3, align 8
  %10 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %10, i32 0, i32 1
  %12 = load %struct.fimc_variant*, %struct.fimc_variant** %11, align 8
  store %struct.fimc_variant* %12, %struct.fimc_variant** %4, align 8
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %13, i32 0, i32 0
  store %struct.fimc_scaler* %14, %struct.fimc_scaler** %5, align 8
  %15 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %16 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %19 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %23 = call i32 @fimc_hw_set_scaler(%struct.fimc_ctx* %22)
  %24 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %25 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @FIMC_REG_CISCCTRL_MHRATIO_MASK, align 4
  %31 = load i32, i32* @FIMC_REG_CISCCTRL_MVRATIO_MASK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.fimc_variant*, %struct.fimc_variant** %4, align 8
  %37 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %1
  %41 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %42 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FIMC_REG_CISCCTRL_MHRATIO_EXT(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %48 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FIMC_REG_CISCCTRL_MVRATIO_EXT(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %55 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %61 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FIMC_REG_CIEXTEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @FIMC_REG_CIEXTEN_MVRATIO_EXT_MASK, align 4
  %67 = load i32, i32* @FIMC_REG_CIEXTEN_MHRATIO_EXT_MASK, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %73 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @FIMC_REG_CIEXTEN_MHRATIO_EXT(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %79 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @FIMC_REG_CIEXTEN_MVRATIO_EXT(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %86 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @FIMC_REG_CIEXTEN, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  br label %111

91:                                               ; preds = %1
  %92 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %93 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FIMC_REG_CISCCTRL_MHRATIO(i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.fimc_scaler*, %struct.fimc_scaler** %5, align 8
  %99 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @FIMC_REG_CISCCTRL_MVRATIO(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %106 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  br label %111

111:                                              ; preds = %91, %40
  ret void
}

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @fimc_hw_set_scaler(%struct.fimc_ctx*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIMC_REG_CISCCTRL_MHRATIO_EXT(i32) #1

declare dso_local i32 @FIMC_REG_CISCCTRL_MVRATIO_EXT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIMC_REG_CIEXTEN_MHRATIO_EXT(i32) #1

declare dso_local i32 @FIMC_REG_CIEXTEN_MVRATIO_EXT(i32) #1

declare dso_local i32 @FIMC_REG_CISCCTRL_MHRATIO(i32) #1

declare dso_local i32 @FIMC_REG_CISCCTRL_MVRATIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
