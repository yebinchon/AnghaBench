; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_BlockInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_BlockInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i64, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64 }

@DN_IQTN_AMP_CUT = common dso_local global i32 0, align 4
@BB_MODE = common dso_local global i32 0, align 4
@BB_BUF = common dso_local global i32 0, align 4
@BB_BUF_OA = common dso_local global i32 0, align 4
@BB_IQSWAP = common dso_local global i32 0, align 4
@BB_INITSTATE_DLPF_TUNE = common dso_local global i32 0, align 4
@BB_DLPF_BANDSEL = common dso_local global i32 0, align 4
@BB_ALPF_BANDSELECT = common dso_local global i32 0, align 4
@RFSYN_CHP_GAIN = common dso_local global i32 0, align 4
@RFSYN_EN_CHP_HIGAIN = common dso_local global i32 0, align 4
@EN_CHP_LIN_B = common dso_local global i32 0, align 4
@AGC_IF = common dso_local global i32 0, align 4
@AGC_RF = common dso_local global i32 0, align 4
@DRV_RES_SEL = common dso_local global i32 0, align 4
@I_DRIVER = common dso_local global i32 0, align 4
@EN_AAF = common dso_local global i32 0, align 4
@EN_3P = common dso_local global i32 0, align 4
@EN_AUX_3P = common dso_local global i32 0, align 4
@SEL_AAF_BAND = common dso_local global i32 0, align 4
@SEQ_ENCLK16_CLK_OUT = common dso_local global i32 0, align 4
@SEQ_SEL4_16B = common dso_local global i32 0, align 4
@XTAL_CAPSELECT = common dso_local global i32 0, align 4
@IF_SEL_DBL = common dso_local global i32 0, align 4
@RFSYN_R_DIV = common dso_local global i32 0, align 4
@SEQ_EXTIQFSMPULSE = common dso_local global i32 0, align 4
@TG_R_DIV = common dso_local global i32 0, align 4
@SEQ_EXTSYNTHCALIF = common dso_local global i32 0, align 4
@SEQ_EXTDCCAL = common dso_local global i32 0, align 4
@AGC_EN_RSSI = common dso_local global i32 0, align 4
@RFA_ENCLKRFAGC = common dso_local global i32 0, align 4
@RFA_RSSI_REF = common dso_local global i32 0, align 4
@RFA_RSSI_REFH = common dso_local global i32 0, align 4
@RFA_RSSI_REFL = common dso_local global i32 0, align 4
@RFA_FLR = common dso_local global i32 0, align 4
@RFA_CEIL = common dso_local global i32 0, align 4
@MXL_DVBT = common dso_local global i64 0, align 8
@MXL_ATSC = common dso_local global i64 0, align 8
@MXL_QAM = common dso_local global i64 0, align 8
@MXL_DIGITAL_MODE = common dso_local global i64 0, align 8
@MXL_ANALOG_CABLE = common dso_local global i64 0, align 8
@MXL_ANALOG_OTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @MXL_BlockInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MXL_BlockInit(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl5005s_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %6, align 8
  store %struct.mxl5005s_state* %7, %struct.mxl5005s_state** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = call i64 @MXL_OverwriteICDefault(%struct.dvb_frontend* %8)
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = load i32, i32* @DN_IQTN_AMP_CUT, align 4
  %16 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %17 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %14, i32 %15, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %28 = load i32, i32* @BB_MODE, align 4
  %29 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %30 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %27, i32 %28, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = load i32, i32* @BB_BUF, align 4
  %42 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %43 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 3, i32 2
  %48 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %40, i32 %41, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %54 = load i32, i32* @BB_BUF_OA, align 4
  %55 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %56 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %53, i32 %54, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %67 = load i32, i32* @BB_IQSWAP, align 4
  %68 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %69 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  %74 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %66, i32 %67, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %80 = load i32, i32* @BB_INITSTATE_DLPF_TUNE, align 4
  %81 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %79, i32 %80, i32 0)
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  %86 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %87 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %1
  %91 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %92 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %118 [
    i32 8000000, label %94
    i32 7000000, label %102
    i32 6000000, label %110
  ]

94:                                               ; preds = %90
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %96 = load i32, i32* @BB_DLPF_BANDSEL, align 4
  %97 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %95, i32 %96, i32 0)
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %118

102:                                              ; preds = %90
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %104 = load i32, i32* @BB_DLPF_BANDSEL, align 4
  %105 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %103, i32 %104, i32 2)
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %118

110:                                              ; preds = %90
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %112 = load i32, i32* @BB_DLPF_BANDSEL, align 4
  %113 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %111, i32 %112, i32 3)
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %90, %110, %102, %94
  br label %166

119:                                              ; preds = %1
  %120 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %121 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %165 [
    i32 8000000, label %123
    i32 7000000, label %137
    i32 6000000, label %151
  ]

123:                                              ; preds = %119
  %124 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %125 = load i32, i32* @BB_ALPF_BANDSELECT, align 4
  %126 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %127 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 0, i32 3
  %132 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %124, i32 %125, i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %4, align 4
  br label %165

137:                                              ; preds = %119
  %138 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %139 = load i32, i32* @BB_ALPF_BANDSELECT, align 4
  %140 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %141 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 4
  %146 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %138, i32 %139, i32 %145)
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %4, align 4
  br label %165

151:                                              ; preds = %119
  %152 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %153 = load i32, i32* @BB_ALPF_BANDSELECT, align 4
  %154 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %155 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 2, i32 5
  %160 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %152, i32 %153, i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %119, %151, %137, %123
  br label %166

166:                                              ; preds = %165, %118
  %167 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %168 = load i32, i32* @RFSYN_CHP_GAIN, align 4
  %169 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %170 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 5, i32 8
  %175 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %167, i32 %168, i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %4, align 4
  %180 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %181 = load i32, i32* @RFSYN_EN_CHP_HIGAIN, align 4
  %182 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %183 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 1
  %188 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %180, i32 %181, i32 %187)
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %4, align 4
  %193 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %194 = load i32, i32* @EN_CHP_LIN_B, align 4
  %195 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %196 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 0, i32 0
  %201 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %193, i32 %194, i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %4, align 4
  %206 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %207 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %166
  %211 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %212 = load i32, i32* @AGC_IF, align 4
  %213 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %211, i32 %212, i32 15)
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %4, align 4
  %218 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %219 = load i32, i32* @AGC_RF, align 4
  %220 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %218, i32 %219, i32 15)
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %4, align 4
  br label %239

225:                                              ; preds = %166
  %226 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %227 = load i32, i32* @AGC_RF, align 4
  %228 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %229 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 15, i32 12
  %234 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %226, i32 %227, i32 %233)
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %225, %210
  %240 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %241 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 55
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %246 = load i32, i32* @AGC_IF, align 4
  %247 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %245, i32 %246, i32 0)
  %248 = load i32, i32* %4, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %244, %239
  %253 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %254 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 72
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %259 = load i32, i32* @AGC_IF, align 4
  %260 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %258, i32 %259, i32 1)
  %261 = load i32, i32* %4, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %257, %252
  %266 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %267 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 92
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %272 = load i32, i32* @AGC_IF, align 4
  %273 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %271, i32 %272, i32 2)
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %273
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %270, %265
  %279 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %280 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 110
  br i1 %282, label %283, label %291

