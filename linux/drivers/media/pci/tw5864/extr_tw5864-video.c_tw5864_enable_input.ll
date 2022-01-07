; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_enable_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_enable_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_input = type { i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.tw5864_dev* }
%struct.tw5864_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Enabling channel %d\0A\00", align 1
@lambda_lookup_table = common dso_local global i32* null, align 8
@intra4x4_lambda3 = common dso_local global i32* null, align 8
@TW5864_EMU_EN_LPF = common dso_local global i32 0, align 4
@TW5864_EMU_EN_BHOST = common dso_local global i32 0, align 4
@TW5864_EMU_EN_SEN = common dso_local global i32 0, align 4
@TW5864_EMU_EN_ME = common dso_local global i32 0, align 4
@TW5864_EMU_EN_DDR = common dso_local global i32 0, align 4
@TW5864_DSP_CHROM_SW = common dso_local global i32 0, align 4
@TW5864_DSP_MB_DELAY = common dso_local global i32 0, align 4
@STD_NTSC = common dso_local global i64 0, align 8
@TW5864_CIF_MAP_MD = common dso_local global i32 0, align 4
@TW5864_HD1_MAP_MD = common dso_local global i32 0, align 4
@TW5864_DSP_FRAME_TYPE_D1 = common dso_local global i32 0, align 4
@TW5864_DI_EN = common dso_local global i32 0, align 4
@TW5864_DSP_INTER_ST = common dso_local global i32 0, align 4
@TW5864_FULL_HALF_FLAG = common dso_local global i32 0, align 4
@TW5864_INDIR_CROP_ETC = common dso_local global i32 0, align 4
@TW5864_INDIR_CROP_ETC_CROP_EN = common dso_local global i32 0, align 4
@TW5864_DSP_PIC_MAX_MB = common dso_local global i32 0, align 4
@TW5864_H264EN_CH_DNS = common dso_local global i32 0, align 4
@TW5864_H264EN_CH_FMT_REG1 = common dso_local global i32 0, align 4
@TW5864_H264EN_RATE_MAX_LINE_REG1 = common dso_local global i32 0, align 4
@TW5864_H264EN_RATE_MAX_LINE_REG2 = common dso_local global i32 0, align 4
@TW5864_FRAME_BUS1 = common dso_local global i32 0, align 4
@TW5864_FRAME_BUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw5864_input*)* @tw5864_enable_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_enable_input(%struct.tw5864_input* %0) #0 {
  %2 = alloca %struct.tw5864_input*, align 8
  %3 = alloca %struct.tw5864_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tw5864_input* %0, %struct.tw5864_input** %2, align 8
  %13 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %14 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %13, i32 0, i32 17
  %15 = load %struct.tw5864_dev*, %struct.tw5864_dev** %14, align 8
  store %struct.tw5864_dev* %15, %struct.tw5864_dev** %3, align 8
  %16 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %17 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  store i32 720, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %20 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %26 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %25, i32 0, i32 16
  store i64 0, i64* %26, align 8
  %27 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %28 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %27, i32 0, i32 15
  store i64 0, i64* %28, align 8
  %29 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %30 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %29, i32 0, i32 14
  store i64 0, i64* %30, align 8
  %31 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %32 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %35 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** @lambda_lookup_table, align 8
  %37 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %38 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %43 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %42, i32 0, i32 13
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** @intra4x4_lambda3, align 8
  %45 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %46 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %51 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @TW5864_EMU_EN_LPF, align 4
  %53 = load i32, i32* @TW5864_EMU_EN_BHOST, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TW5864_EMU_EN_SEN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TW5864_EMU_EN_ME, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @TW5864_EMU_EN_DDR, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %62 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TW5864_DSP_CHROM_SW, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @TW5864_DSP_MB_DELAY, align 4
  %67 = and i32 2560, %66
  %68 = or i32 %65, %67
  %69 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %70 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %72 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %71, i32 0, i32 5
  store i32 130, i32* %72, align 8
  %73 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %74 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STD_NTSC, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 480, i32 576
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %82 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %85 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %87 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %86, i32 0, i32 9
  store i32 4, i32* %87, align 8
  %88 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %89 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %191 [
    i32 130, label %91
    i32 129, label %117
    i32 131, label %145
    i32 128, label %168
  ]

