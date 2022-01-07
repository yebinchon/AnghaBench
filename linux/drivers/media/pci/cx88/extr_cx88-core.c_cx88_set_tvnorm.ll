; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_set_tvnorm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_set_tvnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@xtal = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i64 0, align 8
@VideoFormatNTSCJapan = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i64 0, align 8
@VideoFormatNTSC443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i64 0, align 8
@VideoFormatPALM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i64 0, align 8
@VideoFormatPALN = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i64 0, align 8
@VideoFormatPALNC = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i64 0, align 8
@VideoFormatPAL60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@VideoFormatNTSC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i64 0, align 8
@VideoFormatSECAM = common dso_local global i32 0, align 4
@VideoFormatPAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"set_tvnorm: \22%s\22 fsc8=%d adc=%d vdec=%d db/dr=%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_INPUT_FORMAT  0x%08x [old=0x%08x]\0A\00", align 1
@MO_INPUT_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_OUTPUT_FORMAT 0x%08x [old=0x%08x]\0A\00", align 1
@MO_OUTPUT_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_SCONV_REG     0x%08x [old=0x%08x]\0A\00", align 1
@MO_SCONV_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_SUB_STEP      0x%08x [old=0x%08x]\0A\00", align 1
@MO_SUB_STEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_SUB_STEP_DR   0x%08x [old=0x%08x]\0A\00", align 1
@MO_SUB_STEP_DR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [72 x i8] c"set_tvnorm: MO_AGC_BURST     0x%08x [old=0x%08x,bdelay=%d,agcdelay=%d]\0A\00", align 1
@MO_AGC_BURST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"set_tvnorm: MO_HTOTAL        0x%08x [old=0x%08x,htotal=%d]\0A\00", align 1
@MO_HTOTAL = common dso_local global i32 0, align 4
@MO_VBI_PACKET = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_set_tvnorm(%struct.cx88_core* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %271

23:                                               ; preds = %2
  %24 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %25 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %30 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i64 @vb2_is_busy(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i64 @vb2_is_busy(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %28
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %271

45:                                               ; preds = %35, %23
  %46 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %47 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %52 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i64 @vb2_is_busy(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %271

60:                                               ; preds = %50, %45
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %63 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @norm_fsc8(i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @xtal, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @V4L2_STD_NTSC_M_JP, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* @VideoFormatNTSCJapan, align 4
  store i32 %75, i32* %15, align 4
  store i32 404684808, i32* %16, align 4
  br label %134

76:                                               ; preds = %60
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @V4L2_STD_NTSC_443, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @VideoFormatNTSC443, align 4
  store i32 %82, i32* %15, align 4
  store i32 404684808, i32* %16, align 4
  br label %133

83:                                               ; preds = %76
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @V4L2_STD_PAL_M, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @VideoFormatPALM, align 4
  store i32 %89, i32* %15, align 4
  store i32 471793672, i32* %16, align 4
  br label %132

90:                                               ; preds = %83
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @V4L2_STD_PAL_N, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @VideoFormatPALN, align 4
  store i32 %96, i32* %15, align 4
  store i32 471793672, i32* %16, align 4
  br label %131

97:                                               ; preds = %90
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @V4L2_STD_PAL_Nc, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @VideoFormatPALNC, align 4
  store i32 %103, i32* %15, align 4
  store i32 471793672, i32* %16, align 4
  br label %130

104:                                              ; preds = %97
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @V4L2_STD_PAL_60, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @VideoFormatPAL60, align 4
  store i32 %110, i32* %15, align 4
  store i32 404684808, i32* %16, align 4
  br label %129

111:                                              ; preds = %104
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @V4L2_STD_NTSC, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @VideoFormatNTSC, align 4
  store i32 %117, i32* %15, align 4
  store i32 404684808, i32* %16, align 4
  br label %128

118:                                              ; preds = %111
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @V4L2_STD_SECAM, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  store i32 34000000, i32* %9, align 4
  store i32 35250000, i32* %10, align 4
  %124 = load i32, i32* @VideoFormatSECAM, align 4
  store i32 %124, i32* %15, align 4
  store i32 404684808, i32* %16, align 4
  br label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @VideoFormatPAL, align 4
  store i32 %126, i32* %15, align 4
  store i32 404684808, i32* %16, align 4
  br label %127

127:                                              ; preds = %125, %123
  br label %128

128:                                              ; preds = %127, %116
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %95
  br label %132

132:                                              ; preds = %131, %88
  br label %133

133:                                              ; preds = %132, %81
  br label %134

134:                                              ; preds = %133, %74
  %135 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %136 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @v4l2_norm_to_name(i64 %137)
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @set_pll(%struct.cx88_core* %145, i32 2, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %150 = call i32 @cx_read(i32 %149)
  %151 = and i32 %150, 15
  %152 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* @V4L2_STD_SECAM, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %134
  %159 = load i32, i32* %15, align 4
  br label %163

160:                                              ; preds = %134
  %161 = load i32, i32* %15, align 4
  %162 = or i32 %161, 1024
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi i32 [ %159, %158 ], [ %162, %160 ]
  %165 = call i32 @cx_andor(i32 %153, i32 1039, i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @MO_OUTPUT_FORMAT, align 4
  %168 = call i32 @cx_read(i32 %167)
  %169 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %168)
  %170 = load i32, i32* @MO_OUTPUT_FORMAT, align 4
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @cx_write(i32 %170, i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = mul nsw i32 %173, 131072
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @do_div(i32 %175, i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @MO_SCONV_REG, align 4
  %180 = call i32 @cx_read(i32 %179)
  %181 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %180)
  %182 = load i32, i32* @MO_SCONV_REG, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @cx_write(i32 %182, i32 %183)
  %185 = load i32, i32* %9, align 4
  %186 = mul nsw i32 %185, 4194304
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @do_div(i32 %187, i32 %188)
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @MO_SUB_STEP, align 4
  %192 = call i32 @cx_read(i32 %191)
  %193 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %190, i32 %192)
  %194 = load i32, i32* @MO_SUB_STEP, align 4
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @cx_write(i32 %194, i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 %197, 4194304
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @do_div(i32 %199, i32 %200)
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @MO_SUB_STEP_DR, align 4
  %204 = call i32 @cx_read(i32 %203)
  %205 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %202, i32 %204)
  %206 = load i32, i32* @MO_SUB_STEP_DR, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @cx_write(i32 %206, i32 %207)
  %209 = load i32, i32* %8, align 4
  %210 = mul nsw i32 %209, 65
  %211 = sdiv i32 %210, 20000000
  %212 = add nsw i32 %211, 21
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %8, align 4
  %214 = mul nsw i32 %213, 68
  %215 = sdiv i32 %214, 20000000
  %216 = add nsw i32 %215, 15
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %12, align 4
  %218 = shl i32 %217, 8
  %219 = load i32, i32* %13, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @MO_AGC_BURST, align 4
  %222 = call i32 @cx_read(i32 %221)
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %13, align 4
  %225 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %220, i32 %222, i32 %223, i32 %224)
  %226 = load i32, i32* @MO_AGC_BURST, align 4
  %227 = load i32, i32* %12, align 4
  %228 = shl i32 %227, 8
  %229 = load i32, i32* %13, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @cx_write(i32 %226, i32 %230)
  %232 = load i64, i64* %5, align 8
  %233 = call i32 @norm_htotal(i64 %232)
  %234 = load i32, i32* %8, align 4
  %235 = mul nsw i32 %233, %234
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @do_div(i32 %236, i32 %237)
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %14, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @MO_HTOTAL, align 4
  %242 = call i32 @cx_read(i32 %241)
  %243 = load i32, i32* %11, align 4
  %244 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %240, i32 %242, i32 %243)
  %245 = load i32, i32* @MO_HTOTAL, align 4
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @cx_andor(i32 %245, i32 2047, i32 %246)
  %248 = load i32, i32* @MO_VBI_PACKET, align 4
  %249 = load i64, i64* %5, align 8
  %250 = call i32 @norm_vbipack(i64 %249)
  %251 = or i32 20480, %250
  %252 = call i32 @cx_write(i32 %248, i32 %251)
  %253 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %254 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %255 = call i32 @cx88_set_scale(%struct.cx88_core* %253, i32 320, i32 240, i32 %254)
  %256 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %257 = call i32 @set_tvaudio(%struct.cx88_core* %256)
  %258 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %259 = load i32, i32* @video, align 4
  %260 = load i32, i32* @s_std, align 4
  %261 = load i64, i64* %5, align 8
  %262 = call i32 @call_all(%struct.cx88_core* %258, i32 %259, i32 %260, i64 %261)
  %263 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %264 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* @VideoFormatSECAM, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @v4l2_ctrl_grab(i32 %265, i32 %269)
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %163, %57, %42, %22
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @norm_fsc8(i64) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @v4l2_norm_to_name(i64) #1

declare dso_local i32 @set_pll(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @norm_htotal(i64) #1

declare dso_local i32 @norm_vbipack(i64) #1

declare dso_local i32 @cx88_set_scale(%struct.cx88_core*, i32, i32, i32) #1

declare dso_local i32 @set_tvaudio(%struct.cx88_core*) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, i64) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