283:                                              ; preds = %278
  %284 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %285 = load i32, i32* @AGC_IF, align 4
  %286 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %284, i32 %285, i32 3)
  %287 = load i32, i32* %4, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %283, %278
  %292 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %293 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 129
  br i1 %295, label %296, label %304

296:                                              ; preds = %291
  %297 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %298 = load i32, i32* @AGC_IF, align 4
  %299 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %297, i32 %298, i32 4)
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %301, %299
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %296, %291
  %305 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %306 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 147
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %311 = load i32, i32* @AGC_IF, align 4
  %312 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %310, i32 %311, i32 5)
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %312
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %4, align 4
  br label %317

317:                                              ; preds = %309, %304
  %318 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %319 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 168
  br i1 %321, label %322, label %330

322:                                              ; preds = %317
  %323 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %324 = load i32, i32* @AGC_IF, align 4
  %325 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %323, i32 %324, i32 6)
  %326 = load i32, i32* %4, align 4
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %327, %325
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %4, align 4
  br label %330

330:                                              ; preds = %322, %317
  %331 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %332 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 194
  br i1 %334, label %335, label %343

335:                                              ; preds = %330
  %336 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %337 = load i32, i32* @AGC_IF, align 4
  %338 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %336, i32 %337, i32 7)
  %339 = load i32, i32* %4, align 4
  %340 = sext i32 %339 to i64
  %341 = add nsw i64 %340, %338
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %335, %330
  %344 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %345 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 212
  br i1 %347, label %348, label %356

348:                                              ; preds = %343
  %349 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %350 = load i32, i32* @AGC_IF, align 4
  %351 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %349, i32 %350, i32 9)
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, %351
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %4, align 4
  br label %356

356:                                              ; preds = %348, %343
  %357 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %358 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = icmp eq i32 %359, 232
  br i1 %360, label %361, label %369

361:                                              ; preds = %356
  %362 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %363 = load i32, i32* @AGC_IF, align 4
  %364 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %362, i32 %363, i32 10)
  %365 = load i32, i32* %4, align 4
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %366, %364
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %4, align 4
  br label %369

369:                                              ; preds = %361, %356
  %370 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %371 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 252
  br i1 %373, label %374, label %382

374:                                              ; preds = %369
  %375 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %376 = load i32, i32* @AGC_IF, align 4
  %377 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %375, i32 %376, i32 11)
  %378 = load i32, i32* %4, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %379, %377
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %4, align 4
  br label %382

382:                                              ; preds = %374, %369
  %383 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %384 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 271
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %389 = load i32, i32* @AGC_IF, align 4
  %390 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %388, i32 %389, i32 12)
  %391 = load i32, i32* %4, align 4
  %392 = sext i32 %391 to i64
  %393 = add nsw i64 %392, %390
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %4, align 4
  br label %395

395:                                              ; preds = %387, %382
  %396 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %397 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 292
  br i1 %399, label %400, label %408

400:                                              ; preds = %395
  %401 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %402 = load i32, i32* @AGC_IF, align 4
  %403 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %401, i32 %402, i32 13)
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = add nsw i64 %405, %403
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %4, align 4
  br label %408

408:                                              ; preds = %400, %395
  %409 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %410 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 317
  br i1 %412, label %413, label %421

413:                                              ; preds = %408
  %414 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %415 = load i32, i32* @AGC_IF, align 4
  %416 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %414, i32 %415, i32 14)
  %417 = load i32, i32* %4, align 4
  %418 = sext i32 %417 to i64
  %419 = add nsw i64 %418, %416
  %420 = trunc i64 %419 to i32
  store i32 %420, i32* %4, align 4
  br label %421

421:                                              ; preds = %413, %408
  %422 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %423 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %424, 349
  br i1 %425, label %426, label %434

426:                                              ; preds = %421
  %427 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %428 = load i32, i32* @AGC_IF, align 4
  %429 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %427, i32 %428, i32 15)
  %430 = load i32, i32* %4, align 4
  %431 = sext i32 %430 to i64
  %432 = add nsw i64 %431, %429
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %4, align 4
  br label %434

434:                                              ; preds = %426, %421
  %435 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %436 = call i64 @MXL_IFSynthInit(%struct.dvb_frontend* %435)
  %437 = load i32, i32* %4, align 4
  %438 = sext i32 %437 to i64
  %439 = add nsw i64 %438, %436
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %4, align 4
  %441 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %442 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %441, i32 0, i32 5
  %443 = load i32, i32* %442, align 8
  %444 = icmp eq i32 %443, 200
  br i1 %444, label %445, label %460

445:                                              ; preds = %434
  %446 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %447 = load i32, i32* @DRV_RES_SEL, align 4
  %448 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %446, i32 %447, i32 6)
  %449 = load i32, i32* %4, align 4
  %450 = sext i32 %449 to i64
  %451 = add nsw i64 %450, %448
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %4, align 4
  %453 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %454 = load i32, i32* @I_DRIVER, align 4
  %455 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %453, i32 %454, i32 2)
  %456 = load i32, i32* %4, align 4
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %457, %455
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %4, align 4
  br label %460

460:                                              ; preds = %445, %434
  %461 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %462 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 8
  %464 = icmp eq i32 %463, 300
  br i1 %464, label %465, label %480

465:                                              ; preds = %460
  %466 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %467 = load i32, i32* @DRV_RES_SEL, align 4
  %468 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %466, i32 %467, i32 4)
  %469 = load i32, i32* %4, align 4
  %470 = sext i32 %469 to i64
  %471 = add nsw i64 %470, %468
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* %4, align 4
  %473 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %474 = load i32, i32* @I_DRIVER, align 4
  %475 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %473, i32 %474, i32 1)
  %476 = load i32, i32* %4, align 4
  %477 = sext i32 %476 to i64
  %478 = add nsw i64 %477, %475
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* %4, align 4
  br label %480

480:                                              ; preds = %465, %460
  %481 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %482 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %598

485:                                              ; preds = %480
  %486 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %487 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %486, i32 0, i32 6
  %488 = load i64, i64* %487, align 8
  %489 = icmp uge i64 %488, 4000000
  br i1 %489, label %490, label %524

490:                                              ; preds = %485
  %491 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %492 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %491, i32 0, i32 6
  %493 = load i64, i64* %492, align 8
  %494 = icmp ule i64 %493, 6280000
  br i1 %494, label %495, label %524

