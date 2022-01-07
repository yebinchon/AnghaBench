; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_h3a_af_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_h3a_af_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32, i64, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.omap3isp_h3a_af_config = type { i32, i64, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@OMAP3_ISP_IOMEM_H3A = common dso_local global i32 0, align 4
@ISPH3A_AFBUFST = common dso_local global i32 0, align 4
@AF_PAXW_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AFPAX1 = common dso_local global i32 0, align 4
@AF_LINE_INCR_SHIFT = common dso_local global i32 0, align 4
@AF_VT_COUNT_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AFPAX2 = common dso_local global i32 0, align 4
@AF_HZ_START_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_AFPAXSTART = common dso_local global i32 0, align 4
@ISPH3A_AFIIRSH = common dso_local global i32 0, align 4
@ISPH3A_AFCOEF010 = common dso_local global i32 0, align 4
@ISPH3A_AFCOEF110 = common dso_local global i32 0, align 4
@AF_COEF_SHIFT = common dso_local global i32 0, align 4
@AFCOEF_OFFSET = common dso_local global i64 0, align 8
@ISPH3A_AFCOEF0010 = common dso_local global i32 0, align 4
@ISPH3A_AFCOEF1010 = common dso_local global i32 0, align 4
@AF_RGBPOS_SHIFT = common dso_local global i32 0, align 4
@OMAP3ISP_AF_MODE_PEAK = common dso_local global i64 0, align 8
@AF_FVMODE = common dso_local global i32 0, align 4
@AF_ALAW_EN = common dso_local global i32 0, align 4
@AF_MED_EN = common dso_local global i32 0, align 4
@AF_MED_TH_SHIFT = common dso_local global i32 0, align 4
@ISPH3A_PCR = common dso_local global i32 0, align 4
@AF_PCR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i8*)* @h3a_af_setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3a_af_setup_regs(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap3isp_h3a_af_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.omap3isp_h3a_af_config*
  store %struct.omap3isp_h3a_af_config* %15, %struct.omap3isp_h3a_af_config** %5, align 8
  %16 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %17 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %295

22:                                               ; preds = %2
  %23 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %24 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %27 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %26, i32 0, i32 6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %32 = load i32, i32* @ISPH3A_AFBUFST, align 4
  %33 = call i32 @isp_reg_writel(i32 %25, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %35 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %22
  br label %295

39:                                               ; preds = %22
  %40 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %41 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 1
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @AF_PAXW_SHIFT, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %49 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 1
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %57 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %61 = load i32, i32* @ISPH3A_AFPAX1, align 4
  %62 = call i32 @isp_reg_writel(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %64 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 1
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @AF_LINE_INCR_SHIFT, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %72 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @AF_VT_COUNT_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %81 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %88 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %92 = load i32, i32* @ISPH3A_AFPAX2, align 4
  %93 = call i32 @isp_reg_writel(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %95 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AF_HZ_START_SHIFT, align 4
  %99 = shl i32 %97, %98
  store i32 %99, i32* %9, align 4
  %100 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %101 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %107 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %111 = load i32, i32* @ISPH3A_AFPAXSTART, align 4
  %112 = call i32 @isp_reg_writel(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %114 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %117 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %121 = load i32, i32* @ISPH3A_AFIIRSH, align 4
  %122 = call i32 @isp_reg_writel(i32 %115, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @ISPH3A_AFCOEF010, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* @ISPH3A_AFCOEF110, align 4
  store i32 %124, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %199, %39
  %126 = load i32, i32* %13, align 4
  %127 = icmp sle i32 %126, 8
  br i1 %127, label %128, label %202

128:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  %129 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %130 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %140 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AF_COEF_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %153 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @isp_reg_writel(i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i64, i64* @AFCOEF_OFFSET, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %164 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %165 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %10, align 4
  %174 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %175 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @AF_COEF_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %10, align 4
  %187 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %188 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @isp_reg_writel(i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i64, i64* @AFCOEF_OFFSET, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %128
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %13, align 4
  br label %125

202:                                              ; preds = %125
  %203 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %204 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %207 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 10
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %213 = load i32, i32* @ISPH3A_AFCOEF0010, align 4
  %214 = call i32 @isp_reg_writel(i32 %205, i32 %211, i32 %212, i32 %213)
  %215 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %216 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %219 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 10
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %225 = load i32, i32* @ISPH3A_AFCOEF1010, align 4
  %226 = call i32 @isp_reg_writel(i32 %217, i32 %223, i32 %224, i32 %225)
  %227 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %228 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @AF_RGBPOS_SHIFT, align 4
  %231 = shl i32 %229, %230
  store i32 %231, i32* %6, align 4
  %232 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %233 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @OMAP3ISP_AF_MODE_PEAK, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %202
  %238 = load i32, i32* @AF_FVMODE, align 4
  %239 = load i32, i32* %6, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %237, %202
  %242 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %243 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* @AF_ALAW_EN, align 4
  %248 = load i32, i32* %6, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %246, %241
  %251 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %252 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %250
  %257 = load i32, i32* @AF_MED_EN, align 4
  %258 = load i32, i32* %6, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %6, align 4
  %260 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %261 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @AF_MED_TH_SHIFT, align 4
  %265 = shl i32 %263, %264
  %266 = load i32, i32* %6, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %6, align 4
  br label %268

268:                                              ; preds = %256, %250
  %269 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %270 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @OMAP3_ISP_IOMEM_H3A, align 4
  %273 = load i32, i32* @ISPH3A_PCR, align 4
  %274 = load i32, i32* @AF_PCR_MASK, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @isp_reg_clr_set(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %278 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %277, i32 0, i32 4
  store i64 0, i64* %278, align 8
  %279 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %280 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %283 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %281
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 8
  %288 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %289 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %288, i32 0, i32 2
  store i64 0, i64* %289, align 8
  %290 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %291 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %294 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %268, %38, %21
  ret void
}

declare dso_local i32 @isp_reg_writel(i32, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