91:                                               ; preds = %1
  store i32 719, i32* %8, align 4
  %92 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %93 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  store i32 28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %96 = load i32, i32* @TW5864_CIF_MAP_MD, align 4
  %97 = load i32, i32* @TW5864_HD1_MAP_MD, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %100 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @TW5864_DSP_FRAME_TYPE_D1, align 4
  %104 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %105 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @TW5864_DI_EN, align 4
  %109 = load i32, i32* @TW5864_DSP_INTER_ST, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %112 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @TW5864_FULL_HALF_FLAG, align 4
  %114 = load i32, i32* %4, align 4
  %115 = shl i32 1, %114
  %116 = call i32 @tw_setl(i32 %113, i32 %115)
  br label %191

117:                                              ; preds = %1
  %118 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %119 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %119, align 4
  %122 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %123 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %123, align 8
  store i32 719, i32* %8, align 4
  %126 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %127 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 2
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  store i32 28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %131 = load i32, i32* @TW5864_HD1_MAP_MD, align 4
  %132 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %133 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @TW5864_DSP_FRAME_TYPE_D1, align 4
  %137 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %138 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @TW5864_FULL_HALF_FLAG, align 4
  %142 = load i32, i32* %4, align 4
  %143 = shl i32 1, %142
  %144 = call i32 @tw_clearl(i32 %141, i32 %143)
  br label %191

145:                                              ; preds = %1
  %146 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %147 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 4
  store i32 %149, i32* %147, align 4
  %150 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %151 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = sdiv i32 %152, 2
  store i32 %153, i32* %151, align 8
  store i32 351, i32* %8, align 4
  %154 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %155 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %156, 2
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  store i32 7, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %159 = load i32, i32* @TW5864_CIF_MAP_MD, align 4
  %160 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %161 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* @TW5864_FULL_HALF_FLAG, align 4
  %165 = load i32, i32* %4, align 4
  %166 = shl i32 1, %165
  %167 = call i32 @tw_clearl(i32 %164, i32 %166)
  br label %191

