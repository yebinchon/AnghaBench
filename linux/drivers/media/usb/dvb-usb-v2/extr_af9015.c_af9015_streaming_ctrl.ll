; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_3__*, %struct.usb_interface* }
%struct.TYPE_3__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.af9015_state = type { i32*, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"adap id %d, onoff %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"set usb and ts interface\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @af9015_streaming_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_streaming_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.af9015_state*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = call %struct.dvb_usb_device* @fe_to_d(%struct.dvb_frontend* %16)
  store %struct.dvb_usb_device* %17, %struct.dvb_usb_device** %6, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %19 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %18)
  store %struct.af9015_state* %19, %struct.af9015_state** %7, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 1
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  store %struct.usb_interface* %22, %struct.usb_interface** %8, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = call %struct.TYPE_4__* @fe_to_adap(%struct.dvb_frontend* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %33 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %129, label %40

40:                                               ; preds = %2
  %41 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_SPEED_FULL, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 5, i32 87
  %53 = mul nsw i32 %52, 188
  %54 = sdiv i32 %53, 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_SPEED_FULL, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 64, i32 512
  %64 = sdiv i32 %63, 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %65, 0
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %40
  store i32 56712, i32* %12, align 4
  store i32 56588, i32* %13, align 4
  br label %77

76:                                               ; preds = %40
  store i32 56714, i32* %12, align 4
  store i32 56589, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %79 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %83 = call i32 @regmap_bulk_write(i32 %80, i32 %81, i32* %82, i32 2)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %257

87:                                               ; preds = %77
  %88 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %89 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @regmap_write(i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %257

97:                                               ; preds = %87
  %98 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %99 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %10, align 4
  store i32 16, i32* %11, align 4
  br label %104

103:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %106 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @regmap_update_bits(i32 %107, i32 54539, i32 1, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %257

113:                                              ; preds = %104
  %114 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %115 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @regmap_update_bits(i32 %116, i32 54560, i32 16, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %257

122:                                              ; preds = %113
  %123 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %124 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %2
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %132
  %136 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %137 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @regmap_update_bits(i32 %138, i32 56595, i32 32, i32 0)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %257

143:                                              ; preds = %135
  %144 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %145 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @regmap_update_bits(i32 %146, i32 56593, i32 32, i32 32)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %257

151:                                              ; preds = %143
  %152 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %153 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @regmap_update_bits(i32 %154, i32 54535, i32 4, i32 0)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %257

159:                                              ; preds = %151
  br label %256

160:                                              ; preds = %132, %129
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %191

163:                                              ; preds = %160
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %163
  %167 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %168 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @regmap_update_bits(i32 %169, i32 56595, i32 64, i32 0)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %257

174:                                              ; preds = %166
  %175 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %176 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @regmap_update_bits(i32 %177, i32 56593, i32 64, i32 64)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %257

182:                                              ; preds = %174
  %183 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %184 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @regmap_update_bits(i32 %185, i32 54539, i32 2, i32 0)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %257

190:                                              ; preds = %182
  br label %255

191:                                              ; preds = %163, %160
  %192 = load i32, i32* %15, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %222, label %197

197:                                              ; preds = %194
  %198 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %199 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @regmap_update_bits(i32 %200, i32 54535, i32 4, i32 4)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %257

205:                                              ; preds = %197
  %206 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %207 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @regmap_update_bits(i32 %208, i32 56593, i32 32, i32 0)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %257

213:                                              ; preds = %205
  %214 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %215 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @regmap_update_bits(i32 %216, i32 56595, i32 32, i32 32)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  br label %257

221:                                              ; preds = %213
  br label %254

222:                                              ; preds = %194, %191
  %223 = load i32, i32* %15, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %253, label %228

228:                                              ; preds = %225
  %229 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %230 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @regmap_update_bits(i32 %231, i32 54539, i32 2, i32 2)
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %257

236:                                              ; preds = %228
  %237 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %238 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @regmap_update_bits(i32 %239, i32 56593, i32 64, i32 0)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %257

244:                                              ; preds = %236
  %245 = load %struct.af9015_state*, %struct.af9015_state** %7, align 8
  %246 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @regmap_update_bits(i32 %247, i32 56595, i32 64, i32 64)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %257

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252, %225, %222
  br label %254

254:                                              ; preds = %253, %221
  br label %255

255:                                              ; preds = %254, %190
  br label %256

256:                                              ; preds = %255, %159
  store i32 0, i32* %3, align 4
  br label %263

257:                                              ; preds = %251, %243, %235, %220, %212, %204, %189, %181, %173, %158, %150, %142, %121, %112, %96, %86
  %258 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %259 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %258, i32 0, i32 0
  %260 = load i32, i32* %9, align 4
  %261 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %9, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %257, %256
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.dvb_usb_device* @fe_to_d(%struct.dvb_frontend*) #1

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local %struct.TYPE_4__* @fe_to_adap(%struct.dvb_frontend*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
