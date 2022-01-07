; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov519_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov519_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_regvals = type { i32, i32 }
%struct.sd = type { i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@ov519_mode_init_regs.mode_init_519_ov7670 = internal constant [18 x %struct.ov_regvals] [%struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 83, i32 159 }, %struct.ov_regvals { i32 133, i32 15 }, %struct.ov_regvals { i32 162, i32 32 }, %struct.ov_regvals { i32 163, i32 24 }, %struct.ov_regvals { i32 164, i32 4 }, %struct.ov_regvals { i32 165, i32 40 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 85, i32 2 }, %struct.ov_regvals { i32 32, i32 12 }, %struct.ov_regvals { i32 33, i32 56 }, %struct.ov_regvals { i32 34, i32 29 }, %struct.ov_regvals { i32 23, i32 80 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 64, i32 255 }, %struct.ov_regvals { i32 70, i32 0 }, %struct.ov_regvals { i32 89, i32 4 }, %struct.ov_regvals { i32 255, i32 0 }], align 16
@ov519_mode_init_regs.mode_init_519 = internal constant [16 x %struct.ov_regvals] [%struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 83, i32 159 }, %struct.ov_regvals { i32 133, i32 15 }, %struct.ov_regvals { i32 162, i32 32 }, %struct.ov_regvals { i32 163, i32 24 }, %struct.ov_regvals { i32 164, i32 4 }, %struct.ov_regvals { i32 165, i32 40 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 85, i32 2 }, %struct.ov_regvals { i32 34, i32 29 }, %struct.ov_regvals { i32 23, i32 80 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 64, i32 255 }, %struct.ov_regvals { i32 70, i32 0 }, %struct.ov_regvals { i32 89, i32 4 }, %struct.ov_regvals { i32 255, i32 0 }], align 16
@OV519_R20_DFR = common dso_local global i32 0, align 4
@OV519_R10_H_SIZE = common dso_local global i32 0, align 4
@OV519_R11_V_SIZE = common dso_local global i32 0, align 4
@OV519_R12_X_OFFSETL = common dso_local global i32 0, align 4
@OV519_R13_X_OFFSETH = common dso_local global i32 0, align 4
@OV519_R14_Y_OFFSETL = common dso_local global i32 0, align 4
@OV519_R15_Y_OFFSETH = common dso_local global i32 0, align 4
@OV519_R16_DIVIDER = common dso_local global i32 0, align 4
@OV519_R25_FORMAT = common dso_local global i32 0, align 4
@frame_rate = common dso_local global i64 0, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Setting framerate to %d fps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov519_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov519_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = bitcast %struct.sd* %4 to %struct.gspca_dev*
  store %struct.gspca_dev* %5, %struct.gspca_dev** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
    i32 130, label %27
    i32 129, label %28
  ]