168:                                              ; preds = %1
  %169 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %170 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, 4
  store i32 %172, i32* %170, align 4
  %173 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %174 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = sdiv i32 %175, 4
  store i32 %176, i32* %174, align 8
  store i32 351, i32* %8, align 4
  %177 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %178 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 2
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  store i32 7, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %182 = load i32, i32* @TW5864_CIF_MAP_MD, align 4
  %183 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %184 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* @TW5864_FULL_HALF_FLAG, align 4
  %188 = load i32, i32* %4, align 4
  %189 = shl i32 1, %188
  %190 = call i32 @tw_clearl(i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %1, %168, %145, %117, %91
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @TW5864_INDIR_IN_PIC_WIDTH(i32 %192)
  %194 = load i32, i32* %6, align 4
  %195 = sdiv i32 %194, 4
  %196 = call i32 @tw_indir_writeb(i32 %193, i32 %195)
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @TW5864_INDIR_IN_PIC_HEIGHT(i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = sdiv i32 %199, 4
  %201 = call i32 @tw_indir_writeb(i32 %198, i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @TW5864_INDIR_OUT_PIC_WIDTH(i32 %202)
  %204 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %205 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = sdiv i32 %206, 4
  %208 = call i32 @tw_indir_writeb(i32 %203, i32 %207)
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @TW5864_INDIR_OUT_PIC_HEIGHT(i32 %209)
  %211 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %212 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %213, 4
  %215 = call i32 @tw_indir_writeb(i32 %210, i32 %214)
  %216 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %217 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %216, i32 0, i32 7
  store i32 704, i32* %217, align 8
  %218 = load i32, i32* @TW5864_INDIR_CROP_ETC, align 4
  %219 = load i32, i32* @TW5864_INDIR_CROP_ETC, align 4
  %220 = call i32 @tw_indir_readb(i32 %219)
  %221 = load i32, i32* @TW5864_INDIR_CROP_ETC_CROP_EN, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @tw_indir_writeb(i32 %218, i32 %222)
  %224 = load i32, i32* @TW5864_DSP_PIC_MAX_MB, align 4
  %225 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %226 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = sdiv i32 %227, 16
  %229 = shl i32 %228, 8
  %230 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %231 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = sdiv i32 %232, 16
  %234 = or i32 %229, %233
  %235 = call i32 @tw_writel(i32 %224, i32 %234)
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @TW5864_FRAME_WIDTH_BUS_A(i32 %236)
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @tw_writel(i32 %237, i32 %238)
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @TW5864_FRAME_WIDTH_BUS_B(i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @tw_writel(i32 %241, i32 %242)
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @TW5864_FRAME_HEIGHT_BUS_A(i32 %244)
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @tw_writel(i32 %245, i32 %246)
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @TW5864_FRAME_HEIGHT_BUS_B(i32 %248)
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  %252 = sdiv i32 %251, 2
  %253 = sub nsw i32 %252, 1
  %254 = call i32 @tw_writel(i32 %249, i32 %253)
  %255 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %256 = call i32 @tw5864_frame_interval_set(%struct.tw5864_input* %255)
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %191
  %260 = load i32, i32* @TW5864_H264EN_CH_DNS, align 4
  %261 = load i32, i32* %4, align 4
  %262 = shl i32 1, %261
  %263 = call i32 @tw_setl(i32 %260, i32 %262)
  br label %264

264:                                              ; preds = %259, %191
  %265 = load i32, i32* @TW5864_H264EN_CH_FMT_REG1, align 4
  %266 = load i32, i32* %4, align 4
  %267 = mul nsw i32 2, %266
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @tw_mask_shift_writel(i32 %265, i32 3, i32 %267, i32 %268)
  %270 = load i32, i32* %4, align 4
  %271 = icmp slt i32 %270, 2
  br i1 %271, label %272, label %274

272:                                              ; preds = %264
  %273 = load i32, i32* @TW5864_H264EN_RATE_MAX_LINE_REG1, align 4
  br label %276

274:                                              ; preds = %264
  %275 = load i32, i32* @TW5864_H264EN_RATE_MAX_LINE_REG2, align 4
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i32 [ %273, %272 ], [ %275, %274 ]
  %278 = load i32, i32* %4, align 4
  %279 = srem i32 %278, 2
  %280 = mul nsw i32 5, %279
  %281 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %282 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @STD_NTSC, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 29, i32 24
  %288 = call i32 @tw_mask_shift_writel(i32 %277, i32 31, i32 %280, i32 %287)
  %289 = load i32, i32* %4, align 4
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %291, label %293

291:                                              ; preds = %276
  %292 = load i32, i32* @TW5864_FRAME_BUS1, align 4
  br label %295

293:                                              ; preds = %276
  %294 = load i32, i32* @TW5864_FRAME_BUS2, align 4
  br label %295

295:                                              ; preds = %293, %291
  %296 = phi i32 [ %292, %291 ], [ %294, %293 ]
  %297 = load i32, i32* %4, align 4
  %298 = srem i32 %297, 2
  %299 = mul nsw i32 %298, 8
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @tw_mask_shift_writel(i32 %296, i32 255, i32 %299, i32 %300)
  %302 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %303 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %302, i32 0, i32 0
  %304 = load i64, i64* %5, align 8
  %305 = call i32 @spin_lock_irqsave(i32* %303, i64 %304)
  %306 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %307 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %306, i32 0, i32 11
  store i32 1, i32* %307, align 8
  %308 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %309 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %308, i32 0, i32 0
  %310 = load i64, i64* %5, align 8
  %311 = call i32 @spin_unlock_irqrestore(i32* %309, i64 %310)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @tw_setl(i32, i32) #1

declare dso_local i32 @tw_clearl(i32, i32) #1

declare dso_local i32 @tw_indir_writeb(i32, i32) #1

declare dso_local i32 @TW5864_INDIR_IN_PIC_WIDTH(i32) #1

declare dso_local i32 @TW5864_INDIR_IN_PIC_HEIGHT(i32) #1

declare dso_local i32 @TW5864_INDIR_OUT_PIC_WIDTH(i32) #1

declare dso_local i32 @TW5864_INDIR_OUT_PIC_HEIGHT(i32) #1

declare dso_local i32 @tw_indir_readb(i32) #1

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @TW5864_FRAME_WIDTH_BUS_A(i32) #1

declare dso_local i32 @TW5864_FRAME_WIDTH_BUS_B(i32) #1

declare dso_local i32 @TW5864_FRAME_HEIGHT_BUS_A(i32) #1

declare dso_local i32 @TW5864_FRAME_HEIGHT_BUS_B(i32) #1

declare dso_local i32 @tw5864_frame_interval_set(%struct.tw5864_input*) #1

declare dso_local i32 @tw_mask_shift_writel(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