495:                                              ; preds = %490
  %496 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %497 = load i32, i32* @EN_AAF, align 4
  %498 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %496, i32 %497, i32 1)
  %499 = load i32, i32* %4, align 4
  %500 = sext i32 %499 to i64
  %501 = add nsw i64 %500, %498
  %502 = trunc i64 %501 to i32
  store i32 %502, i32* %4, align 4
  %503 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %504 = load i32, i32* @EN_3P, align 4
  %505 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %503, i32 %504, i32 1)
  %506 = load i32, i32* %4, align 4
  %507 = sext i32 %506 to i64
  %508 = add nsw i64 %507, %505
  %509 = trunc i64 %508 to i32
  store i32 %509, i32* %4, align 4
  %510 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %511 = load i32, i32* @EN_AUX_3P, align 4
  %512 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %510, i32 %511, i32 1)
  %513 = load i32, i32* %4, align 4
  %514 = sext i32 %513 to i64
  %515 = add nsw i64 %514, %512
  %516 = trunc i64 %515 to i32
  store i32 %516, i32* %4, align 4
  %517 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %518 = load i32, i32* @SEL_AAF_BAND, align 4
  %519 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %517, i32 %518, i32 0)
  %520 = load i32, i32* %4, align 4
  %521 = sext i32 %520 to i64
  %522 = add nsw i64 %521, %519
  %523 = trunc i64 %522 to i32
  store i32 %523, i32* %4, align 4
  br label %524

524:                                              ; preds = %495, %490, %485
  %525 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %526 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %525, i32 0, i32 6
  %527 = load i64, i64* %526, align 8
  %528 = icmp eq i64 %527, 36125000
  br i1 %528, label %534, label %529

529:                                              ; preds = %524
  %530 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %531 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %530, i32 0, i32 6
  %532 = load i64, i64* %531, align 8
  %533 = icmp eq i64 %532, 36150000
  br i1 %533, label %534, label %563

534:                                              ; preds = %529, %524
  %535 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %536 = load i32, i32* @EN_AAF, align 4
  %537 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %535, i32 %536, i32 1)
  %538 = load i32, i32* %4, align 4
  %539 = sext i32 %538 to i64
  %540 = add nsw i64 %539, %537
  %541 = trunc i64 %540 to i32
  store i32 %541, i32* %4, align 4
  %542 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %543 = load i32, i32* @EN_3P, align 4
  %544 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %542, i32 %543, i32 1)
  %545 = load i32, i32* %4, align 4
  %546 = sext i32 %545 to i64
  %547 = add nsw i64 %546, %544
  %548 = trunc i64 %547 to i32
  store i32 %548, i32* %4, align 4
  %549 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %550 = load i32, i32* @EN_AUX_3P, align 4
  %551 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %549, i32 %550, i32 1)
  %552 = load i32, i32* %4, align 4
  %553 = sext i32 %552 to i64
  %554 = add nsw i64 %553, %551
  %555 = trunc i64 %554 to i32
  store i32 %555, i32* %4, align 4
  %556 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %557 = load i32, i32* @SEL_AAF_BAND, align 4
  %558 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %556, i32 %557, i32 1)
  %559 = load i32, i32* %4, align 4
  %560 = sext i32 %559 to i64
  %561 = add nsw i64 %560, %558
  %562 = trunc i64 %561 to i32
  store i32 %562, i32* %4, align 4
  br label %563

563:                                              ; preds = %534, %529
  %564 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %565 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %564, i32 0, i32 6
  %566 = load i64, i64* %565, align 8
  %567 = icmp ugt i64 %566, 36150000
  br i1 %567, label %568, label %597

568:                                              ; preds = %563
  %569 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %570 = load i32, i32* @EN_AAF, align 4
  %571 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %569, i32 %570, i32 0)
  %572 = load i32, i32* %4, align 4
  %573 = sext i32 %572 to i64
  %574 = add nsw i64 %573, %571
  %575 = trunc i64 %574 to i32
  store i32 %575, i32* %4, align 4
  %576 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %577 = load i32, i32* @EN_3P, align 4
  %578 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %576, i32 %577, i32 1)
  %579 = load i32, i32* %4, align 4
  %580 = sext i32 %579 to i64
  %581 = add nsw i64 %580, %578
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %4, align 4
  %583 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %584 = load i32, i32* @EN_AUX_3P, align 4
  %585 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %583, i32 %584, i32 1)
  %586 = load i32, i32* %4, align 4
  %587 = sext i32 %586 to i64
  %588 = add nsw i64 %587, %585
  %589 = trunc i64 %588 to i32
  store i32 %589, i32* %4, align 4
  %590 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %591 = load i32, i32* @SEL_AAF_BAND, align 4
  %592 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %590, i32 %591, i32 1)
  %593 = load i32, i32* %4, align 4
  %594 = sext i32 %593 to i64
  %595 = add nsw i64 %594, %592
  %596 = trunc i64 %595 to i32
  store i32 %596, i32* %4, align 4
  br label %597

597:                                              ; preds = %568, %563
  br label %672

598:                                              ; preds = %480
  %599 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %600 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %599, i32 0, i32 6
  %601 = load i64, i64* %600, align 8
  %602 = icmp uge i64 %601, 4000000
  br i1 %602, label %603, label %637

603:                                              ; preds = %598
  %604 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %605 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %604, i32 0, i32 6
  %606 = load i64, i64* %605, align 8
  %607 = icmp ule i64 %606, 5000000
  br i1 %607, label %608, label %637

608:                                              ; preds = %603
  %609 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %610 = load i32, i32* @EN_AAF, align 4
  %611 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %609, i32 %610, i32 1)
  %612 = load i32, i32* %4, align 4
  %613 = sext i32 %612 to i64
  %614 = add nsw i64 %613, %611
  %615 = trunc i64 %614 to i32
  store i32 %615, i32* %4, align 4
  %616 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %617 = load i32, i32* @EN_3P, align 4
  %618 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %616, i32 %617, i32 1)
  %619 = load i32, i32* %4, align 4
  %620 = sext i32 %619 to i64
  %621 = add nsw i64 %620, %618
  %622 = trunc i64 %621 to i32
  store i32 %622, i32* %4, align 4
  %623 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %624 = load i32, i32* @EN_AUX_3P, align 4
  %625 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %623, i32 %624, i32 1)
  %626 = load i32, i32* %4, align 4
  %627 = sext i32 %626 to i64
  %628 = add nsw i64 %627, %625
  %629 = trunc i64 %628 to i32
  store i32 %629, i32* %4, align 4
  %630 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %631 = load i32, i32* @SEL_AAF_BAND, align 4
  %632 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %630, i32 %631, i32 0)
  %633 = load i32, i32* %4, align 4
  %634 = sext i32 %633 to i64
  %635 = add nsw i64 %634, %632
  %636 = trunc i64 %635 to i32
  store i32 %636, i32* %4, align 4
  br label %637

637:                                              ; preds = %608, %603, %598
  %638 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %639 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %638, i32 0, i32 6
  %640 = load i64, i64* %639, align 8
  %641 = icmp ugt i64 %640, 5000000
  br i1 %641, label %642, label %671

