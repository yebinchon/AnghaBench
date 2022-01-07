; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.af9015_state = type { i64* }
%struct.req_t = type { i64, i64, i64, i64, i64*, i8*, i8* }

@I2C_M_RD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WRITE_MEMORY = common dso_local global i8* null, align 8
@WRITE_I2C = common dso_local global i8* null, align 8
@READ_MEMORY = common dso_local global i8* null, align 8
@READ_I2C = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown msg, num %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @af9015_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.af9015_state*, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.req_t, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.dvb_usb_device* %17, %struct.dvb_usb_device** %8, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %18)
  store %struct.af9015_state* %19, %struct.af9015_state** %9, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  store %struct.usb_interface* %22, %struct.usb_interface** %10, align 8
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I2C_M_RD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %3
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %103

37:                                               ; preds = %28
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 0
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %14, align 8
  br label %102

52:                                               ; preds = %37
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i64 0
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i64 0
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 0
  %73 = or i32 %65, %72
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 2, i64* %14, align 8
  br label %101

76:                                               ; preds = %52
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 0
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 0
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 0
  %91 = or i32 %83, %90
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %12, align 8
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i64 0
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %13, align 8
  store i64 3, i64* %14, align 8
  br label %101

101:                                              ; preds = %76, %58
  br label %102

102:                                              ; preds = %101, %43
  br label %103

103:                                              ; preds = %102, %36
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %170

106:                                              ; preds = %103
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 0
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @I2C_M_RD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %170, label %114

114:                                              ; preds = %106
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i64 0
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 21
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %11, align 4
  br label %326

123:                                              ; preds = %114
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i64 0
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.af9015_state*, %struct.af9015_state** %9, align 8
  %129 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %127, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = load i8*, i8** @WRITE_MEMORY, align 8
  %136 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 6
  store i8* %135, i8** %136, align 8
  br label %140

137:                                              ; preds = %123
  %138 = load i8*, i8** @WRITE_I2C, align 8
  %139 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 6
  store i8* %138, i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i64 0
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 0
  store i64 %144, i64* %145, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 5
  store i8* %146, i8** %147, align 8
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 1
  store i64 %148, i64* %149, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 2
  store i64 %150, i64* %151, align 8
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i64 0
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %14, align 8
  %158 = sub i64 %156, %157
  %159 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 3
  store i64 %158, i64* %159, align 8
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 0
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %14, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = bitcast i32* %165 to i64*
  %167 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 4
  store i64* %166, i64** %167, align 8
  %168 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %169 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %168, %struct.req_t* %15)
  store i32 %169, i32* %11, align 4
  br label %320

170:                                              ; preds = %106, %103
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %248

173:                                              ; preds = %170
  %174 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i64 0
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @I2C_M_RD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %248, label %181

181:                                              ; preds = %173
  %182 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %183 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i64 1
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @I2C_M_RD, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %248

189:                                              ; preds = %181
  %190 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %191 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %190, i64 0
  %192 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %193, 3
  br i1 %194, label %201, label %195

195:                                              ; preds = %189
  %196 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %196, i64 1
  %198 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %199, 61
  br i1 %200, label %201, label %204

201:                                              ; preds = %195, %189
  %202 = load i32, i32* @EOPNOTSUPP, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %11, align 4
  br label %326

204:                                              ; preds = %195
  %205 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %206 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %205, i64 0
  %207 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.af9015_state*, %struct.af9015_state** %9, align 8
  %210 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %208, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %204
  %216 = load i8*, i8** @READ_MEMORY, align 8
  %217 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 6
  store i8* %216, i8** %217, align 8
  br label %221

218:                                              ; preds = %204
  %219 = load i8*, i8** @READ_I2C, align 8
  %220 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 6
  store i8* %219, i8** %220, align 8
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %223 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %222, i64 0
  %224 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 0
  store i64 %225, i64* %226, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 5
  store i8* %227, i8** %228, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 1
  store i64 %229, i64* %230, align 8
  %231 = load i64, i64* %14, align 8
  %232 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 2
  store i64 %231, i64* %232, align 8
  %233 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %234 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %233, i64 1
  %235 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 3
  store i64 %237, i64* %238, align 8
  %239 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %240 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %239, i64 1
  %241 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = bitcast i32* %243 to i64*
  %245 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 4
  store i64* %244, i64** %245, align 8
  %246 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %247 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %246, %struct.req_t* %15)
  store i32 %247, i32* %11, align 4
  br label %319

248:                                              ; preds = %181, %173, %170
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %311

251:                                              ; preds = %248
  %252 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %253 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %252, i64 0
  %254 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @I2C_M_RD, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %311

259:                                              ; preds = %251
  %260 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %261 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %260, i64 0
  %262 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp sgt i32 %263, 61
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i32, i32* @EOPNOTSUPP, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %11, align 4
  br label %326

268:                                              ; preds = %259
  %269 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %270 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %269, i64 0
  %271 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.af9015_state*, %struct.af9015_state** %9, align 8
  %274 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %272, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %268
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %11, align 4
  br label %326

282:                                              ; preds = %268
  %283 = load i8*, i8** @READ_I2C, align 8
  %284 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 6
  store i8* %283, i8** %284, align 8
  %285 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %286 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %285, i64 0
  %287 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 0
  store i64 %288, i64* %289, align 8
  %290 = load i8*, i8** %12, align 8
  %291 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 5
  store i8* %290, i8** %291, align 8
  %292 = load i64, i64* %13, align 8
  %293 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 1
  store i64 %292, i64* %293, align 8
  %294 = load i64, i64* %14, align 8
  %295 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 2
  store i64 %294, i64* %295, align 8
  %296 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %297 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %296, i64 0
  %298 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 3
  store i64 %300, i64* %301, align 8
  %302 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %303 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %302, i64 0
  %304 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = bitcast i32* %306 to i64*
  %308 = getelementptr inbounds %struct.req_t, %struct.req_t* %15, i32 0, i32 4
  store i64* %307, i64** %308, align 8
  %309 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %310 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %309, %struct.req_t* %15)
  store i32 %310, i32* %11, align 4
  br label %318

311:                                              ; preds = %251, %248
  %312 = load i32, i32* @EOPNOTSUPP, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %11, align 4
  %314 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %315 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %314, i32 0, i32 0
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @dev_dbg(i32* %315, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %316)
  br label %318

318:                                              ; preds = %311, %282
  br label %319

319:                                              ; preds = %318, %221
  br label %320

320:                                              ; preds = %319, %140
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  br label %326

324:                                              ; preds = %320
  %325 = load i32, i32* %7, align 4
  store i32 %325, i32* %4, align 4
  br label %332

326:                                              ; preds = %323, %279, %265, %201, %120
  %327 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %328 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %327, i32 0, i32 0
  %329 = load i32, i32* %11, align 4
  %330 = call i32 @dev_dbg(i32* %328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* %11, align 4
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %326, %324
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