9:                                                ; preds = %1
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519, i64 0, i64 0))
  %12 = call i32 @write_regvals(%struct.sd* %10, %struct.ov_regvals* getelementptr inbounds ([16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519, i64 0, i64 0), i32 %11)
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 132
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = load %struct.sd*, %struct.sd** %2, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 131
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %9
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = load i32, i32* @OV519_R20_DFR, align 4
  %25 = call i32 @reg_w_mask(%struct.sd* %23, i32 %24, i32 16, i32 16)
  br label %26

26:                                               ; preds = %22, %17
  br label %32

27:                                               ; preds = %1
  br label %225

28:                                               ; preds = %1
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([18 x %struct.ov_regvals], [18 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519_ov7670, i64 0, i64 0))
  %31 = call i32 @write_regvals(%struct.sd* %29, %struct.ov_regvals* getelementptr inbounds ([18 x %struct.ov_regvals], [18 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519_ov7670, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %26
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = load i32, i32* @OV519_R10_H_SIZE, align 4
  %35 = load %struct.sd*, %struct.sd** %2, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 4
  %41 = call i32 @reg_w(%struct.sd* %33, i32 %34, i32 %40)
  %42 = load %struct.sd*, %struct.sd** %2, align 8
  %43 = load i32, i32* @OV519_R11_V_SIZE, align 4
  %44 = load %struct.sd*, %struct.sd** %2, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 3
  %50 = call i32 @reg_w(%struct.sd* %42, i32 %43, i32 %49)
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %73

55:                                               ; preds = %32
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.sd*, %struct.sd** %2, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.sd*, %struct.sd** %2, align 8
  %71 = load i32, i32* @OV519_R12_X_OFFSETL, align 4
  %72 = call i32 @reg_w(%struct.sd* %70, i32 %71, i32 4)
  br label %101

73:                                               ; preds = %55, %32
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 131
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.sd*, %struct.sd** %2, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.sd*, %struct.sd** %2, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.sd*, %struct.sd** %2, align 8
  %94 = load i32, i32* @OV519_R12_X_OFFSETL, align 4
  %95 = call i32 @reg_w(%struct.sd* %93, i32 %94, i32 1)
  br label %100

96:                                               ; preds = %78, %73
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = load i32, i32* @OV519_R12_X_OFFSETL, align 4
  %99 = call i32 @reg_w(%struct.sd* %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.sd*, %struct.sd** %2, align 8
  %103 = load i32, i32* @OV519_R13_X_OFFSETH, align 4
  %104 = call i32 @reg_w(%struct.sd* %102, i32 %103, i32 0)
  %105 = load %struct.sd*, %struct.sd** %2, align 8
  %106 = load i32, i32* @OV519_R14_Y_OFFSETL, align 4
  %107 = call i32 @reg_w(%struct.sd* %105, i32 %106, i32 0)
  %108 = load %struct.sd*, %struct.sd** %2, align 8
  %109 = load i32, i32* @OV519_R15_Y_OFFSETH, align 4
  %110 = call i32 @reg_w(%struct.sd* %108, i32 %109, i32 0)
  %111 = load %struct.sd*, %struct.sd** %2, align 8
  %112 = load i32, i32* @OV519_R16_DIVIDER, align 4
  %113 = call i32 @reg_w(%struct.sd* %111, i32 %112, i32 0)
  %114 = load %struct.sd*, %struct.sd** %2, align 8
  %115 = load i32, i32* @OV519_R25_FORMAT, align 4
  %116 = call i32 @reg_w(%struct.sd* %114, i32 %115, i32 3)
  %117 = load %struct.sd*, %struct.sd** %2, align 8
  %118 = call i32 @reg_w(%struct.sd* %117, i32 38, i32 0)
  %119 = load i64, i64* @frame_rate, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %101
  %122 = load i64, i64* @frame_rate, align 8
  %123 = load %struct.sd*, %struct.sd** %2, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %101
  %126 = load %struct.sd*, %struct.sd** %2, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 2
  store i32 0, i32* %127, align 8
  %128 = load %struct.sd*, %struct.sd** %2, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %225 [
    i32 132, label %131
    i32 131, label %131
    i32 128, label %172
    i32 129, label %192
  ]

131:                                              ; preds = %125, %125
  %132 = load %struct.sd*, %struct.sd** %2, align 8
  %133 = getelementptr inbounds %struct.sd, %struct.sd* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  switch i64 %134, label %135 [
    i64 25, label %140
    i64 20, label %145
    i64 15, label %150
    i64 10, label %157
    i64 5, label %164
  ]

135:                                              ; preds = %131
  %136 = load %struct.sd*, %struct.sd** %2, align 8
  %137 = call i32 @reg_w(%struct.sd* %136, i32 164, i32 12)
  %138 = load %struct.sd*, %struct.sd** %2, align 8
  %139 = call i32 @reg_w(%struct.sd* %138, i32 35, i32 255)
  br label %171

140:                                              ; preds = %131
  %141 = load %struct.sd*, %struct.sd** %2, align 8
  %142 = call i32 @reg_w(%struct.sd* %141, i32 164, i32 12)
  %143 = load %struct.sd*, %struct.sd** %2, align 8
  %144 = call i32 @reg_w(%struct.sd* %143, i32 35, i32 31)
  br label %171

145:                                              ; preds = %131
  %146 = load %struct.sd*, %struct.sd** %2, align 8
  %147 = call i32 @reg_w(%struct.sd* %146, i32 164, i32 12)
  %148 = load %struct.sd*, %struct.sd** %2, align 8
  %149 = call i32 @reg_w(%struct.sd* %148, i32 35, i32 27)
  br label %171

150:                                              ; preds = %131
  %151 = load %struct.sd*, %struct.sd** %2, align 8
  %152 = call i32 @reg_w(%struct.sd* %151, i32 164, i32 4)
  %153 = load %struct.sd*, %struct.sd** %2, align 8
  %154 = call i32 @reg_w(%struct.sd* %153, i32 35, i32 255)
  %155 = load %struct.sd*, %struct.sd** %2, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 2
  store i32 1, i32* %156, align 8
  br label %171

157:                                              ; preds = %131
  %158 = load %struct.sd*, %struct.sd** %2, align 8
  %159 = call i32 @reg_w(%struct.sd* %158, i32 164, i32 4)
  %160 = load %struct.sd*, %struct.sd** %2, align 8
  %161 = call i32 @reg_w(%struct.sd* %160, i32 35, i32 31)
  %162 = load %struct.sd*, %struct.sd** %2, align 8
  %163 = getelementptr inbounds %struct.sd, %struct.sd* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  br label %171

164:                                              ; preds = %131
  %165 = load %struct.sd*, %struct.sd** %2, align 8
  %166 = call i32 @reg_w(%struct.sd* %165, i32 164, i32 4)
  %167 = load %struct.sd*, %struct.sd** %2, align 8
  %168 = call i32 @reg_w(%struct.sd* %167, i32 35, i32 27)
  %169 = load %struct.sd*, %struct.sd** %2, align 8
  %170 = getelementptr inbounds %struct.sd, %struct.sd* %169, i32 0, i32 2
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %164, %157, %150, %145, %140, %135
  br label %225

172:                                              ; preds = %125
  %173 = load %struct.sd*, %struct.sd** %2, align 8
  %174 = getelementptr inbounds %struct.sd, %struct.sd* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  switch i64 %175, label %176 [
    i64 10, label %181
    i64 5, label %186
  ]

176:                                              ; preds = %172
  %177 = load %struct.sd*, %struct.sd** %2, align 8
  %178 = call i32 @reg_w(%struct.sd* %177, i32 164, i32 6)
  %179 = load %struct.sd*, %struct.sd** %2, align 8
  %180 = call i32 @reg_w(%struct.sd* %179, i32 35, i32 255)
  br label %191

181:                                              ; preds = %172
  %182 = load %struct.sd*, %struct.sd** %2, align 8
  %183 = call i32 @reg_w(%struct.sd* %182, i32 164, i32 6)
  %184 = load %struct.sd*, %struct.sd** %2, align 8
  %185 = call i32 @reg_w(%struct.sd* %184, i32 35, i32 31)
  br label %191

186:                                              ; preds = %172
  %187 = load %struct.sd*, %struct.sd** %2, align 8
  %188 = call i32 @reg_w(%struct.sd* %187, i32 164, i32 6)
  %189 = load %struct.sd*, %struct.sd** %2, align 8
  %190 = call i32 @reg_w(%struct.sd* %189, i32 35, i32 27)
  br label %191

191:                                              ; preds = %186, %181, %176
  br label %225

192:                                              ; preds = %125
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %194 = load i32, i32* @D_STREAM, align 4
  %195 = load %struct.sd*, %struct.sd** %2, align 8
  %196 = getelementptr inbounds %struct.sd, %struct.sd* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %204

200:                                              ; preds = %192
  %201 = load %struct.sd*, %struct.sd** %2, align 8
  %202 = getelementptr inbounds %struct.sd, %struct.sd* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  br label %204

204:                                              ; preds = %200, %199
  %205 = phi i64 [ 15, %199 ], [ %203, %200 ]
  %206 = trunc i64 %205 to i32
  %207 = call i32 @gspca_dbg(%struct.gspca_dev* %193, i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %206)
  %208 = load %struct.sd*, %struct.sd** %2, align 8
  %209 = call i32 @reg_w(%struct.sd* %208, i32 164, i32 16)
  %210 = load %struct.sd*, %struct.sd** %2, align 8
  %211 = getelementptr inbounds %struct.sd, %struct.sd* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  switch i64 %212, label %219 [
    i64 30, label %213
    i64 20, label %216
  ]

213:                                              ; preds = %204
  %214 = load %struct.sd*, %struct.sd** %2, align 8
  %215 = call i32 @reg_w(%struct.sd* %214, i32 35, i32 255)
  br label %224

216:                                              ; preds = %204
  %217 = load %struct.sd*, %struct.sd** %2, align 8
  %218 = call i32 @reg_w(%struct.sd* %217, i32 35, i32 27)
  br label %224

219:                                              ; preds = %204
  %220 = load %struct.sd*, %struct.sd** %2, align 8
  %221 = call i32 @reg_w(%struct.sd* %220, i32 35, i32 255)
  %222 = load %struct.sd*, %struct.sd** %2, align 8
  %223 = getelementptr inbounds %struct.sd, %struct.sd* %222, i32 0, i32 2
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %219, %216, %213
  br label %225

225:                                              ; preds = %27, %125, %224, %191, %171
  ret void
}

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