642:                                              ; preds = %637
  %643 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %644 = load i32, i32* @EN_AAF, align 4
  %645 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %643, i32 %644, i32 0)
  %646 = load i32, i32* %4, align 4
  %647 = sext i32 %646 to i64
  %648 = add nsw i64 %647, %645
  %649 = trunc i64 %648 to i32
  store i32 %649, i32* %4, align 4
  %650 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %651 = load i32, i32* @EN_3P, align 4
  %652 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %650, i32 %651, i32 0)
  %653 = load i32, i32* %4, align 4
  %654 = sext i32 %653 to i64
  %655 = add nsw i64 %654, %652
  %656 = trunc i64 %655 to i32
  store i32 %656, i32* %4, align 4
  %657 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %658 = load i32, i32* @EN_AUX_3P, align 4
  %659 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %657, i32 %658, i32 0)
  %660 = load i32, i32* %4, align 4
  %661 = sext i32 %660 to i64
  %662 = add nsw i64 %661, %659
  %663 = trunc i64 %662 to i32
  store i32 %663, i32* %4, align 4
  %664 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %665 = load i32, i32* @SEL_AAF_BAND, align 4
  %666 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %664, i32 %665, i32 0)
  %667 = load i32, i32* %4, align 4
  %668 = sext i32 %667 to i64
  %669 = add nsw i64 %668, %666
  %670 = trunc i64 %669 to i32
  store i32 %670, i32* %4, align 4
  br label %671

671:                                              ; preds = %642, %637
  br label %672

672:                                              ; preds = %671, %597
  %673 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %674 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %673, i32 0, i32 12
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %685

677:                                              ; preds = %672
  %678 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %679 = load i32, i32* @SEQ_ENCLK16_CLK_OUT, align 4
  %680 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %678, i32 %679, i32 1)
  %681 = load i32, i32* %4, align 4
  %682 = sext i32 %681 to i64
  %683 = add nsw i64 %682, %680
  %684 = trunc i64 %683 to i32
  store i32 %684, i32* %4, align 4
  br label %693

685:                                              ; preds = %672
  %686 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %687 = load i32, i32* @SEQ_ENCLK16_CLK_OUT, align 4
  %688 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %686, i32 %687, i32 0)
  %689 = load i32, i32* %4, align 4
  %690 = sext i32 %689 to i64
  %691 = add nsw i64 %690, %688
  %692 = trunc i64 %691 to i32
  store i32 %692, i32* %4, align 4
  br label %693

693:                                              ; preds = %685, %677
  %694 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %695 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %694, i32 0, i32 7
  %696 = load i32, i32* %695, align 8
  %697 = icmp eq i32 %696, 1
  br i1 %697, label %698, label %706

698:                                              ; preds = %693
  %699 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %700 = load i32, i32* @SEQ_SEL4_16B, align 4
  %701 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %699, i32 %700, i32 1)
  %702 = load i32, i32* %4, align 4
  %703 = sext i32 %702 to i64
  %704 = add nsw i64 %703, %701
  %705 = trunc i64 %704 to i32
  store i32 %705, i32* %4, align 4
  br label %706

706:                                              ; preds = %698, %693
  %707 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %708 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %707, i32 0, i32 7
  %709 = load i32, i32* %708, align 8
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %719

711:                                              ; preds = %706
  %712 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %713 = load i32, i32* @SEQ_SEL4_16B, align 4
  %714 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %712, i32 %713, i32 0)
  %715 = load i32, i32* %4, align 4
  %716 = sext i32 %715 to i64
  %717 = add nsw i64 %716, %714
  %718 = trunc i64 %717 to i32
  store i32 %718, i32* %4, align 4
  br label %719

719:                                              ; preds = %711, %706
  %720 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %721 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %720, i32 0, i32 11
  %722 = load i64, i64* %721, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %732

724:                                              ; preds = %719
  %725 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %726 = load i32, i32* @XTAL_CAPSELECT, align 4
  %727 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %725, i32 %726, i32 1)
  %728 = load i32, i32* %4, align 4
  %729 = sext i32 %728 to i64
  %730 = add nsw i64 %729, %727
  %731 = trunc i64 %730 to i32
  store i32 %731, i32* %4, align 4
  br label %740

732:                                              ; preds = %719
  %733 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %734 = load i32, i32* @XTAL_CAPSELECT, align 4
  %735 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %733, i32 %734, i32 0)
  %736 = load i32, i32* %4, align 4
  %737 = sext i32 %736 to i64
  %738 = add nsw i64 %737, %735
  %739 = trunc i64 %738 to i32
  store i32 %739, i32* %4, align 4
  br label %740

740:                                              ; preds = %732, %724
  %741 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %742 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %741, i32 0, i32 8
  %743 = load i64, i64* %742, align 8
  %744 = icmp uge i64 %743, 12000000
  br i1 %744, label %745, label %758

745:                                              ; preds = %740
  %746 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %747 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %746, i32 0, i32 8
  %748 = load i64, i64* %747, align 8
  %749 = icmp ule i64 %748, 16000000
  br i1 %749, label %750, label %758

750:                                              ; preds = %745
  %751 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %752 = load i32, i32* @IF_SEL_DBL, align 4
  %753 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %751, i32 %752, i32 1)
  %754 = load i32, i32* %4, align 4
  %755 = sext i32 %754 to i64
  %756 = add nsw i64 %755, %753
  %757 = trunc i64 %756 to i32
  store i32 %757, i32* %4, align 4
  br label %758

758:                                              ; preds = %750, %745, %740
  %759 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %760 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %759, i32 0, i32 8
  %761 = load i64, i64* %760, align 8
  %762 = icmp ugt i64 %761, 16000000
  br i1 %762, label %763, label %776

763:                                              ; preds = %758
  %764 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %765 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %764, i32 0, i32 8
  %766 = load i64, i64* %765, align 8
  %767 = icmp ule i64 %766, 32000000
  br i1 %767, label %768, label %776

768:                                              ; preds = %763
  %769 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %770 = load i32, i32* @IF_SEL_DBL, align 4
  %771 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %769, i32 %770, i32 0)
  %772 = load i32, i32* %4, align 4
  %773 = sext i32 %772 to i64
  %774 = add nsw i64 %773, %771
  %775 = trunc i64 %774 to i32
  store i32 %775, i32* %4, align 4
  br label %776

776:                                              ; preds = %768, %763, %758
  %777 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %778 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %777, i32 0, i32 8
  %779 = load i64, i64* %778, align 8
  %780 = icmp uge i64 %779, 12000000
  br i1 %780, label %781, label %794

781:                                              ; preds = %776
  %782 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %783 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %782, i32 0, i32 8
  %784 = load i64, i64* %783, align 8
  %785 = icmp ule i64 %784, 22000000
  br i1 %785, label %786, label %794

786:                                              ; preds = %781
  %787 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %788 = load i32, i32* @RFSYN_R_DIV, align 4
  %789 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %787, i32 %788, i32 3)
  %790 = load i32, i32* %4, align 4
  %791 = sext i32 %790 to i64
  %792 = add nsw i64 %791, %789
  %793 = trunc i64 %792 to i32
  store i32 %793, i32* %4, align 4
  br label %794

794:                                              ; preds = %786, %781, %776
  %795 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %796 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %795, i32 0, i32 8
  %797 = load i64, i64* %796, align 8
  %798 = icmp ugt i64 %797, 22000000
  br i1 %798, label %799, label %812

