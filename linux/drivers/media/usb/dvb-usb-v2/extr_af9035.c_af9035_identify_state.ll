; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.state = type { i32, i32, i32, i32, i32*, i32 }
%struct.usb_req = type { i32, i32*, i32, i32*, i32, i32 }

@__const.af9035_identify_state.wbuf = private unnamed_addr constant [1 x i32] [i32 1], align 4
@CMD_FW_QUERYINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"prechip_version=%02x chip_version=%02x chip_type=%04x\0A\00", align 1
@AF9035_FIRMWARE_IT9135_V2 = common dso_local global i8* null, align 8
@AF9035_FIRMWARE_IT9135_V1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"no eeprom\0A\00", align 1
@EEPROM_BASE_IT9135 = common dso_local global i32 0, align 4
@AF9035_FIRMWARE_IT9303 = common dso_local global i8* null, align 8
@AF9035_FIRMWARE_AF9035 = common dso_local global i8* null, align 8
@EEPROM_BASE_AF9035 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"eeprom dump:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@EEPROM_TS_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"ts mode=%d dual mode=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"ts mode=%d not supported, defaulting to single tuner mode!\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"reply=%*ph\0A\00", align 1
@WARM = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8**)* @af9035_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_identify_state(%struct.dvb_usb_device* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x i32], align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca %struct.usb_req, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %17)
  store %struct.state* %18, %struct.state** %6, align 8
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = load %struct.usb_interface*, %struct.usb_interface** %20, align 8
  store %struct.usb_interface* %21, %struct.usb_interface** %7, align 8
  %22 = bitcast [1 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast ([1 x i32]* @__const.af9035_identify_state.wbuf to i8*), i64 4, i1 false)
  %23 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %16, i32 0, i32 0
  %24 = load i32, i32* @CMD_FW_QUERYINFO, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %16, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %16, i32 0, i32 2
  store i32 4, i32* %26, align 8
  %27 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %16, i32 0, i32 3
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %16, i32 0, i32 4
  store i32 16, i32* %29, align 8
  %30 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %16, i32 0, i32 5
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %35 = call i32 @af9035_rd_regs(%struct.dvb_usb_device* %33, i32 4642, i32* %34, i32 3)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %240

39:                                               ; preds = %2
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = load %struct.state*, %struct.state** %6, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 0
  %50 = or i32 %46, %49
  %51 = load %struct.state*, %struct.state** %6, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %54 = load %struct.state*, %struct.state** %6, align 8
  %55 = getelementptr inbounds %struct.state, %struct.state* %54, i32 0, i32 2
  %56 = call i32 @af9035_rd_reg(%struct.dvb_usb_device* %53, i32 14415, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  br label %240

60:                                               ; preds = %39
  %61 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %62 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %61, i32 0, i32 0
  %63 = load %struct.state*, %struct.state** %6, align 8
  %64 = getelementptr inbounds %struct.state, %struct.state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.state*, %struct.state** %6, align 8
  %67 = getelementptr inbounds %struct.state, %struct.state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.state*, %struct.state** %6, align 8
  %70 = getelementptr inbounds %struct.state, %struct.state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %71)
  %73 = load %struct.state*, %struct.state** %6, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 37173
  br i1 %76, label %77, label %106

77:                                               ; preds = %60
  %78 = load %struct.state*, %struct.state** %6, align 8
  %79 = getelementptr inbounds %struct.state, %struct.state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** @AF9035_FIRMWARE_IT9135_V2, align 8
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  store i32 17949, i32* %11, align 4
  br label %88

85:                                               ; preds = %77
  %86 = load i8*, i8** @AF9035_FIRMWARE_IT9135_V1, align 8
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  store i32 17947, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @af9035_rd_reg(%struct.dvb_usb_device* %89, i32 %90, i32* %13)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %240

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.state*, %struct.state** %6, align 8
  %103 = getelementptr inbounds %struct.state, %struct.state* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %208

104:                                              ; preds = %95
  %105 = load i32, i32* @EEPROM_BASE_IT9135, align 4
  store i32 %105, i32* %12, align 4
  br label %121

