; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_config_black_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_config_black_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_black_clamp = type { i32, i32, i32, i32, i32 }

@CCDC_BLK_DC_SUB_MASK = common dso_local global i32 0, align 4
@DCSUB = common dso_local global i32 0, align 4
@CLAMP = common dso_local global i32 0, align 4
@CCDC_BLK_ST_PXL_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_SAMPLE_LN_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_SAMPLE_LN_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_CLAMP_ENABLE = common dso_local global i32 0, align 4
@CCDC_NUM_LINE_CALC_MASK = common dso_local global i32 0, align 4
@CCDC_NUM_LINE_CALC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdc_black_clamp*)* @ccdc_config_black_clamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_black_clamp(%struct.ccdc_black_clamp* %0) #0 {
  %2 = alloca %struct.ccdc_black_clamp*, align 8
  %3 = alloca i32, align 4
  store %struct.ccdc_black_clamp* %0, %struct.ccdc_black_clamp** %2, align 8
  %4 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %5 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %10 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CCDC_BLK_DC_SUB_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @DCSUB, align 4
  %15 = call i32 @regw(i32 %13, i32 %14)
  %16 = load i32, i32* @CLAMP, align 4
  %17 = call i32 @regw(i32 0, i32 %16)
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %20 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CCDC_BLK_ST_PXL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %25 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CCDC_BLK_SAMPLE_LN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CCDC_BLK_SAMPLE_LN_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %23, %30
  %32 = load i32, i32* @CCDC_BLK_CLAMP_ENABLE, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CLAMP, align 4
  %36 = call i32 @regw(i32 %34, i32 %35)
  %37 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %38 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CCDC_NUM_LINE_CALC_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CCDC_NUM_LINE_CALC_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @DCSUB, align 4
  %46 = call i32 @regw(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
