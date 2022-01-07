; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_config_ycbcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_config_ycbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.ccdc_params_ycbcr }
%struct.ccdc_params_ycbcr = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@ccdc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0AStarting ccdc_config_ycbcr...\00", align 1
@CCDC_SYN_MODE_INPMOD_MASK = common dso_local global i32 0, align 4
@CCDC_SYN_MODE_INPMOD_SHIFT = common dso_local global i32 0, align 4
@CCDC_SYN_FLDMODE_MASK = common dso_local global i32 0, align 4
@CCDC_SYN_FLDMODE_SHIFT = common dso_local global i32 0, align 4
@CCDC_VDHDEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_WEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_DATA_PACK_ENABLE = common dso_local global i32 0, align 4
@CCDC_REC656IF_BT656_EN = common dso_local global i32 0, align 4
@CCDC_REC656IF = common dso_local global i32 0, align 4
@CCDC_SYN_MODE_VD_POL_NEGATIVE = common dso_local global i32 0, align 4
@VPFE_BT656_10BIT = common dso_local global i64 0, align 8
@CCDC_SYN_MODE_10BITS = common dso_local global i32 0, align 4
@CCDC_SYN_MODE_8BITS = common dso_local global i32 0, align 4
@CCDC_FID_POL_MASK = common dso_local global i32 0, align 4
@CCDC_FID_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_HD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_HD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_VD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_SYN_MODE = common dso_local global i32 0, align 4
@CCDC_CCDCFG_Y8POS_SHIFT = common dso_local global i32 0, align 4
@CCDC_LATCH_ON_VSYNC_DISABLE = common dso_local global i32 0, align 4
@CCDC_CCDCFG_BW656_10BIT = common dso_local global i32 0, align 4
@CCDC_CCDCFG = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i64 0, align 8
@CCDC_SDOFST_FIELD_INTERLEAVED = common dso_local global i32 0, align 4
@CCDC_SDOFST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0AEnd of ccdc_config_ycbcr...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ccdc_config_ycbcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_ycbcr() #0 {
  %1 = alloca %struct.ccdc_params_ycbcr*, align 8
  %2 = alloca i32, align 4
  store %struct.ccdc_params_ycbcr* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 2), %struct.ccdc_params_ycbcr** %1, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 1), align 8
  %4 = call i32 @dev_dbg(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @ccdc_restore_defaults()
  %6 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %7 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CCDC_SYN_MODE_INPMOD_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @CCDC_SYN_MODE_INPMOD_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %14 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCDC_SYN_FLDMODE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CCDC_SYN_FLDMODE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %12, %19
  %21 = load i32, i32* @CCDC_VDHDEN_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CCDC_WEN_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CCDC_DATA_PACK_ENABLE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  %27 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %28 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %0
  %32 = load i32, i32* @CCDC_REC656IF_BT656_EN, align 4
  %33 = load i32, i32* @CCDC_REC656IF, align 4
  %34 = call i32 @regw(i32 %32, i32 %33)
  %35 = load i32, i32* @CCDC_SYN_MODE_VD_POL_NEGATIVE, align 4
  %36 = load i32, i32* %2, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %2, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 0), align 8
  %39 = load i64, i64* @VPFE_BT656_10BIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @CCDC_SYN_MODE_10BITS, align 4
  %43 = load i32, i32* %2, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %31
  %46 = load i32, i32* @CCDC_SYN_MODE_8BITS, align 4
  %47 = load i32, i32* %2, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %76

50:                                               ; preds = %0
  %51 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %52 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CCDC_FID_POL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CCDC_FID_POL_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %59 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CCDC_HD_POL_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CCDC_HD_POL_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %57, %64
  %66 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %67 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CCDC_VD_POL_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CCDC_VD_POL_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %65, %72
  %74 = load i32, i32* %2, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %50, %49
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @CCDC_SYN_MODE, align 4
  %79 = call i32 @regw(i32 %77, i32 %78)
  %80 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %81 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %80, i32 0, i32 7
  %82 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %83 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ccdc_setwin(%struct.TYPE_3__* %81, i32 %84, i32 2)
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 0), align 8
  %87 = load i64, i64* @VPFE_BT656_10BIT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %76
  %90 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %91 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CCDC_CCDCFG_Y8POS_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CCDC_CCDCFG_BW656_10BIT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CCDC_CCDCFG, align 4
  %100 = call i32 @regw(i32 %98, i32 %99)
  br label %111

101:                                              ; preds = %76
  %102 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %103 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CCDC_CCDCFG_Y8POS_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CCDC_CCDCFG, align 4
  %110 = call i32 @regw(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %101, %89
  %112 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %113 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %116, 31
  %118 = and i32 %117, -32
  %119 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %120 = call i32 @regw(i32 %118, i32 %119)
  %121 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %122 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %111
  %127 = load i32, i32* @CCDC_SDOFST_FIELD_INTERLEAVED, align 4
  %128 = load i32, i32* @CCDC_SDOFST, align 4
  %129 = call i32 @regw(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %111
  %131 = call i32 (...) @ccdc_sbl_reset()
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 1), align 8
  %133 = call i32 @dev_dbg(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ccdc_restore_defaults(...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_setwin(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ccdc_sbl_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