799:                                              ; preds = %794
  %800 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %801 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %800, i32 0, i32 8
  %802 = load i64, i64* %801, align 8
  %803 = icmp ule i64 %802, 32000000
  br i1 %803, label %804, label %812

804:                                              ; preds = %799
  %805 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %806 = load i32, i32* @RFSYN_R_DIV, align 4
  %807 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %805, i32 %806, i32 0)
  %808 = load i32, i32* %4, align 4
  %809 = sext i32 %808 to i64
  %810 = add nsw i64 %809, %807
  %811 = trunc i64 %810 to i32
  store i32 %811, i32* %4, align 4
  br label %812

812:                                              ; preds = %804, %799, %794
  %813 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %814 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %813, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = icmp eq i64 %815, 0
  br i1 %816, label %817, label %830

817:                                              ; preds = %812
  %818 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %819 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %818, i32 0, i32 2
  %820 = load i32, i32* %819, align 4
  %821 = icmp eq i32 %820, 1
  br i1 %821, label %822, label %830

822:                                              ; preds = %817
  %823 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %824 = load i32, i32* @SEQ_EXTIQFSMPULSE, align 4
  %825 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %823, i32 %824, i32 0)
  %826 = load i32, i32* %4, align 4
  %827 = sext i32 %826 to i64
  %828 = add nsw i64 %827, %825
  %829 = trunc i64 %828 to i32
  store i32 %829, i32* %4, align 4
  br label %838

830:                                              ; preds = %817, %812
  %831 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %832 = load i32, i32* @SEQ_EXTIQFSMPULSE, align 4
  %833 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %831, i32 %832, i32 1)
  %834 = load i32, i32* %4, align 4
  %835 = sext i32 %834 to i64
  %836 = add nsw i64 %835, %833
  %837 = trunc i64 %836 to i32
  store i32 %837, i32* %4, align 4
  br label %838

838:                                              ; preds = %830, %822
  %839 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %840 = load i32, i32* @TG_R_DIV, align 4
  %841 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %842 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %841, i32 0, i32 8
  %843 = load i64, i64* %842, align 8
  %844 = call i32 @MXL_Ceiling(i64 %843, i32 1000000)
  %845 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %839, i32 %840, i32 %844)
  %846 = load i32, i32* %4, align 4
  %847 = sext i32 %846 to i64
  %848 = add nsw i64 %847, %845
  %849 = trunc i64 %848 to i32
  store i32 %849, i32* %4, align 4
  %850 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %851 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %850, i32 0, i32 9
  %852 = load i64, i64* %851, align 8
  %853 = icmp ne i64 %852, 0
  br i1 %853, label %854, label %918

854:                                              ; preds = %838
  %855 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %856 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %857 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %855, i32 %856, i32 1)
  %858 = load i32, i32* %4, align 4
  %859 = sext i32 %858 to i64
  %860 = add nsw i64 %859, %857
  %861 = trunc i64 %860 to i32
  store i32 %861, i32* %4, align 4
  %862 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %863 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %864 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %862, i32 %863, i32 1)
  %865 = load i32, i32* %4, align 4
  %866 = sext i32 %865 to i64
  %867 = add nsw i64 %866, %864
  %868 = trunc i64 %867 to i32
  store i32 %868, i32* %4, align 4
  %869 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %870 = load i32, i32* @AGC_EN_RSSI, align 4
  %871 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %869, i32 %870, i32 1)
  %872 = load i32, i32* %4, align 4
  %873 = sext i32 %872 to i64
  %874 = add nsw i64 %873, %871
  %875 = trunc i64 %874 to i32
  store i32 %875, i32* %4, align 4
  %876 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %877 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %878 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %876, i32 %877, i32 1)
  %879 = load i32, i32* %4, align 4
  %880 = sext i32 %879 to i64
  %881 = add nsw i64 %880, %878
  %882 = trunc i64 %881 to i32
  store i32 %882, i32* %4, align 4
  %883 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %884 = load i32, i32* @RFA_RSSI_REF, align 4
  %885 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %883, i32 %884, i32 2)
  %886 = load i32, i32* %4, align 4
  %887 = sext i32 %886 to i64
  %888 = add nsw i64 %887, %885
  %889 = trunc i64 %888 to i32
  store i32 %889, i32* %4, align 4
  %890 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %891 = load i32, i32* @RFA_RSSI_REFH, align 4
  %892 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %890, i32 %891, i32 3)
  %893 = load i32, i32* %4, align 4
  %894 = sext i32 %893 to i64
  %895 = add nsw i64 %894, %892
  %896 = trunc i64 %895 to i32
  store i32 %896, i32* %4, align 4
  %897 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %898 = load i32, i32* @RFA_RSSI_REFL, align 4
  %899 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %897, i32 %898, i32 1)
  %900 = load i32, i32* %4, align 4
  %901 = sext i32 %900 to i64
  %902 = add nsw i64 %901, %899
  %903 = trunc i64 %902 to i32
  store i32 %903, i32* %4, align 4
  %904 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %905 = load i32, i32* @RFA_FLR, align 4
  %906 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %904, i32 %905, i32 0)
  %907 = load i32, i32* %4, align 4
  %908 = sext i32 %907 to i64
  %909 = add nsw i64 %908, %906
  %910 = trunc i64 %909 to i32
  store i32 %910, i32* %4, align 4
  %911 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %912 = load i32, i32* @RFA_CEIL, align 4
  %913 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %911, i32 %912, i32 12)
  %914 = load i32, i32* %4, align 4
  %915 = sext i32 %914 to i64
  %916 = add nsw i64 %915, %913
  %917 = trunc i64 %916 to i32
  store i32 %917, i32* %4, align 4
  br label %918

918:                                              ; preds = %854, %838
  %919 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %920 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %919, i32 0, i32 10
  %921 = load i64, i64* %920, align 8
  %922 = load i64, i64* @MXL_DVBT, align 8
  %923 = icmp eq i64 %921, %922
  br i1 %923, label %924, label %1011

