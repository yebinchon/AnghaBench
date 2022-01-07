; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.zl10353_state*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.zl10353_state = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.zl10353_set_parameters.pllbuf = private unnamed_addr constant [6 x i32] [i32 103, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@RESET = common dso_local global i32 0, align 4
@AGC_TARGET = common dso_local global i32 0, align 4
@ACQ_CTL = common dso_local global i32 0, align 4
@MCLK_RATIO = common dso_local global i32 0, align 4
@TRL_NOMINAL_RATE_1 = common dso_local global i32 0, align 4
@TRL_NOMINAL_RATE_0 = common dso_local global i32 0, align 4
@INPUT_FREQ_1 = common dso_local global i32 0, align 4
@INPUT_FREQ_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS_GIVEN_1 = common dso_local global i32 0, align 4
@TPS_GIVEN_0 = common dso_local global i32 0, align 4
@FSM_GO = common dso_local global i32 0, align 4
@TUNER_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @zl10353_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.zl10353_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.zl10353_state*, %struct.zl10353_state** %14, align 8
  store %struct.zl10353_state* %15, %struct.zl10353_state** %5, align 8
  %16 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x i32]* @__const.zl10353_set_parameters.pllbuf to i8*), i64 24, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %21 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = load i32, i32* @RESET, align 4
  %24 = call i32 @zl10353_single_write(%struct.dvb_frontend* %22, i32 %23, i32 128)
  %25 = call i32 @udelay(i32 200)
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = call i32 @zl10353_single_write(%struct.dvb_frontend* %26, i32 234, i32 1)
  %28 = call i32 @udelay(i32 200)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = call i32 @zl10353_single_write(%struct.dvb_frontend* %29, i32 234, i32 0)
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = load i32, i32* @AGC_TARGET, align 4
  %33 = call i32 @zl10353_single_write(%struct.dvb_frontend* %31, i32 %32, i32 40)
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 128
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 140
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, 2
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %51 = load i32, i32* @ACQ_CTL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @zl10353_single_write(%struct.dvb_frontend* %50, i32 %51, i32 %52)
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %73 [
    i32 6000000, label %57
    i32 7000000, label %65
    i32 8000000, label %76
  ]

57:                                               ; preds = %49
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = load i32, i32* @MCLK_RATIO, align 4
  %60 = call i32 @zl10353_single_write(%struct.dvb_frontend* %58, i32 %59, i32 151)
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %62 = call i32 @zl10353_single_write(%struct.dvb_frontend* %61, i32 100, i32 52)
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %64 = call i32 @zl10353_single_write(%struct.dvb_frontend* %63, i32 204, i32 221)
  br label %84

65:                                               ; preds = %49
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = load i32, i32* @MCLK_RATIO, align 4
  %68 = call i32 @zl10353_single_write(%struct.dvb_frontend* %66, i32 %67, i32 134)
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %70 = call i32 @zl10353_single_write(%struct.dvb_frontend* %69, i32 100, i32 53)
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = call i32 @zl10353_single_write(%struct.dvb_frontend* %71, i32 204, i32 115)
  br label %84

73:                                               ; preds = %49
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 2
  store i32 8000000, i32* %75, align 4
  br label %76

76:                                               ; preds = %49, %73
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = load i32, i32* @MCLK_RATIO, align 4
  %79 = call i32 @zl10353_single_write(%struct.dvb_frontend* %77, i32 %78, i32 117)
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %81 = call i32 @zl10353_single_write(%struct.dvb_frontend* %80, i32 100, i32 54)
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %83 = call i32 @zl10353_single_write(%struct.dvb_frontend* %82, i32 204, i32 115)
  br label %84

84:                                               ; preds = %76, %65, %57
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @zl10353_calc_nominal_rate(%struct.dvb_frontend* %85, i32 %88, i32* %6)
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %91 = load i32, i32* @TRL_NOMINAL_RATE_1, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @msb(i32 %92)
  %94 = call i32 @zl10353_single_write(%struct.dvb_frontend* %90, i32 %91, i32 %93)
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %96 = load i32, i32* @TRL_NOMINAL_RATE_0, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @lsb(i32 %97)
  %99 = call i32 @zl10353_single_write(%struct.dvb_frontend* %95, i32 %96, i32 %98)
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %104 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %106 = call i32 @zl10353_calc_input_freq(%struct.dvb_frontend* %105, i32* %7)
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %108 = load i32, i32* @INPUT_FREQ_1, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @msb(i32 %109)
  %111 = call i32 @zl10353_single_write(%struct.dvb_frontend* %107, i32 %108, i32 %110)
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %113 = load i32, i32* @INPUT_FREQ_0, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @lsb(i32 %114)
  %116 = call i32 @zl10353_single_write(%struct.dvb_frontend* %112, i32 %113, i32 %115)
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %133 [
    i32 150, label %120
    i32 149, label %123
    i32 148, label %126
    i32 147, label %129
    i32 151, label %132
    i32 146, label %132
  ]

