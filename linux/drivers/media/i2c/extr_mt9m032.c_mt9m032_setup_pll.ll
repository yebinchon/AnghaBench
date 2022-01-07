; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_setup_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_setup_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aptina_pll_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt9m032 = type { i32, %struct.mt9m032_platform_data*, i32 }
%struct.mt9m032_platform_data = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.aptina_pll = type { i32, i32, i32, i32, i32 }

@mt9m032_setup_pll.limits = internal constant %struct.aptina_pll_limits { i32 8000000, i32 16500000, i32 2000000, i32 24000000, i32 322000000, i32 693000000, i32 99000000, i32 1, i32 64, i32 16, i32 255, i32 6, i32 7 }, align 4
@MT9M032_PLL_CONFIG1 = common dso_local global i32 0, align 4
@MT9M032_PLL_CONFIG1_MUL_SHIFT = common dso_local global i32 0, align 4
@MT9M032_PLL_CONFIG1_PREDIV_MASK = common dso_local global i32 0, align 4
@MT9P031_PLL_CONTROL = common dso_local global i32 0, align 4
@MT9P031_PLL_CONTROL_PWRON = common dso_local global i32 0, align 4
@MT9P031_PLL_CONTROL_USEPLL = common dso_local global i32 0, align 4
@MT9M032_READ_MODE1 = common dso_local global i32 0, align 4
@MT9M032_READ_MODE1_STROBE_START_EXP = common dso_local global i32 0, align 4
@MT9M032_READ_MODE1_STROBE_END_SHUTTER = common dso_local global i32 0, align 4
@MT9M032_FORMATTER1_PLL_P1_6 = common dso_local global i32 0, align 4
@MT9M032_FORMATTER1_PARALLEL = common dso_local global i32 0, align 4
@MT9M032_FORMATTER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m032*)* @mt9m032_setup_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m032_setup_pll(%struct.mt9m032* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9m032*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.mt9m032_platform_data*, align 8
  %6 = alloca %struct.aptina_pll, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt9m032* %0, %struct.mt9m032** %3, align 8
  %9 = load %struct.mt9m032*, %struct.mt9m032** %3, align 8
  %10 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %9, i32 0, i32 2
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.mt9m032*, %struct.mt9m032** %3, align 8
  %13 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %12, i32 0, i32 1
  %14 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %13, align 8
  store %struct.mt9m032_platform_data* %14, %struct.mt9m032_platform_data** %5, align 8
  %15 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %6, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @aptina_pll_calculate(i32* %24, %struct.aptina_pll_limits* @mt9m032_setup_pll.limits, %struct.aptina_pll* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %90

30:                                               ; preds = %1
  %31 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mt9m032*, %struct.mt9m032** %3, align 8
  %35 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @MT9M032_PLL_CONFIG1, align 4
  %38 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MT9M032_PLL_CONFIG1_MUL_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @MT9M032_PLL_CONFIG1_PREDIV_MASK, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %41, %46
  %48 = call i32 @mt9m032_write(%struct.i2c_client* %36, i32 %37, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %30
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @MT9P031_PLL_CONTROL, align 4
  %54 = load i32, i32* @MT9P031_PLL_CONTROL_PWRON, align 4
  %55 = load i32, i32* @MT9P031_PLL_CONTROL_USEPLL, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mt9m032_write(%struct.i2c_client* %52, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %30
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @MT9M032_READ_MODE1, align 4
  %64 = load i32, i32* @MT9M032_READ_MODE1_STROBE_START_EXP, align 4
  %65 = or i32 32768, %64
  %66 = load i32, i32* @MT9M032_READ_MODE1_STROBE_END_SHUTTER, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @mt9m032_write(%struct.i2c_client* %62, i32 %63, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.aptina_pll, %struct.aptina_pll* %6, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @MT9M032_FORMATTER1_PLL_P1_6, align 4
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load i32, i32* @MT9M032_FORMATTER1_PARALLEL, align 4
  %82 = or i32 %80, %81
  %83 = or i32 %82, 30
  store i32 %83, i32* %7, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = load i32, i32* @MT9M032_FORMATTER1, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @mt9m032_write(%struct.i2c_client* %84, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79, %69
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %28
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @aptina_pll_calculate(i32*, %struct.aptina_pll_limits*, %struct.aptina_pll*) #1

declare dso_local i32 @mt9m032_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