924:                                              ; preds = %918
  %925 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %926 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %925, i32 0, i32 3
  store i32 1, i32* %926, align 8
  %927 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %928 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %929 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %927, i32 %928, i32 1)
  %930 = load i32, i32* %4, align 4
  %931 = sext i32 %930 to i64
  %932 = add nsw i64 %931, %929
  %933 = trunc i64 %932 to i32
  store i32 %933, i32* %4, align 4
  %934 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %935 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %936 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %934, i32 %935, i32 1)
  %937 = load i32, i32* %4, align 4
  %938 = sext i32 %937 to i64
  %939 = add nsw i64 %938, %936
  %940 = trunc i64 %939 to i32
  store i32 %940, i32* %4, align 4
  %941 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %942 = load i32, i32* @AGC_EN_RSSI, align 4
  %943 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %941, i32 %942, i32 1)
  %944 = load i32, i32* %4, align 4
  %945 = sext i32 %944 to i64
  %946 = add nsw i64 %945, %943
  %947 = trunc i64 %946 to i32
  store i32 %947, i32* %4, align 4
  %948 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %949 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %950 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %948, i32 %949, i32 1)
  %951 = load i32, i32* %4, align 4
  %952 = sext i32 %951 to i64
  %953 = add nsw i64 %952, %950
  %954 = trunc i64 %953 to i32
  store i32 %954, i32* %4, align 4
  %955 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %956 = load i32, i32* @RFA_RSSI_REF, align 4
  %957 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %955, i32 %956, i32 3)
  %958 = load i32, i32* %4, align 4
  %959 = sext i32 %958 to i64
  %960 = add nsw i64 %959, %957
  %961 = trunc i64 %960 to i32
  store i32 %961, i32* %4, align 4
  %962 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %963 = load i32, i32* @RFA_RSSI_REFH, align 4
  %964 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %962, i32 %963, i32 5)
  %965 = load i32, i32* %4, align 4
  %966 = sext i32 %965 to i64
  %967 = add nsw i64 %966, %964
  %968 = trunc i64 %967 to i32
  store i32 %968, i32* %4, align 4
  %969 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %970 = load i32, i32* @RFA_RSSI_REFL, align 4
  %971 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %969, i32 %970, i32 1)
  %972 = load i32, i32* %4, align 4
  %973 = sext i32 %972 to i64
  %974 = add nsw i64 %973, %971
  %975 = trunc i64 %974 to i32
  store i32 %975, i32* %4, align 4
  %976 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %977 = load i32, i32* @RFA_FLR, align 4
  %978 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %976, i32 %977, i32 2)
  %979 = load i32, i32* %4, align 4
  %980 = sext i32 %979 to i64
  %981 = add nsw i64 %980, %978
  %982 = trunc i64 %981 to i32
  store i32 %982, i32* %4, align 4
  %983 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %984 = load i32, i32* @RFA_CEIL, align 4
  %985 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %983, i32 %984, i32 13)
  %986 = load i32, i32* %4, align 4
  %987 = sext i32 %986 to i64
  %988 = add nsw i64 %987, %985
  %989 = trunc i64 %988 to i32
  store i32 %989, i32* %4, align 4
  %990 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %991 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %990, i32 0, i32 6
  %992 = load i64, i64* %991, align 8
  %993 = icmp ule i64 %992, 6280000
  br i1 %993, label %994, label %1002

994:                                              ; preds = %924
  %995 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %996 = load i32, i32* @BB_IQSWAP, align 4
  %997 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %995, i32 %996, i32 0)
  %998 = load i32, i32* %4, align 4
  %999 = sext i32 %998 to i64
  %1000 = add nsw i64 %999, %997
  %1001 = trunc i64 %1000 to i32
  store i32 %1001, i32* %4, align 4
  br label %1010

1002:                                             ; preds = %924
  %1003 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1004 = load i32, i32* @BB_IQSWAP, align 4
  %1005 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1003, i32 %1004, i32 1)
  %1006 = load i32, i32* %4, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = add nsw i64 %1007, %1005
  %1009 = trunc i64 %1008 to i32
  store i32 %1009, i32* %4, align 4
  br label %1010

1010:                                             ; preds = %1002, %994
  br label %1011

1011:                                             ; preds = %1010, %918
  %1012 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1013 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1012, i32 0, i32 10
  %1014 = load i64, i64* %1013, align 8
  %1015 = load i64, i64* @MXL_ATSC, align 8
  %1016 = icmp eq i64 %1014, %1015
  br i1 %1016, label %1017, label %1118

1017:                                             ; preds = %1011
  %1018 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1019 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1018, i32 0, i32 3
  store i32 1, i32* %1019, align 8
  %1020 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1021 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %1022 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1020, i32 %1021, i32 1)
  %1023 = load i32, i32* %4, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = add nsw i64 %1024, %1022
  %1026 = trunc i64 %1025 to i32
  store i32 %1026, i32* %4, align 4
  %1027 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1028 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %1029 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1027, i32 %1028, i32 1)
  %1030 = load i32, i32* %4, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = add nsw i64 %1031, %1029
  %1033 = trunc i64 %1032 to i32
  store i32 %1033, i32* %4, align 4
  %1034 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1035 = load i32, i32* @AGC_EN_RSSI, align 4
  %1036 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1034, i32 %1035, i32 1)
  %1037 = load i32, i32* %4, align 4
  %1038 = sext i32 %1037 to i64
  %1039 = add nsw i64 %1038, %1036
  %1040 = trunc i64 %1039 to i32
  store i32 %1040, i32* %4, align 4
  %1041 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1042 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %1043 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1041, i32 %1042, i32 1)
  %1044 = load i32, i32* %4, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = add nsw i64 %1045, %1043
  %1047 = trunc i64 %1046 to i32
  store i32 %1047, i32* %4, align 4
  %1048 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1049 = load i32, i32* @RFA_RSSI_REF, align 4
  %1050 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1048, i32 %1049, i32 2)
  %1051 = load i32, i32* %4, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = add nsw i64 %1052, %1050
  %1054 = trunc i64 %1053 to i32
  store i32 %1054, i32* %4, align 4
  %1055 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1056 = load i32, i32* @RFA_RSSI_REFH, align 4
  %1057 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1055, i32 %1056, i32 4)
  %1058 = load i32, i32* %4, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = add nsw i64 %1059, %1057
  %1061 = trunc i64 %1060 to i32
  store i32 %1061, i32* %4, align 4
  %1062 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1063 = load i32, i32* @RFA_RSSI_REFL, align 4
  %1064 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1062, i32 %1063, i32 1)
  %1065 = load i32, i32* %4, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = add nsw i64 %1066, %1064
  %1068 = trunc i64 %1067 to i32
  store i32 %1068, i32* %4, align 4
  %1069 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1070 = load i32, i32* @RFA_FLR, align 4
  %1071 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1069, i32 %1070, i32 2)
  %1072 = load i32, i32* %4, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = add nsw i64 %1073, %1071
  %1075 = trunc i64 %1074 to i32
  store i32 %1075, i32* %4, align 4
  %1076 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1077 = load i32, i32* @RFA_CEIL, align 4
  %1078 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1076, i32 %1077, i32 13)
  %1079 = load i32, i32* %4, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = add nsw i64 %1080, %1078
  %1082 = trunc i64 %1081 to i32
  store i32 %1082, i32* %4, align 4
  %1083 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1084 = load i32, i32* @BB_INITSTATE_DLPF_TUNE, align 4
  %1085 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1083, i32 %1084, i32 1)
  %1086 = load i32, i32* %4, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = add nsw i64 %1087, %1085
  %1089 = trunc i64 %1088 to i32
  store i32 %1089, i32* %4, align 4
  %1090 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1091 = load i32, i32* @RFSYN_CHP_GAIN, align 4
  %1092 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1090, i32 %1091, i32 5)
  %1093 = load i32, i32* %4, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = add nsw i64 %1094, %1092
  %1096 = trunc i64 %1095 to i32
  store i32 %1096, i32* %4, align 4
  %1097 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1098 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1097, i32 0, i32 6
  %1099 = load i64, i64* %1098, align 8
  %1100 = icmp ule i64 %1099, 6280000
  br i1 %1100, label %1101, label %1109