120:                                              ; preds = %84
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, 128
  store i32 %122, i32* %10, align 4
  br label %136

123:                                              ; preds = %84
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, 256
  store i32 %125, i32* %10, align 4
  br label %136

126:                                              ; preds = %84
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, 384
  store i32 %128, i32* %10, align 4
  br label %136

129:                                              ; preds = %84
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, 512
  store i32 %131, i32* %10, align 4
  br label %136

132:                                              ; preds = %84, %84
  br label %136

133:                                              ; preds = %84
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %337

136:                                              ; preds = %132, %129, %126, %123, %120
  %137 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %165 [
    i32 150, label %140
    i32 149, label %143
    i32 148, label %146
    i32 147, label %149
    i32 151, label %152
    i32 146, label %152
    i32 145, label %153
  ]

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, 16
  store i32 %142, i32* %10, align 4
  br label %168

143:                                              ; preds = %136
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, 32
  store i32 %145, i32* %10, align 4
  br label %168

146:                                              ; preds = %136
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, 48
  store i32 %148, i32* %10, align 4
  br label %168

149:                                              ; preds = %136
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, 64
  store i32 %151, i32* %10, align 4
  br label %168

152:                                              ; preds = %136, %136
  br label %168

153:                                              ; preds = %136
  %154 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %155 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 136
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 135
  br i1 %162, label %163, label %164

163:                                              ; preds = %158, %153
  br label %168

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %136, %164
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %337

168:                                              ; preds = %163, %152, %149, %146, %143, %140
  %169 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %170 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %179 [
    i32 131, label %172
    i32 132, label %173
    i32 134, label %173
    i32 133, label %176
  ]

172:                                              ; preds = %168
  br label %182

173:                                              ; preds = %168, %168
  %174 = load i32, i32* %10, align 4
  %175 = or i32 %174, 8192
  store i32 %175, i32* %10, align 4
  br label %182

176:                                              ; preds = %168
  %177 = load i32, i32* %10, align 4
  %178 = or i32 %177, 16384
  store i32 %178, i32* %10, align 4
  br label %182

179:                                              ; preds = %168
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %337

182:                                              ; preds = %176, %173, %172
  %183 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %184 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %190 [
    i32 130, label %186
    i32 128, label %186
    i32 129, label %187
  ]

186:                                              ; preds = %182, %182
  br label %193

187:                                              ; preds = %182
  %188 = load i32, i32* %10, align 4
  %189 = or i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %193

190:                                              ; preds = %182
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %337

193:                                              ; preds = %187, %186
  %194 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %195 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %207 [
    i32 143, label %197
    i32 140, label %197
    i32 144, label %198
    i32 141, label %201
    i32 142, label %204
  ]

197:                                              ; preds = %193, %193
  br label %210

198:                                              ; preds = %193
  %199 = load i32, i32* %10, align 4
  %200 = or i32 %199, 4
  store i32 %200, i32* %10, align 4
  br label %210

201:                                              ; preds = %193
  %202 = load i32, i32* %10, align 4
  %203 = or i32 %202, 8
  store i32 %203, i32* %10, align 4
  br label %210

204:                                              ; preds = %193
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, 12
  store i32 %206, i32* %10, align 4
  br label %210

207:                                              ; preds = %193
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %2, align 4
  br label %337

210:                                              ; preds = %204, %201, %198, %197
  %211 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %212 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  switch i32 %213, label %224 [
    i32 136, label %214
    i32 135, label %214
    i32 139, label %215
    i32 138, label %218
    i32 137, label %221
  ]

214:                                              ; preds = %210, %210
  br label %227

215:                                              ; preds = %210
  %216 = load i32, i32* %10, align 4
  %217 = or i32 %216, 1024
  store i32 %217, i32* %10, align 4
  br label %227

218:                                              ; preds = %210
  %219 = load i32, i32* %10, align 4
  %220 = or i32 %219, 2048
  store i32 %220, i32* %10, align 4
  br label %227

