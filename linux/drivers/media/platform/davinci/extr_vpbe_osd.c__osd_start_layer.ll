; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_start_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_start_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i64, %struct.osd_window_state* }
%struct.osd_window_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@VPBE_VERSION_1 = common dso_local global i64 0, align 8
@OSD_OSDWIN0ADR = common dso_local global i32 0, align 4
@OSD_VIDWIN0ADR = common dso_local global i32 0, align 4
@OSD_OSDWIN1ADR = common dso_local global i32 0, align 4
@OSD_VIDWIN1ADR = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@VPBE_REG_BASE = common dso_local global i64 0, align 8
@OSD_OSDWINADH_O0AH = common dso_local global i32 0, align 4
@OSD_SRCADD_ADD_SFT = common dso_local global i64 0, align 8
@OSD_OSDWINADH_O0AH_SHIFT = common dso_local global i64 0, align 8
@OSD_OSDWINADH = common dso_local global i32 0, align 4
@OSD_OSDWIN0ADL_O0AL = common dso_local global i64 0, align 8
@OSD_OSDWIN0ADL = common dso_local global i32 0, align 4
@OSD_VIDWINADH_V0AH = common dso_local global i32 0, align 4
@OSD_VIDWINADH_V0AH_SHIFT = common dso_local global i64 0, align 8
@OSD_VIDWINADH = common dso_local global i32 0, align 4
@OSD_VIDWIN0ADL_V0AL = common dso_local global i64 0, align 8
@OSD_VIDWIN0ADL = common dso_local global i32 0, align 4
@OSD_OSDWINADH_O1AH = common dso_local global i32 0, align 4
@OSD_OSDWINADH_O1AH_SHIFT = common dso_local global i64 0, align 8
@OSD_OSDWIN1ADL_O1AL = common dso_local global i64 0, align 8
@OSD_OSDWIN1ADL = common dso_local global i32 0, align 4
@OSD_VIDWINADH_V1AH = common dso_local global i32 0, align 4
@OSD_VIDWINADH_V1AH_SHIFT = common dso_local global i64 0, align 8
@OSD_VIDWIN1ADL_V1AL = common dso_local global i64 0, align 8
@OSD_VIDWIN1ADL = common dso_local global i32 0, align 4
@VPBE_VERSION_2 = common dso_local global i64 0, align 8
@PIXFMT_NV12 = common dso_local global i64 0, align 8
@OSD_VIDWIN0OFST_V0AH = common dso_local global i32 0, align 4
@OSD_SRC_ADDR_HIGH4 = common dso_local global i64 0, align 8
@OSD_SRCADD_OFSET_SFT = common dso_local global i64 0, align 8
@OSD_WINOFST_AH_SHIFT = common dso_local global i64 0, align 8
@OSD_WINOFST_MASK = common dso_local global i64 0, align 8
@OSD_VIDWIN0OFST = common dso_local global i32 0, align 4
@OSD_SRC_ADDR_HIGH7 = common dso_local global i64 0, align 8
@OSD_WINADL_MASK = common dso_local global i64 0, align 8
@OSD_VIDWIN1OFST_V1AH = common dso_local global i32 0, align 4
@OSD_VIDWIN1OFST = common dso_local global i32 0, align 4
@OSD_OSDWIN0OFST_O0AH = common dso_local global i32 0, align 4
@OSD_OSDWIN0OFST = common dso_local global i32 0, align 4
@OSD_OSDWIN1OFST_O1AH = common dso_local global i32 0, align 4
@OSD_OSDWIN1OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i64, i64)* @_osd_start_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_start_layer(%struct.osd_state* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.osd_window_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %14 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VPBE_VERSION_1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %44 [
    i32 131, label %20
    i32 129, label %26
    i32 130, label %32
    i32 128, label %38
  ]

20:                                               ; preds = %18
  %21 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, -32
  %24 = load i32, i32* @OSD_OSDWIN0ADR, align 4
  %25 = call i32 @osd_write(%struct.osd_state* %21, i64 %23, i32 %24)
  br label %44

26:                                               ; preds = %18
  %27 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, -32
  %30 = load i32, i32* @OSD_VIDWIN0ADR, align 4
  %31 = call i32 @osd_write(%struct.osd_state* %27, i64 %29, i32 %30)
  br label %44

32:                                               ; preds = %18
  %33 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, -32
  %36 = load i32, i32* @OSD_OSDWIN1ADR, align 4
  %37 = call i32 @osd_write(%struct.osd_state* %33, i64 %35, i32 %36)
  br label %44

38:                                               ; preds = %18
  %39 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, -32
  %42 = load i32, i32* @OSD_VIDWIN1ADR, align 4
  %43 = call i32 @osd_write(%struct.osd_state* %39, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %18, %38, %32, %26, %20
  br label %376

45:                                               ; preds = %4
  %46 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %47 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VPBE_VERSION_3, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %122

51:                                               ; preds = %45
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @VPBE_REG_BASE, align 8
  %54 = sub i64 %52, %53
  %55 = lshr i64 %54, 5
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %121 [
    i32 131, label %57
    i32 129, label %73
    i32 130, label %89
    i32 128, label %105
  ]

57:                                               ; preds = %51
  %58 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %59 = load i32, i32* @OSD_OSDWINADH_O0AH, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %62 = load i64, i64* @OSD_OSDWINADH_O0AH_SHIFT, align 8
  %63 = sub i64 %61, %62
  %64 = lshr i64 %60, %63
  %65 = load i32, i32* @OSD_OSDWINADH, align 4
  %66 = call i32 @osd_modify(%struct.osd_state* %58, i32 %59, i64 %64, i32 %65)
  %67 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @OSD_OSDWIN0ADL_O0AL, align 8
  %70 = and i64 %68, %69
  %71 = load i32, i32* @OSD_OSDWIN0ADL, align 4
  %72 = call i32 @osd_write(%struct.osd_state* %67, i64 %70, i32 %71)
  br label %121

73:                                               ; preds = %51
  %74 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %75 = load i32, i32* @OSD_VIDWINADH_V0AH, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %78 = load i64, i64* @OSD_VIDWINADH_V0AH_SHIFT, align 8
  %79 = sub i64 %77, %78
  %80 = lshr i64 %76, %79
  %81 = load i32, i32* @OSD_VIDWINADH, align 4
  %82 = call i32 @osd_modify(%struct.osd_state* %74, i32 %75, i64 %80, i32 %81)
  %83 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @OSD_VIDWIN0ADL_V0AL, align 8
  %86 = and i64 %84, %85
  %87 = load i32, i32* @OSD_VIDWIN0ADL, align 4
  %88 = call i32 @osd_write(%struct.osd_state* %83, i64 %86, i32 %87)
  br label %121

89:                                               ; preds = %51
  %90 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %91 = load i32, i32* @OSD_OSDWINADH_O1AH, align 4
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %94 = load i64, i64* @OSD_OSDWINADH_O1AH_SHIFT, align 8
  %95 = sub i64 %93, %94
  %96 = lshr i64 %92, %95
  %97 = load i32, i32* @OSD_OSDWINADH, align 4
  %98 = call i32 @osd_modify(%struct.osd_state* %90, i32 %91, i64 %96, i32 %97)
  %99 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @OSD_OSDWIN1ADL_O1AL, align 8
  %102 = and i64 %100, %101
  %103 = load i32, i32* @OSD_OSDWIN1ADL, align 4
  %104 = call i32 @osd_write(%struct.osd_state* %99, i64 %102, i32 %103)
  br label %121

105:                                              ; preds = %51
  %106 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %107 = load i32, i32* @OSD_VIDWINADH_V1AH, align 4
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %110 = load i64, i64* @OSD_VIDWINADH_V1AH_SHIFT, align 8
  %111 = sub i64 %109, %110
  %112 = lshr i64 %108, %111
  %113 = load i32, i32* @OSD_VIDWINADH, align 4
  %114 = call i32 @osd_modify(%struct.osd_state* %106, i32 %107, i64 %112, i32 %113)
  %115 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @OSD_VIDWIN1ADL_V1AL, align 8
  %118 = and i64 %116, %117
  %119 = load i32, i32* @OSD_VIDWIN1ADL, align 4
  %120 = call i32 @osd_write(%struct.osd_state* %115, i64 %118, i32 %119)
  br label %121

121:                                              ; preds = %51, %105, %89, %73, %57
  br label %375

122:                                              ; preds = %45
  %123 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %124 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @VPBE_VERSION_2, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %374

128:                                              ; preds = %122
  %129 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %130 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %129, i32 0, i32 1
  %131 = load %struct.osd_window_state*, %struct.osd_window_state** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %131, i64 %133
  store %struct.osd_window_state* %134, %struct.osd_window_state** %10, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @VPBE_REG_BASE, align 8
  %137 = sub i64 %135, %136
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %8, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = load i64, i64* %8, align 8
  store i64 %141, i64* %12, align 8
  br label %152

142:                                              ; preds = %128
  %143 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %144 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %148 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %146, %150
  store i64 %151, i64* %12, align 8
  br label %152

152:                                              ; preds = %142, %140
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %12, align 8
  %156 = load i64, i64* %11, align 8
  %157 = lshr i64 %156, 5
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %12, align 8
  %159 = lshr i64 %158, 5
  store i64 %159, i64* %12, align 8
  %160 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %161 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @PIXFMT_NV12, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %231

166:                                              ; preds = %152
  %167 = load i32, i32* %6, align 4
  switch i32 %167, label %229 [
    i32 129, label %168
    i32 128, label %168
  ]

168:                                              ; preds = %166, %166
  %169 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %170 = load i32, i32* @OSD_VIDWIN0OFST_V0AH, align 4
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @OSD_SRC_ADDR_HIGH4, align 8
  %173 = and i64 %171, %172
  %174 = load i64, i64* @OSD_SRCADD_OFSET_SFT, align 8
  %175 = load i64, i64* @OSD_WINOFST_AH_SHIFT, align 8
  %176 = sub i64 %174, %175
  %177 = lshr i64 %173, %176
  %178 = load i64, i64* @OSD_WINOFST_MASK, align 8
  %179 = or i64 %177, %178
  %180 = load i32, i32* @OSD_VIDWIN0OFST, align 4
  %181 = call i32 @osd_modify(%struct.osd_state* %169, i32 %170, i64 %179, i32 %180)
  %182 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %183 = load i32, i32* @OSD_VIDWINADH_V0AH, align 4
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* @OSD_SRC_ADDR_HIGH7, align 8
  %186 = and i64 %184, %185
  %187 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %188 = load i64, i64* @OSD_VIDWINADH_V0AH_SHIFT, align 8
  %189 = sub i64 %187, %188
  %190 = lshr i64 %186, %189
  %191 = load i32, i32* @OSD_VIDWINADH, align 4
  %192 = call i32 @osd_modify(%struct.osd_state* %182, i32 %183, i64 %190, i32 %191)
  %193 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* @OSD_WINADL_MASK, align 8
  %196 = and i64 %194, %195
  %197 = load i32, i32* @OSD_VIDWIN0ADL, align 4
  %198 = call i32 @osd_write(%struct.osd_state* %193, i64 %196, i32 %197)
  %199 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %200 = load i32, i32* @OSD_VIDWIN1OFST_V1AH, align 4
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* @OSD_SRC_ADDR_HIGH4, align 8
  %203 = and i64 %201, %202
  %204 = load i64, i64* @OSD_SRCADD_OFSET_SFT, align 8
  %205 = load i64, i64* @OSD_WINOFST_AH_SHIFT, align 8
  %206 = sub i64 %204, %205
  %207 = lshr i64 %203, %206
  %208 = load i64, i64* @OSD_WINOFST_MASK, align 8
  %209 = or i64 %207, %208
  %210 = load i32, i32* @OSD_VIDWIN1OFST, align 4
  %211 = call i32 @osd_modify(%struct.osd_state* %199, i32 %200, i64 %209, i32 %210)
  %212 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %213 = load i32, i32* @OSD_VIDWINADH_V1AH, align 4
  %214 = load i64, i64* %12, align 8
  %215 = load i64, i64* @OSD_SRC_ADDR_HIGH7, align 8
  %216 = and i64 %214, %215
  %217 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %218 = load i64, i64* @OSD_VIDWINADH_V1AH_SHIFT, align 8
  %219 = sub i64 %217, %218
  %220 = lshr i64 %216, %219
  %221 = load i32, i32* @OSD_VIDWINADH, align 4
  %222 = call i32 @osd_modify(%struct.osd_state* %212, i32 %213, i64 %220, i32 %221)
  %223 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %224 = load i64, i64* %12, align 8
  %225 = load i64, i64* @OSD_WINADL_MASK, align 8
  %226 = and i64 %224, %225
  %227 = load i32, i32* @OSD_VIDWIN1ADL, align 4
  %228 = call i32 @osd_write(%struct.osd_state* %223, i64 %226, i32 %227)
  br label %230

229:                                              ; preds = %166
  br label %230

230:                                              ; preds = %229, %168
  br label %231

231:                                              ; preds = %230, %152
  %232 = load i32, i32* %6, align 4
  switch i32 %232, label %373 [
    i32 131, label %233
    i32 129, label %264
    i32 130, label %303
    i32 128, label %334
  ]

233:                                              ; preds = %231
  %234 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %235 = load i32, i32* @OSD_OSDWIN0OFST_O0AH, align 4
  %236 = load i64, i64* %11, align 8
  %237 = load i64, i64* @OSD_SRC_ADDR_HIGH4, align 8
  %238 = and i64 %236, %237
  %239 = load i64, i64* @OSD_SRCADD_OFSET_SFT, align 8
  %240 = load i64, i64* @OSD_WINOFST_AH_SHIFT, align 8
  %241 = sub i64 %239, %240
  %242 = lshr i64 %238, %241
  %243 = load i64, i64* @OSD_WINOFST_MASK, align 8
  %244 = or i64 %242, %243
  %245 = load i32, i32* @OSD_OSDWIN0OFST, align 4
  %246 = call i32 @osd_modify(%struct.osd_state* %234, i32 %235, i64 %244, i32 %245)
  %247 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %248 = load i32, i32* @OSD_OSDWINADH_O0AH, align 4
  %249 = load i64, i64* %11, align 8
  %250 = load i64, i64* @OSD_SRC_ADDR_HIGH7, align 8
  %251 = and i64 %249, %250
  %252 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %253 = load i64, i64* @OSD_OSDWINADH_O0AH_SHIFT, align 8
  %254 = sub i64 %252, %253
  %255 = lshr i64 %251, %254
  %256 = load i32, i32* @OSD_OSDWINADH, align 4
  %257 = call i32 @osd_modify(%struct.osd_state* %247, i32 %248, i64 %255, i32 %256)
  %258 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* @OSD_WINADL_MASK, align 8
  %261 = and i64 %259, %260
  %262 = load i32, i32* @OSD_OSDWIN0ADL, align 4
  %263 = call i32 @osd_write(%struct.osd_state* %258, i64 %261, i32 %262)
  br label %373

264:                                              ; preds = %231
  %265 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %266 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @PIXFMT_NV12, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %302

271:                                              ; preds = %264
  %272 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %273 = load i32, i32* @OSD_VIDWIN0OFST_V0AH, align 4
  %274 = load i64, i64* %11, align 8
  %275 = load i64, i64* @OSD_SRC_ADDR_HIGH4, align 8
  %276 = and i64 %274, %275
  %277 = load i64, i64* @OSD_SRCADD_OFSET_SFT, align 8
  %278 = load i64, i64* @OSD_WINOFST_AH_SHIFT, align 8
  %279 = sub i64 %277, %278
  %280 = lshr i64 %276, %279
  %281 = load i64, i64* @OSD_WINOFST_MASK, align 8
  %282 = or i64 %280, %281
  %283 = load i32, i32* @OSD_VIDWIN0OFST, align 4
  %284 = call i32 @osd_modify(%struct.osd_state* %272, i32 %273, i64 %282, i32 %283)
  %285 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %286 = load i32, i32* @OSD_VIDWINADH_V0AH, align 4
  %287 = load i64, i64* %11, align 8
  %288 = load i64, i64* @OSD_SRC_ADDR_HIGH7, align 8
  %289 = and i64 %287, %288
  %290 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %291 = load i64, i64* @OSD_VIDWINADH_V0AH_SHIFT, align 8
  %292 = sub i64 %290, %291
  %293 = lshr i64 %289, %292
  %294 = load i32, i32* @OSD_VIDWINADH, align 4
  %295 = call i32 @osd_modify(%struct.osd_state* %285, i32 %286, i64 %293, i32 %294)
  %296 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %297 = load i64, i64* %11, align 8
  %298 = load i64, i64* @OSD_WINADL_MASK, align 8
  %299 = and i64 %297, %298
  %300 = load i32, i32* @OSD_VIDWIN0ADL, align 4
  %301 = call i32 @osd_write(%struct.osd_state* %296, i64 %299, i32 %300)
  br label %302

302:                                              ; preds = %271, %264
  br label %373

303:                                              ; preds = %231
  %304 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %305 = load i32, i32* @OSD_OSDWIN1OFST_O1AH, align 4
  %306 = load i64, i64* %11, align 8
  %307 = load i64, i64* @OSD_SRC_ADDR_HIGH4, align 8
  %308 = and i64 %306, %307
  %309 = load i64, i64* @OSD_SRCADD_OFSET_SFT, align 8
  %310 = load i64, i64* @OSD_WINOFST_AH_SHIFT, align 8
  %311 = sub i64 %309, %310
  %312 = lshr i64 %308, %311
  %313 = load i64, i64* @OSD_WINOFST_MASK, align 8
  %314 = or i64 %312, %313
  %315 = load i32, i32* @OSD_OSDWIN1OFST, align 4
  %316 = call i32 @osd_modify(%struct.osd_state* %304, i32 %305, i64 %314, i32 %315)
  %317 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %318 = load i32, i32* @OSD_OSDWINADH_O1AH, align 4
  %319 = load i64, i64* %11, align 8
  %320 = load i64, i64* @OSD_SRC_ADDR_HIGH7, align 8
  %321 = and i64 %319, %320
  %322 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %323 = load i64, i64* @OSD_OSDWINADH_O1AH_SHIFT, align 8
  %324 = sub i64 %322, %323
  %325 = lshr i64 %321, %324
  %326 = load i32, i32* @OSD_OSDWINADH, align 4
  %327 = call i32 @osd_modify(%struct.osd_state* %317, i32 %318, i64 %325, i32 %326)
  %328 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %329 = load i64, i64* %11, align 8
  %330 = load i64, i64* @OSD_WINADL_MASK, align 8
  %331 = and i64 %329, %330
  %332 = load i32, i32* @OSD_OSDWIN1ADL, align 4
  %333 = call i32 @osd_write(%struct.osd_state* %328, i64 %331, i32 %332)
  br label %373

334:                                              ; preds = %231
  %335 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %336 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @PIXFMT_NV12, align 8
  %340 = icmp ne i64 %338, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %334
  %342 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %343 = load i32, i32* @OSD_VIDWIN1OFST_V1AH, align 4
  %344 = load i64, i64* %11, align 8
  %345 = load i64, i64* @OSD_SRC_ADDR_HIGH4, align 8
  %346 = and i64 %344, %345
  %347 = load i64, i64* @OSD_SRCADD_OFSET_SFT, align 8
  %348 = load i64, i64* @OSD_WINOFST_AH_SHIFT, align 8
  %349 = sub i64 %347, %348
  %350 = lshr i64 %346, %349
  %351 = load i64, i64* @OSD_WINOFST_MASK, align 8
  %352 = or i64 %350, %351
  %353 = load i32, i32* @OSD_VIDWIN1OFST, align 4
  %354 = call i32 @osd_modify(%struct.osd_state* %342, i32 %343, i64 %352, i32 %353)
  %355 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %356 = load i32, i32* @OSD_VIDWINADH_V1AH, align 4
  %357 = load i64, i64* %11, align 8
  %358 = load i64, i64* @OSD_SRC_ADDR_HIGH7, align 8
  %359 = and i64 %357, %358
  %360 = load i64, i64* @OSD_SRCADD_ADD_SFT, align 8
  %361 = load i64, i64* @OSD_VIDWINADH_V1AH_SHIFT, align 8
  %362 = sub i64 %360, %361
  %363 = lshr i64 %359, %362
  %364 = load i32, i32* @OSD_VIDWINADH, align 4
  %365 = call i32 @osd_modify(%struct.osd_state* %355, i32 %356, i64 %363, i32 %364)
  %366 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %367 = load i64, i64* %11, align 8
  %368 = load i64, i64* @OSD_WINADL_MASK, align 8
  %369 = and i64 %367, %368
  %370 = load i32, i32* @OSD_VIDWIN1ADL, align 4
  %371 = call i32 @osd_write(%struct.osd_state* %366, i64 %369, i32 %370)
  br label %372

372:                                              ; preds = %341, %334
  br label %373

373:                                              ; preds = %231, %372, %303, %302, %233
  br label %374

374:                                              ; preds = %373, %122
  br label %375

375:                                              ; preds = %374, %121
  br label %376

376:                                              ; preds = %375, %44
  ret void
}

declare dso_local i32 @osd_write(%struct.osd_state*, i64, i32) #1

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