1101:                                             ; preds = %1017
  %1102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1103 = load i32, i32* @BB_IQSWAP, align 4
  %1104 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1102, i32 %1103, i32 0)
  %1105 = load i32, i32* %4, align 4
  %1106 = sext i32 %1105 to i64
  %1107 = add nsw i64 %1106, %1104
  %1108 = trunc i64 %1107 to i32
  store i32 %1108, i32* %4, align 4
  br label %1117

1109:                                             ; preds = %1017
  %1110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1111 = load i32, i32* @BB_IQSWAP, align 4
  %1112 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1110, i32 %1111, i32 1)
  %1113 = load i32, i32* %4, align 4
  %1114 = sext i32 %1113 to i64
  %1115 = add nsw i64 %1114, %1112
  %1116 = trunc i64 %1115 to i32
  store i32 %1116, i32* %4, align 4
  br label %1117

1117:                                             ; preds = %1109, %1101
  br label %1118

1118:                                             ; preds = %1117, %1011
  %1119 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1120 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1119, i32 0, i32 10
  %1121 = load i64, i64* %1120, align 8
  %1122 = load i64, i64* @MXL_QAM, align 8
  %1123 = icmp eq i64 %1121, %1122
  br i1 %1123, label %1124, label %1212

1124:                                             ; preds = %1118
  %1125 = load i64, i64* @MXL_DIGITAL_MODE, align 8
  %1126 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1127 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1126, i32 0, i32 0
  store i64 %1125, i64* %1127, align 8
  %1128 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1129 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %1130 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1128, i32 %1129, i32 1)
  %1131 = load i32, i32* %4, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = add nsw i64 %1132, %1130
  %1134 = trunc i64 %1133 to i32
  store i32 %1134, i32* %4, align 4
  %1135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1136 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %1137 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1135, i32 %1136, i32 1)
  %1138 = load i32, i32* %4, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = add nsw i64 %1139, %1137
  %1141 = trunc i64 %1140 to i32
  store i32 %1141, i32* %4, align 4
  %1142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1143 = load i32, i32* @AGC_EN_RSSI, align 4
  %1144 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1142, i32 %1143, i32 0)
  %1145 = load i32, i32* %4, align 4
  %1146 = sext i32 %1145 to i64
  %1147 = add nsw i64 %1146, %1144
  %1148 = trunc i64 %1147 to i32
  store i32 %1148, i32* %4, align 4
  %1149 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1150 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %1151 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1149, i32 %1150, i32 1)
  %1152 = load i32, i32* %4, align 4
  %1153 = sext i32 %1152 to i64
  %1154 = add nsw i64 %1153, %1151
  %1155 = trunc i64 %1154 to i32
  store i32 %1155, i32* %4, align 4
  %1156 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1157 = load i32, i32* @RFA_RSSI_REFH, align 4
  %1158 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1156, i32 %1157, i32 5)
  %1159 = load i32, i32* %4, align 4
  %1160 = sext i32 %1159 to i64
  %1161 = add nsw i64 %1160, %1158
  %1162 = trunc i64 %1161 to i32
  store i32 %1162, i32* %4, align 4
  %1163 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1164 = load i32, i32* @RFA_RSSI_REF, align 4
  %1165 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1163, i32 %1164, i32 3)
  %1166 = load i32, i32* %4, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = add nsw i64 %1167, %1165
  %1169 = trunc i64 %1168 to i32
  store i32 %1169, i32* %4, align 4
  %1170 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1171 = load i32, i32* @RFA_RSSI_REFL, align 4
  %1172 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1170, i32 %1171, i32 2)
  %1173 = load i32, i32* %4, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = add nsw i64 %1174, %1172
  %1176 = trunc i64 %1175 to i32
  store i32 %1176, i32* %4, align 4
  %1177 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1178 = load i32, i32* @RFSYN_CHP_GAIN, align 4
  %1179 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1177, i32 %1178, i32 3)
  %1180 = load i32, i32* %4, align 4
  %1181 = sext i32 %1180 to i64
  %1182 = add nsw i64 %1181, %1179
  %1183 = trunc i64 %1182 to i32
  store i32 %1183, i32* %4, align 4
  %1184 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1185 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1184, i32 0, i32 6
  %1186 = load i64, i64* %1185, align 8
  %1187 = icmp ule i64 %1186, 6280000
  br i1 %1187, label %1188, label %1196

1188:                                             ; preds = %1124
  %1189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1190 = load i32, i32* @BB_IQSWAP, align 4
  %1191 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1189, i32 %1190, i32 0)
  %1192 = load i32, i32* %4, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = add nsw i64 %1193, %1191
  %1195 = trunc i64 %1194 to i32
  store i32 %1195, i32* %4, align 4
  br label %1204

1196:                                             ; preds = %1124
  %1197 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1198 = load i32, i32* @BB_IQSWAP, align 4
  %1199 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1197, i32 %1198, i32 1)
  %1200 = load i32, i32* %4, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = add nsw i64 %1201, %1199
  %1203 = trunc i64 %1202 to i32
  store i32 %1203, i32* %4, align 4
  br label %1204

1204:                                             ; preds = %1196, %1188
  %1205 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1206 = load i32, i32* @RFSYN_CHP_GAIN, align 4
  %1207 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1205, i32 %1206, i32 2)
  %1208 = load i32, i32* %4, align 4
  %1209 = sext i32 %1208 to i64
  %1210 = add nsw i64 %1209, %1207
  %1211 = trunc i64 %1210 to i32
  store i32 %1211, i32* %4, align 4
  br label %1212

1212:                                             ; preds = %1204, %1118
  %1213 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1214 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1213, i32 0, i32 10
  %1215 = load i64, i64* %1214, align 8
  %1216 = load i64, i64* @MXL_ANALOG_CABLE, align 8
  %1217 = icmp eq i64 %1215, %1216
  br i1 %1217, label %1218, label %1270