221:                                              ; preds = %210
  %222 = load i32, i32* %10, align 4
  %223 = or i32 %222, 3072
  store i32 %223, i32* %10, align 4
  br label %227

224:                                              ; preds = %210
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %2, align 4
  br label %337

227:                                              ; preds = %221, %218, %215, %214
  %228 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %229 = load i32, i32* @TPS_GIVEN_1, align 4
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @msb(i32 %230)
  %232 = call i32 @zl10353_single_write(%struct.dvb_frontend* %228, i32 %229, i32 %231)
  %233 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %234 = load i32, i32* @TPS_GIVEN_0, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @lsb(i32 %235)
  %237 = call i32 @zl10353_single_write(%struct.dvb_frontend* %233, i32 %234, i32 %236)
  %238 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %239 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %240, align 8
  %242 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %241, null
  br i1 %242, label %243, label %251

243:                                              ; preds = %227
  %244 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %245 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %246, align 8
  %248 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %249 = bitcast %struct.dvb_frontend* %248 to %struct.dvb_frontend.2*
  %250 = call i32 %247(%struct.dvb_frontend.2* %249, i32 0)
  br label %251

251:                                              ; preds = %243, %227
  %252 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %253 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %288

257:                                              ; preds = %251
  %258 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %259 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %261, align 8
  %263 = icmp ne i32 (%struct.dvb_frontend.1*)* %262, null
  br i1 %263, label %264, label %287

264:                                              ; preds = %257
  %265 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %266 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %268, align 8
  %270 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %271 = bitcast %struct.dvb_frontend* %270 to %struct.dvb_frontend.1*
  %272 = call i32 %269(%struct.dvb_frontend.1* %271)
  %273 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %274 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %275, align 8
  %277 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %276, null
  br i1 %277, label %278, label %286

278:                                              ; preds = %264
  %279 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %280 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  %282 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %281, align 8
  %283 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %284 = bitcast %struct.dvb_frontend* %283 to %struct.dvb_frontend.2*
  %285 = call i32 %282(%struct.dvb_frontend.2* %284, i32 0)
  br label %286

286:                                              ; preds = %278, %264
  br label %287

287:                                              ; preds = %286, %257
  br label %313

288:                                              ; preds = %251
  %289 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %290 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %292, align 8
  %294 = icmp ne i32 (%struct.dvb_frontend.0*, i32*, i32)* %293, null
  br i1 %294, label %295, label %312

295:                                              ; preds = %288
  %296 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %297 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  %300 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %299, align 8
  %301 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %302 = bitcast %struct.dvb_frontend* %301 to %struct.dvb_frontend.0*
  %303 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = call i32 %300(%struct.dvb_frontend.0* %302, i32* %304, i32 5)
  %306 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 1
  store i32 %308, i32* %306, align 4
  %309 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %310 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %311 = call i32 @zl10353_write(%struct.dvb_frontend* %309, i32* %310, i32 24)
  br label %312

312:                                              ; preds = %295, %288
  br label %313

313:                                              ; preds = %312, %287
  %314 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %315 = call i32 @zl10353_single_write(%struct.dvb_frontend* %314, i32 95, i32 19)
  %316 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %317 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %313
  %322 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %323 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %325, align 8
  %327 = icmp eq i32 (%struct.dvb_frontend.0*, i32*, i32)* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %321, %313
  %329 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %330 = load i32, i32* @FSM_GO, align 4
  %331 = call i32 @zl10353_single_write(%struct.dvb_frontend* %329, i32 %330, i32 1)
  br label %336

332:                                              ; preds = %321
  %333 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %334 = load i32, i32* @TUNER_GO, align 4
  %335 = call i32 @zl10353_single_write(%struct.dvb_frontend* %333, i32 %334, i32 1)
  br label %336

336:                                              ; preds = %332, %328
  store i32 0, i32* %2, align 4
  br label %337

337:                                              ; preds = %336, %224, %207, %190, %179, %165, %133
  %338 = load i32, i32* %2, align 4
  ret i32 %338
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zl10353_single_write(%struct.dvb_frontend*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @zl10353_calc_nominal_rate(%struct.dvb_frontend*, i32, i32*) #2

declare dso_local i32 @msb(i32) #2

declare dso_local i32 @lsb(i32) #2

declare dso_local i32 @zl10353_calc_input_freq(%struct.dvb_frontend*, i32*) #2

declare dso_local i32 @zl10353_write(%struct.dvb_frontend*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
