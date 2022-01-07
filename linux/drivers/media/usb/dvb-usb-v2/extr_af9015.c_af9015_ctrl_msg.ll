; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.req_t = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.af9015_state = type { i32*, i32 }

@READ_WRITE_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unknown cmd %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"too much data, cmd %u, len %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cmd failed %u\0A\00", align 1
@ACK_HDR_LEN = common dso_local global i64 0, align 8
@REQ_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.req_t*)* @af9015_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %0, %struct.req_t* %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.req_t*, align 8
  %5 = alloca %struct.af9015_state*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store %struct.req_t* %1, %struct.req_t** %4, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %11)
  store %struct.af9015_state* %12, %struct.af9015_state** %5, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %6, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.req_t*, %struct.req_t** %4, align 8
  %20 = getelementptr inbounds %struct.req_t, %struct.req_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %23 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %27 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %31 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %28, i32* %33, align 4
  %34 = load %struct.req_t*, %struct.req_t** %4, align 8
  %35 = getelementptr inbounds %struct.req_t, %struct.req_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 1
  %38 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %39 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.req_t*, %struct.req_t** %4, align 8
  %43 = getelementptr inbounds %struct.req_t, %struct.req_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 8
  %46 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %47 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %45, i32* %49, align 4
  %50 = load %struct.req_t*, %struct.req_t** %4, align 8
  %51 = getelementptr inbounds %struct.req_t, %struct.req_t* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 255
  %54 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %55 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.req_t*, %struct.req_t** %4, align 8
  %59 = getelementptr inbounds %struct.req_t, %struct.req_t* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %62 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %60, i32* %64, align 4
  %65 = load %struct.req_t*, %struct.req_t** %4, align 8
  %66 = getelementptr inbounds %struct.req_t, %struct.req_t* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %69 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  store i32 %67, i32* %71, align 4
  %72 = load %struct.req_t*, %struct.req_t** %4, align 8
  %73 = getelementptr inbounds %struct.req_t, %struct.req_t* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %76 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  store i32 %74, i32* %78, align 4
  %79 = load %struct.req_t*, %struct.req_t** %4, align 8
  %80 = getelementptr inbounds %struct.req_t, %struct.req_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %115 [
    i32 134, label %82
    i32 132, label %82
    i32 131, label %82
    i32 133, label %83
    i32 130, label %90
    i32 129, label %96
    i32 128, label %114
    i32 136, label %114
    i32 135, label %114
    i32 137, label %114
  ]

82:                                               ; preds = %2, %2, %2
  store i32 0, i32* %10, align 4
  br label %124

83:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %84 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %85 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %2, %83
  %91 = load i32, i32* @READ_WRITE_I2C, align 4
  %92 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %93 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  br label %124

96:                                               ; preds = %2
  %97 = load %struct.req_t*, %struct.req_t** %4, align 8
  %98 = getelementptr inbounds %struct.req_t, %struct.req_t* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 65280
  %101 = icmp eq i32 %100, 65280
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.req_t*, %struct.req_t** %4, align 8
  %104 = getelementptr inbounds %struct.req_t, %struct.req_t* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 65280
  %107 = icmp eq i32 %106, 44544
  br i1 %107, label %108, label %113

108:                                              ; preds = %102, %96
  %109 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %110 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 128, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %102
  br label %114

114:                                              ; preds = %2, %2, %2, %2, %113
  br label %124

115:                                              ; preds = %2
  %116 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %117 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %116, i32 0, i32 0
  %118 = load %struct.req_t*, %struct.req_t** %4, align 8
  %119 = getelementptr inbounds %struct.req_t, %struct.req_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %244

124:                                              ; preds = %114, %90, %82
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.req_t*, %struct.req_t** %4, align 8
  %129 = getelementptr inbounds %struct.req_t, %struct.req_t* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BUF_LEN, align 4
  %132 = sub nsw i32 %131, 8
  %133 = icmp sgt i32 %130, %132
  br i1 %133, label %144, label %134

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %134
  %138 = load %struct.req_t*, %struct.req_t** %4, align 8
  %139 = getelementptr inbounds %struct.req_t, %struct.req_t* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BUF_LEN, align 4
  %142 = sub nsw i32 %141, 2
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %137, %127
  %145 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %146 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %145, i32 0, i32 0
  %147 = load %struct.req_t*, %struct.req_t** %4, align 8
  %148 = getelementptr inbounds %struct.req_t, %struct.req_t* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.req_t*, %struct.req_t** %4, align 8
  %151 = getelementptr inbounds %struct.req_t, %struct.req_t* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %244

156:                                              ; preds = %137, %134
  store i32 8, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %156
  %160 = load %struct.req_t*, %struct.req_t** %4, align 8
  %161 = getelementptr inbounds %struct.req_t, %struct.req_t* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %166 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = load %struct.req_t*, %struct.req_t** %4, align 8
  %170 = getelementptr inbounds %struct.req_t, %struct.req_t* %169, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.req_t*, %struct.req_t** %4, align 8
  %173 = getelementptr inbounds %struct.req_t, %struct.req_t* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @memcpy(i32* %168, i32* %171, i32 %174)
  br label %182

176:                                              ; preds = %156
  %177 = load %struct.req_t*, %struct.req_t** %4, align 8
  %178 = getelementptr inbounds %struct.req_t, %struct.req_t* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %176, %159
  %183 = load %struct.req_t*, %struct.req_t** %4, align 8
  %184 = getelementptr inbounds %struct.req_t, %struct.req_t* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 135
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.req_t*, %struct.req_t** %4, align 8
  %189 = getelementptr inbounds %struct.req_t, %struct.req_t* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 131
  br i1 %191, label %192, label %193

192:                                              ; preds = %187, %182
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %192, %187
  %194 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %195 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %196 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %200 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device* %194, i32* %197, i32 %198, i32* %201, i32 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %193
  br label %244

207:                                              ; preds = %193
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %207
  %211 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %212 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %210
  %218 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %219 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %218, i32 0, i32 0
  %220 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %221 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %219, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @EIO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %7, align 4
  br label %244

228:                                              ; preds = %210, %207
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %228
  %232 = load %struct.req_t*, %struct.req_t** %4, align 8
  %233 = getelementptr inbounds %struct.req_t, %struct.req_t* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %236 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load %struct.req_t*, %struct.req_t** %4, align 8
  %240 = getelementptr inbounds %struct.req_t, %struct.req_t* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @memcpy(i32* %234, i32* %238, i32 %241)
  br label %243

243:                                              ; preds = %231, %228
  br label %244

244:                                              ; preds = %243, %217, %206, %144, %115
  %245 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %246 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %245, i32 0, i32 0
  %247 = call i32 @mutex_unlock(i32* %246)
  %248 = load i32, i32* %7, align 4
  ret i32 %248
}

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