1218:                                             ; preds = %1212
  %1219 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1220 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1219, i32 0, i32 3
  store i32 1, i32* %1220, align 8
  %1221 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1222 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %1223 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1221, i32 %1222, i32 1)
  %1224 = load i32, i32* %4, align 4
  %1225 = sext i32 %1224 to i64
  %1226 = add nsw i64 %1225, %1223
  %1227 = trunc i64 %1226 to i32
  store i32 %1227, i32* %4, align 4
  %1228 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1229 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %1230 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1228, i32 %1229, i32 1)
  %1231 = load i32, i32* %4, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = add nsw i64 %1232, %1230
  %1234 = trunc i64 %1233 to i32
  store i32 %1234, i32* %4, align 4
  %1235 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1236 = load i32, i32* @AGC_EN_RSSI, align 4
  %1237 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1235, i32 %1236, i32 0)
  %1238 = load i32, i32* %4, align 4
  %1239 = sext i32 %1238 to i64
  %1240 = add nsw i64 %1239, %1237
  %1241 = trunc i64 %1240 to i32
  store i32 %1241, i32* %4, align 4
  %1242 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1243 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %1244 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1242, i32 %1243, i32 1)
  %1245 = load i32, i32* %4, align 4
  %1246 = sext i32 %1245 to i64
  %1247 = add nsw i64 %1246, %1244
  %1248 = trunc i64 %1247 to i32
  store i32 %1248, i32* %4, align 4
  %1249 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1250 = load i32, i32* @AGC_IF, align 4
  %1251 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1249, i32 %1250, i32 1)
  %1252 = load i32, i32* %4, align 4
  %1253 = sext i32 %1252 to i64
  %1254 = add nsw i64 %1253, %1251
  %1255 = trunc i64 %1254 to i32
  store i32 %1255, i32* %4, align 4
  %1256 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1257 = load i32, i32* @AGC_RF, align 4
  %1258 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1256, i32 %1257, i32 15)
  %1259 = load i32, i32* %4, align 4
  %1260 = sext i32 %1259 to i64
  %1261 = add nsw i64 %1260, %1258
  %1262 = trunc i64 %1261 to i32
  store i32 %1262, i32* %4, align 4
  %1263 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1264 = load i32, i32* @BB_IQSWAP, align 4
  %1265 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1263, i32 %1264, i32 1)
  %1266 = load i32, i32* %4, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = add nsw i64 %1267, %1265
  %1269 = trunc i64 %1268 to i32
  store i32 %1269, i32* %4, align 4
  br label %1270

1270:                                             ; preds = %1218, %1212
  %1271 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1272 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1271, i32 0, i32 10
  %1273 = load i64, i64* %1272, align 8
  %1274 = load i64, i64* @MXL_ANALOG_OTA, align 8
  %1275 = icmp eq i64 %1273, %1274
  br i1 %1275, label %1276, label %1340

1276:                                             ; preds = %1270
  %1277 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1278 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %1279 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1277, i32 %1278, i32 1)
  %1280 = load i32, i32* %4, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = add nsw i64 %1281, %1279
  %1283 = trunc i64 %1282 to i32
  store i32 %1283, i32* %4, align 4
  %1284 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1285 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %1286 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1284, i32 %1285, i32 1)
  %1287 = load i32, i32* %4, align 4
  %1288 = sext i32 %1287 to i64
  %1289 = add nsw i64 %1288, %1286
  %1290 = trunc i64 %1289 to i32
  store i32 %1290, i32* %4, align 4
  %1291 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1292 = load i32, i32* @AGC_EN_RSSI, align 4
  %1293 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1291, i32 %1292, i32 1)
  %1294 = load i32, i32* %4, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = add nsw i64 %1295, %1293
  %1297 = trunc i64 %1296 to i32
  store i32 %1297, i32* %4, align 4
  %1298 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1299 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %1300 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1298, i32 %1299, i32 1)
  %1301 = load i32, i32* %4, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = add nsw i64 %1302, %1300
  %1304 = trunc i64 %1303 to i32
  store i32 %1304, i32* %4, align 4
  %1305 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1306 = load i32, i32* @RFA_RSSI_REFH, align 4
  %1307 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1305, i32 %1306, i32 5)
  %1308 = load i32, i32* %4, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = add nsw i64 %1309, %1307
  %1311 = trunc i64 %1310 to i32
  store i32 %1311, i32* %4, align 4
  %1312 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1313 = load i32, i32* @RFA_RSSI_REF, align 4
  %1314 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1312, i32 %1313, i32 3)
  %1315 = load i32, i32* %4, align 4
  %1316 = sext i32 %1315 to i64
  %1317 = add nsw i64 %1316, %1314
  %1318 = trunc i64 %1317 to i32
  store i32 %1318, i32* %4, align 4
  %1319 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1320 = load i32, i32* @RFA_RSSI_REFL, align 4
  %1321 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1319, i32 %1320, i32 2)
  %1322 = load i32, i32* %4, align 4
  %1323 = sext i32 %1322 to i64
  %1324 = add nsw i64 %1323, %1321
  %1325 = trunc i64 %1324 to i32
  store i32 %1325, i32* %4, align 4
  %1326 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1327 = load i32, i32* @RFSYN_CHP_GAIN, align 4
  %1328 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1326, i32 %1327, i32 3)
  %1329 = load i32, i32* %4, align 4
  %1330 = sext i32 %1329 to i64
  %1331 = add nsw i64 %1330, %1328
  %1332 = trunc i64 %1331 to i32
  store i32 %1332, i32* %4, align 4
  %1333 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1334 = load i32, i32* @BB_IQSWAP, align 4
  %1335 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1333, i32 %1334, i32 1)
  %1336 = load i32, i32* %4, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = add nsw i64 %1337, %1335
  %1339 = trunc i64 %1338 to i32
  store i32 %1339, i32* %4, align 4
  br label %1340

1340:                                             ; preds = %1276, %1270
  %1341 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %1342 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %1341, i32 0, i32 9
  %1343 = load i64, i64* %1342, align 8
  %1344 = icmp eq i64 %1343, 0
  br i1 %1344, label %1345, label %1374

1345:                                             ; preds = %1340
  %1346 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1347 = load i32, i32* @SEQ_EXTSYNTHCALIF, align 4
  %1348 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1346, i32 %1347, i32 1)
  %1349 = load i32, i32* %4, align 4
  %1350 = sext i32 %1349 to i64
  %1351 = add nsw i64 %1350, %1348
  %1352 = trunc i64 %1351 to i32
  store i32 %1352, i32* %4, align 4
  %1353 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1354 = load i32, i32* @SEQ_EXTDCCAL, align 4
  %1355 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1353, i32 %1354, i32 1)
  %1356 = load i32, i32* %4, align 4
  %1357 = sext i32 %1356 to i64
  %1358 = add nsw i64 %1357, %1355
  %1359 = trunc i64 %1358 to i32
  store i32 %1359, i32* %4, align 4
  %1360 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1361 = load i32, i32* @AGC_EN_RSSI, align 4
  %1362 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1360, i32 %1361, i32 0)
  %1363 = load i32, i32* %4, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = add nsw i64 %1364, %1362
  %1366 = trunc i64 %1365 to i32
  store i32 %1366, i32* %4, align 4
  %1367 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %1368 = load i32, i32* @RFA_ENCLKRFAGC, align 4
  %1369 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %1367, i32 %1368, i32 1)
  %1370 = load i32, i32* %4, align 4
  %1371 = sext i32 %1370 to i64
  %1372 = add nsw i64 %1371, %1369
  %1373 = trunc i64 %1372 to i32
  store i32 %1373, i32* %4, align 4
  br label %1374

1374:                                             ; preds = %1345, %1340
  %1375 = load i32, i32* %4, align 4
  ret i32 %1375
}

declare dso_local i64 @MXL_OverwriteICDefault(%struct.dvb_frontend*) #1

declare dso_local i64 @MXL_ControlWrite(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i64 @MXL_IFSynthInit(%struct.dvb_frontend*) #1

declare dso_local i32 @MXL_Ceiling(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