106:                                              ; preds = %60
  %107 = load %struct.state*, %struct.state** %6, align 8
  %108 = getelementptr inbounds %struct.state, %struct.state* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 37638
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** @AF9035_FIRMWARE_IT9303, align 8
  %113 = load i8**, i8*** %5, align 8
  store i8* %112, i8** %113, align 8
  %114 = load %struct.state*, %struct.state** %6, align 8
  %115 = getelementptr inbounds %struct.state, %struct.state* %114, i32 0, i32 3
  store i32 1, i32* %115, align 4
  br label %208

116:                                              ; preds = %106
  %117 = load i8*, i8** @AF9035_FIRMWARE_AF9035, align 8
  %118 = load i8**, i8*** %5, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* @EEPROM_BASE_AF9035, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %104
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 256
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %127, %128
  %130 = load %struct.state*, %struct.state** %6, align 8
  %131 = getelementptr inbounds %struct.state, %struct.state* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @af9035_rd_regs(%struct.dvb_usb_device* %126, i32 %129, i32* %135, i32 32)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %240

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 32
  store i32 %143, i32* %9, align 4
  br label %122

144:                                              ; preds = %122
  %145 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %146 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %145, i32 0, i32 0
  %147 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %161, %144
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 256
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %153 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %152, i32 0, i32 0
  %154 = load %struct.state*, %struct.state** %6, align 8
  %155 = getelementptr inbounds %struct.state, %struct.state* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 16, i32* %159)
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 16
  store i32 %163, i32* %9, align 4
  br label %148

164:                                              ; preds = %148
  %165 = load %struct.state*, %struct.state** %6, align 8
  %166 = getelementptr inbounds %struct.state, %struct.state* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @EEPROM_TS_MODE, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %13, align 4
  store i32 0, i32* %10, align 4
  %171 = load i32, i32* %13, align 4
  switch i32 %171, label %191 [
    i32 0, label %172
    i32 1, label %173
    i32 3, label %173
    i32 5, label %176
  ]

172:                                              ; preds = %164
  br label %192

173:                                              ; preds = %164, %164
  %174 = load %struct.state*, %struct.state** %6, align 8
  %175 = getelementptr inbounds %struct.state, %struct.state* %174, i32 0, i32 5
  store i32 1, i32* %175, align 8
  br label %192

176:                                              ; preds = %164
  %177 = load %struct.state*, %struct.state** %6, align 8
  %178 = getelementptr inbounds %struct.state, %struct.state* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 37173
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.state*, %struct.state** %6, align 8
  %183 = getelementptr inbounds %struct.state, %struct.state* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 37638
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.state*, %struct.state** %6, align 8
  %188 = getelementptr inbounds %struct.state, %struct.state* %187, i32 0, i32 5
  store i32 1, i32* %188, align 8
  br label %190

189:                                              ; preds = %181, %176
  store i32 1, i32* %10, align 4
  br label %190

190:                                              ; preds = %189, %186
  br label %192

191:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %192

192:                                              ; preds = %191, %190, %173, %172
  %193 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %194 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %193, i32 0, i32 0
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.state*, %struct.state** %6, align 8
  %197 = getelementptr inbounds %struct.state, %struct.state* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %192
  %203 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %204 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %203, i32 0, i32 0
  %205 = load i32, i32* %13, align 4
  %206 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %204, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %202, %192
  br label %208

208:                                              ; preds = %207, %111, %98
  %209 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %210 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %209, %struct.usb_req* %16)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %240

214:                                              ; preds = %208
  %215 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %216 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %215, i32 0, i32 0
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %218 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 4, i32* %217)
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %220 = load i32, i32* %219, align 16
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %214
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230, %226, %222, %214
  %235 = load i32, i32* @WARM, align 4
  store i32 %235, i32* %8, align 4
  br label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @COLD, align 4
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %3, align 4
  br label %246

240:                                              ; preds = %213, %139, %94, %59, %38
  %241 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %242 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %241, i32 0, i32 0
  %243 = load i32, i32* %8, align 4
  %244 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %243)
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %240, %238
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @af9035_rd_regs(%struct.dvb_usb_device*, i32, i32*, i32) #1

declare dso_local i32 @af9035_rd_reg(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @af9035_ctrl_msg(%struct.dvb_usb_device*, %struct.usb_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
