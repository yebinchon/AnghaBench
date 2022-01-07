; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_config_ycbcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_config_ycbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.ccdc_params_ycbcr }
%struct.ccdc_params_ycbcr = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@ccdc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0AStarting ccdc_config_ycbcr...\00", align 1
@CCDC_INPUT_MODE_MASK = common dso_local global i32 0, align 4
@CCDC_INPUT_MODE_SHIFT = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_REC656IF_BT656_EN = common dso_local global i32 0, align 4
@REC656IF = common dso_local global i32 0, align 4
@CCDC_VD_POL_NEGATIVE = common dso_local global i32 0, align 4
@CCDC_FID_POL_MASK = common dso_local global i32 0, align 4
@CCDC_FID_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_HD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_HD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_VD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_DATA_PACK_ENABLE = common dso_local global i32 0, align 4
@MODESET = common dso_local global i32 0, align 4
@CCDC_Y8POS_SHIFT = common dso_local global i32 0, align 4
@CCDC_LATCH_ON_VSYNC_DISABLE = common dso_local global i32 0, align 4
@CCDC_CCDCFG_FIDMD_NO_LATCH_VSYNC = common dso_local global i32 0, align 4
@CCDCFG = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i64 0, align 8
@CCDC_SDOFST_FIELD_INTERLEAVED = common dso_local global i32 0, align 4
@SDOFST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0AEnd of ccdc_config_ycbcr...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ccdc_config_ycbcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_ycbcr() #0 {
  %1 = alloca %struct.ccdc_params_ycbcr*, align 8
  %2 = alloca i32, align 4
  store %struct.ccdc_params_ycbcr* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 1), %struct.ccdc_params_ycbcr** %1, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 0), align 8
  %4 = call i32 @dev_dbg(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @ccdc_restore_defaults()
  %6 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %7 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CCDC_INPUT_MODE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @CCDC_INPUT_MODE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %14 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCDC_FRM_FMT_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CCDC_FRM_FMT_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %12, %19
  store i32 %20, i32* %2, align 4
  %21 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %22 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %0
  %26 = load i32, i32* @CCDC_REC656IF_BT656_EN, align 4
  %27 = load i32, i32* @REC656IF, align 4
  %28 = call i32 @regw(i32 %26, i32 %27)
  %29 = load i32, i32* @CCDC_VD_POL_NEGATIVE, align 4
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %0
  %33 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %34 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CCDC_FID_POL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CCDC_FID_POL_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %41 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CCDC_HD_POL_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CCDC_HD_POL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %39, %46
  %48 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %49 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CCDC_VD_POL_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @CCDC_VD_POL_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %47, %54
  %56 = load i32, i32* %2, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %32, %25
  %59 = load i32, i32* @CCDC_DATA_PACK_ENABLE, align 4
  %60 = load i32, i32* %2, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @MODESET, align 4
  %64 = call i32 @regw(i32 %62, i32 %63)
  %65 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %66 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %65, i32 0, i32 7
  %67 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %68 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ccdc_setwin(%struct.TYPE_3__* %66, i32 %69, i32 2)
  %71 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %72 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CCDC_Y8POS_SHIFT, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %77 = load i32, i32* @CCDC_CCDCFG_FIDMD_NO_LATCH_VSYNC, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %2, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @CCDCFG, align 4
  %83 = call i32 @regw(i32 %81, i32 %82)
  %84 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %85 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %88, 31
  %90 = ashr i32 %89, 5
  %91 = load i32, i32* @HSIZE, align 4
  %92 = call i32 @regw(i32 %90, i32 %91)
  %93 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %94 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %58
  %99 = load i32, i32* @CCDC_SDOFST_FIELD_INTERLEAVED, align 4
  %100 = load i32, i32* @SDOFST, align 4
  %101 = call i32 @regw(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %58
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 0), align 8
  %104 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ccdc_restore_defaults(...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_setwin(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
