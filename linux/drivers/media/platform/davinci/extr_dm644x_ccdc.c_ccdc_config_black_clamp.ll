; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_config_black_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_config_black_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ccdc_black_clamp = type { i32, i32, i32, i32, i32, i32 }

@CCDC_BLK_DC_SUB_MASK = common dso_local global i32 0, align 4
@CCDC_DCSUB = common dso_local global i32 0, align 4
@ccdc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0AWriting 0x%x to DCSUB...\0A\00", align 1
@CCDC_CLAMP_DEFAULT_VAL = common dso_local global i32 0, align 4
@CCDC_CLAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\0AWriting 0x0000 to CLAMP...\0A\00", align 1
@CCDC_BLK_SGAIN_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_ST_PXL_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_ST_PXL_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_SAMPLE_LINE_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_SAMPLE_LINE_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_SAMPLE_LN_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_SAMPLE_LN_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_CLAMP_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AWriting 0x%x to CLAMP...\0A\00", align 1
@CCDC_DCSUB_DEFAULT_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"\0AWriting 0x00000000 to DCSUB...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdc_black_clamp*)* @ccdc_config_black_clamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_black_clamp(%struct.ccdc_black_clamp* %0) #0 {
  %2 = alloca %struct.ccdc_black_clamp*, align 8
  %3 = alloca i32, align 4
  store %struct.ccdc_black_clamp* %0, %struct.ccdc_black_clamp** %2, align 8
  %4 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %5 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %10 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CCDC_BLK_DC_SUB_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CCDC_DCSUB, align 4
  %16 = call i32 @regw(i32 %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccdc_cfg, i32 0, i32 0), align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CCDC_CLAMP_DEFAULT_VAL, align 4
  %21 = load i32, i32* @CCDC_CLAMP, align 4
  %22 = call i32 @regw(i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccdc_cfg, i32 0, i32 0), align 4
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %68

25:                                               ; preds = %1
  %26 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %27 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CCDC_BLK_SGAIN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %32 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CCDC_BLK_ST_PXL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CCDC_BLK_ST_PXL_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %30, %37
  %39 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %40 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CCDC_BLK_SAMPLE_LINE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @CCDC_BLK_SAMPLE_LINE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %38, %45
  %47 = load %struct.ccdc_black_clamp*, %struct.ccdc_black_clamp** %2, align 8
  %48 = getelementptr inbounds %struct.ccdc_black_clamp, %struct.ccdc_black_clamp* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CCDC_BLK_SAMPLE_LN_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CCDC_BLK_SAMPLE_LN_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %46, %53
  %55 = load i32, i32* @CCDC_BLK_CLAMP_ENABLE, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @CCDC_CLAMP, align 4
  %59 = call i32 @regw(i32 %57, i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccdc_cfg, i32 0, i32 0), align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @CCDC_DCSUB_DEFAULT_VAL, align 4
  %64 = load i32, i32* @CCDC_DCSUB, align 4
  %65 = call i32 @regw(i32 %63, i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccdc_cfg, i32 0, i32 0), align 4
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
