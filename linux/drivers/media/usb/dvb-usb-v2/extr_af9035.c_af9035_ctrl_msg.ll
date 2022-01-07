; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.usb_req = type { i32, i32, i32, i32, i32*, i32* }
%struct.state = type { i32*, i32 }

@BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too much data wlen=%d rlen=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_FW_DL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"command=%02x checksum mismatch (%04x != %04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMD_IR_GET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"command=%02x failed fw error=%d\0A\00", align 1
@ACK_HDR_LEN = common dso_local global i32 0, align 4
@CHECKSUM_LEN = common dso_local global i32 0, align 4
@REQ_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.usb_req*)* @af9035_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %0, %struct.usb_req* %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.usb_req*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store %struct.usb_req* %1, %struct.usb_req** %4, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %13 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %12)
  store %struct.state* %13, %struct.state** %5, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %6, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %21 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BUF_LEN, align 4
  %24 = sub nsw i32 %23, 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %29 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BUF_LEN, align 4
  %32 = sub nsw i32 %31, 3
  %33 = sub nsw i32 %32, 2
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27, %2
  %36 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %39 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %43 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32*, i8*, i64, i32, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %262

48:                                               ; preds = %27
  %49 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %50 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 4, %51
  %53 = add nsw i32 %52, 2
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.state*, %struct.state** %5, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %60 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.state*, %struct.state** %5, align 8
  %63 = getelementptr inbounds %struct.state, %struct.state* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %67 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.state*, %struct.state** %5, align 8
  %70 = getelementptr inbounds %struct.state, %struct.state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %68, i32* %72, align 4
  %73 = load %struct.state*, %struct.state** %5, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.state*, %struct.state** %5, align 8
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %75, i32* %80, align 4
  %81 = load %struct.state*, %struct.state** %5, align 8
  %82 = getelementptr inbounds %struct.state, %struct.state* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %86 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %89 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32* %84, i32* %87, i32 %90)
  %92 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %93 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 4, %94
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %8, align 4
  %97 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %98 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 3, %99
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %9, align 4
  %102 = load %struct.state*, %struct.state** %5, align 8
  %103 = getelementptr inbounds %struct.state, %struct.state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.state*, %struct.state** %5, align 8
  %106 = getelementptr inbounds %struct.state, %struct.state* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @af9035_checksum(i32* %104, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 8
  %114 = load %struct.state*, %struct.state** %5, align 8
  %115 = getelementptr inbounds %struct.state, %struct.state* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.state*, %struct.state** %5, align 8
  %118 = getelementptr inbounds %struct.state, %struct.state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %116, i64 %123
  store i32 %113, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 255
  %127 = load %struct.state*, %struct.state** %5, align 8
  %128 = getelementptr inbounds %struct.state, %struct.state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.state*, %struct.state** %5, align 8
  %131 = getelementptr inbounds %struct.state, %struct.state* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 0
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %129, i64 %136
  store i32 %126, i32* %137, align 4
  %138 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %139 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @CMD_FW_DL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %48
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %144, %48
  %146 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %147 = load %struct.state*, %struct.state** %5, align 8
  %148 = getelementptr inbounds %struct.state, %struct.state* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.state*, %struct.state** %5, align 8
  %152 = getelementptr inbounds %struct.state, %struct.state* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device* %146, i32* %149, i32 %150, i32* %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %262

159:                                              ; preds = %145
  %160 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %161 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @CMD_FW_DL, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %262

167:                                              ; preds = %159
  %168 = load %struct.state*, %struct.state** %5, align 8
  %169 = getelementptr inbounds %struct.state, %struct.state* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sub nsw i32 %171, 2
  %173 = call i32 @af9035_checksum(i32* %170, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load %struct.state*, %struct.state** %5, align 8
  %175 = getelementptr inbounds %struct.state, %struct.state* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 8
  %183 = load %struct.state*, %struct.state** %5, align 8
  %184 = getelementptr inbounds %struct.state, %struct.state* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %182, %190
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %167
  %196 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %197 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %196, i32 0, i32 0
  %198 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %199 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 (i32*, i8*, i64, i32, ...) @dev_err(i32* %197, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %201, i32 %202, i32 %203)
  %205 = load i32, i32* @EIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %7, align 4
  br label %262

207:                                              ; preds = %167
  %208 = load %struct.state*, %struct.state** %5, align 8
  %209 = getelementptr inbounds %struct.state, %struct.state* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %244

214:                                              ; preds = %207
  %215 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %216 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* @CMD_IR_GET, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %228, label %221

221:                                              ; preds = %214
  %222 = load %struct.state*, %struct.state** %5, align 8
  %223 = getelementptr inbounds %struct.state, %struct.state* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %221, %214
  store i32 1, i32* %7, align 4
  br label %262

229:                                              ; preds = %221
  %230 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %231 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %230, i32 0, i32 0
  %232 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %233 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = load %struct.state*, %struct.state** %5, align 8
  %237 = getelementptr inbounds %struct.state, %struct.state* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @dev_dbg(i32* %231, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %235, i32 %240)
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %7, align 4
  br label %262

244:                                              ; preds = %207
  %245 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %246 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %251 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %250, i32 0, i32 5
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.state*, %struct.state** %5, align 8
  %254 = getelementptr inbounds %struct.state, %struct.state* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 3
  %257 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %258 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @memcpy(i32* %252, i32* %256, i32 %259)
  br label %261

261:                                              ; preds = %249, %244
  br label %262

262:                                              ; preds = %261, %229, %228, %195, %166, %158, %35
  %263 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %264 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %263, i32 0, i32 0
  %265 = call i32 @mutex_unlock(i32* %264)
  %266 = load i32, i32* %7, align 4
  ret i32 %266
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @af9035_checksum(i32*, i32) #1

declare dso_local i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
