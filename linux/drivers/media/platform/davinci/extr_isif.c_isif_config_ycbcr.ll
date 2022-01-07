; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_ycbcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_ycbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.isif_ycbcr_config }
%struct.isif_ycbcr_config = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@isif_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0AStarting isif_config_ycbcr...\00", align 1
@ISIF_INPUT_SHIFT = common dso_local global i32 0, align 4
@ISIF_FRM_FMT_SHIFT = common dso_local global i32 0, align 4
@ISIF_FID_POL_SHIFT = common dso_local global i32 0, align 4
@ISIF_HD_POL_SHIFT = common dso_local global i32 0, align 4
@ISIF_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_PIXFMT_YCBCR_8BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid pix_fmt(input mode)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VPFE_PINPOL_NEGATIVE = common dso_local global i32 0, align 4
@REC656IF = common dso_local global i32 0, align 4
@ISIF_DATA_PACK8 = common dso_local global i32 0, align 4
@ISIF_YCINSWP_YCBCR = common dso_local global i32 0, align 4
@ISIF_BW656_ENABLE = common dso_local global i32 0, align 4
@CCDC_PIXFMT_YCBCR_16BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid interface type\0A\00", align 1
@MODESET = common dso_local global i32 0, align 4
@ISIF_PIX_ORDER_SHIFT = common dso_local global i32 0, align 4
@CCDCFG = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i64 0, align 8
@SDOFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isif_config_ycbcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_config_ycbcr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.isif_ycbcr_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isif_ycbcr_config* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 2), %struct.isif_ycbcr_config** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %9 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ISIF_INPUT_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %7, %12
  %14 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %15 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISIF_FRM_FMT_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %13, %18
  %20 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %21 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ISIF_FID_POL_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %27 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ISIF_HD_POL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %33 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ISIF_VD_POL_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 0), align 8
  switch i32 %38, label %128 [
    i32 131, label %39
    i32 130, label %63
    i32 132, label %84
    i32 128, label %98
    i32 129, label %116
  ]

39:                                               ; preds = %0
  %40 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %41 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CCDC_PIXFMT_YCBCR_8BIT, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %1, align 4
  br label %192

50:                                               ; preds = %39
  %51 = load i32, i32* @VPFE_PINPOL_NEGATIVE, align 4
  %52 = load i32, i32* @ISIF_VD_POL_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @REC656IF, align 4
  %57 = call i32 @regw(i32 3, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ISIF_DATA_PACK8, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ISIF_YCINSWP_YCBCR, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %4, align 4
  br label %133

63:                                               ; preds = %0
  %64 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %65 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CCDC_PIXFMT_YCBCR_8BIT, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %1, align 4
  br label %192

74:                                               ; preds = %63
  %75 = load i32, i32* @REC656IF, align 4
  %76 = call i32 @regw(i32 3, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @ISIF_DATA_PACK8, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ISIF_YCINSWP_YCBCR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @ISIF_BW656_ENABLE, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %4, align 4
  br label %133

84:                                               ; preds = %0
  %85 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %86 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CCDC_PIXFMT_YCBCR_16BIT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %1, align 4
  br label %192

95:                                               ; preds = %84
  %96 = load i32, i32* @REC656IF, align 4
  %97 = call i32 @regw(i32 3, i32 %96)
  br label %133

98:                                               ; preds = %0
  %99 = load i32, i32* @ISIF_DATA_PACK8, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @ISIF_YCINSWP_YCBCR, align 4
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %106 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CCDC_PIXFMT_YCBCR_8BIT, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %112 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %1, align 4
  br label %192

115:                                              ; preds = %98
  br label %133

116:                                              ; preds = %0
  %117 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %118 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CCDC_PIXFMT_YCBCR_16BIT, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %124 = call i32 @dev_dbg(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %1, align 4
  br label %192

127:                                              ; preds = %116
  br label %133

128:                                              ; preds = %0
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1), align 4
  %130 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %1, align 4
  br label %192

133:                                              ; preds = %127, %115, %95, %74, %50
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @MODESET, align 4
  %136 = call i32 @regw(i32 %134, i32 %135)
  %137 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %138 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ISIF_PIX_ORDER_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @CCDCFG, align 4
  %146 = call i32 @regw(i32 %144, i32 %145)
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 0), align 8
  %148 = icmp eq i32 %147, 132
  br i1 %148, label %152, label %149

149:                                              ; preds = %133
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 0), align 8
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %152, label %159

152:                                              ; preds = %149, %133
  %153 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %154 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %153, i32 0, i32 7
  %155 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %156 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @isif_setwin(%struct.TYPE_3__* %154, i32 %157, i32 1)
  br label %166

159:                                              ; preds = %149
  %160 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %161 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %160, i32 0, i32 7
  %162 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %163 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @isif_setwin(%struct.TYPE_3__* %161, i32 %164, i32 2)
  br label %166

166:                                              ; preds = %159, %152
  %167 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %168 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %170, 2
  %172 = add nsw i32 %171, 31
  %173 = and i32 %172, -32
  %174 = lshr i32 %173, 5
  %175 = load i32, i32* @HSIZE, align 4
  %176 = call i32 @regw(i32 %174, i32 %175)
  %177 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %178 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %166
  %183 = load %struct.isif_ycbcr_config*, %struct.isif_ycbcr_config** %2, align 8
  %184 = getelementptr inbounds %struct.isif_ycbcr_config, %struct.isif_ycbcr_config* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* @SDOFST, align 4
  %190 = call i32 @regw(i32 585, i32 %189)
  br label %191

191:                                              ; preds = %188, %182, %166
  store i32 0, i32* %1, align 4
  br label %192

192:                                              ; preds = %191, %128, %122, %110, %90, %69, %45
  %193 = load i32, i32* %1, align 4
  ret i32 %193
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @isif_setwin(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
