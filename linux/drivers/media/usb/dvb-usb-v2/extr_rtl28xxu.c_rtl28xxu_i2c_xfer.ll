; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, %struct.rtl28xxu_dev* }
%struct.rtl28xxu_dev = type { i32, i32 }
%struct.rtl28xxu_req = type { i32, i32, i32, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CMD_DEMOD_RD = common dso_local global i32 0, align 4
@CMD_I2C_RD = common dso_local global i32 0, align 4
@CMD_I2C_DA_WR = common dso_local global i8* null, align 8
@CMD_I2C_DA_RD = common dso_local global i8* null, align 8
@CMD_DEMOD_WR = common dso_local global i32 0, align 4
@CMD_I2C_WR = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @rtl28xxu_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca %struct.rtl28xxu_dev*, align 8
  %11 = alloca %struct.rtl28xxu_req, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %9, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %15, align 8
  store %struct.rtl28xxu_dev* %16, %struct.rtl28xxu_dev** %10, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %407

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %202

27:                                               ; preds = %24
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I2C_M_RD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %202, label %35

35:                                               ; preds = %27
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 1
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %202

43:                                               ; preds = %35
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 0
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 24
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 1
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 24
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %395

58:                                               ; preds = %49
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i64 0
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 16
  br i1 %63, label %64, label %116

64:                                               ; preds = %58
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i64 0
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %74 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i64 1
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %75, i32* %80, align 4
  store i32 0, i32* %8, align 4
  br label %115

81:                                               ; preds = %64
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i64 0
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i64 0
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 1
  %94 = or i32 %88, %93
  %95 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* @CMD_DEMOD_RD, align 4
  %97 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %98 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i64 1
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 1
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %111, i32** %112, align 8
  %113 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %114 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %113, %struct.rtl28xxu_req* %11)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %81, %72
  br label %200

116:                                              ; preds = %58
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 0
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 2
  br i1 %121, label %122, label %152

122:                                              ; preds = %116
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i64 0
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i64 0
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = shl i32 %133, 1
  %135 = or i32 %129, %134
  %136 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = load i32, i32* @CMD_I2C_RD, align 4
  %138 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 1
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %142, i32* %143, align 8
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 1
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %148, i32** %149, align 8
  %150 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %151 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %150, %struct.rtl28xxu_req* %11)
  store i32 %151, i32* %8, align 4
  br label %199

152:                                              ; preds = %116
  %153 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i64 0
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 1
  %158 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load i8*, i8** @CMD_I2C_DA_WR, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %160, i32* %161, align 4
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i64 0
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %165, i32* %166, align 8
  %167 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i64 0
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %170, i32** %171, align 8
  %172 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %173 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %172, %struct.rtl28xxu_req* %11)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %152
  br label %395

177:                                              ; preds = %152
  %178 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %179 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i64 0
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 %181, 1
  %183 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %182, i32* %183, align 8
  %184 = load i8*, i8** @CMD_I2C_DA_RD, align 8
  %185 = ptrtoint i8* %184 to i32
  %186 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %185, i32* %186, align 4
  %187 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i64 1
  %189 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %190, i32* %191, align 8
  %192 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i64 1
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %195, i32** %196, align 8
  %197 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %198 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %197, %struct.rtl28xxu_req* %11)
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %177, %122
  br label %200

200:                                              ; preds = %199, %115
  br label %201

201:                                              ; preds = %200
  br label %386

202:                                              ; preds = %35, %27, %24
  %203 = load i32, i32* %7, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %348

205:                                              ; preds = %202
  %206 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %207 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %206, i64 0
  %208 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @I2C_M_RD, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %348, label %213

213:                                              ; preds = %205
  %214 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %215 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %214, i64 0
  %216 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 22
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load i32, i32* @EOPNOTSUPP, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %8, align 4
  br label %395

222:                                              ; preds = %213
  %223 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %224 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i64 0
  %225 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 16
  br i1 %227, label %228, label %281

228:                                              ; preds = %222
  %229 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %230 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %229, i64 0
  %231 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %228
  %237 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %238 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %237, i64 0
  %239 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %244 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  store i32 0, i32* %8, align 4
  br label %280

245:                                              ; preds = %228
  %246 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %247 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %246, i64 0
  %248 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 8
  %253 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %254 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %253, i64 0
  %255 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = shl i32 %256, 1
  %258 = or i32 %252, %257
  %259 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %258, i32* %259, align 8
  %260 = load i32, i32* @CMD_DEMOD_WR, align 4
  %261 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %262 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %260, %263
  %265 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %264, i32* %265, align 4
  %266 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %267 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %266, i64 0
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %269, 1
  %271 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %270, i32* %271, align 8
  %272 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %273 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %272, i64 0
  %274 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %276, i32** %277, align 8
  %278 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %279 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %278, %struct.rtl28xxu_req* %11)
  store i32 %279, i32* %8, align 4
  br label %280

280:                                              ; preds = %245, %236
  br label %346

281:                                              ; preds = %222
  %282 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %283 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %282, i64 0
  %284 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %285, 23
  br i1 %286, label %287, label %323

287:                                              ; preds = %281
  %288 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %289 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %323, label %292

292:                                              ; preds = %287
  %293 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %294 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %293, i64 0
  %295 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %298, 8
  %300 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %301 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %300, i64 0
  %302 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = shl i32 %303, 1
  %305 = or i32 %299, %304
  %306 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %305, i32* %306, align 8
  %307 = load i32, i32* @CMD_I2C_WR, align 4
  %308 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %307, i32* %308, align 4
  %309 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %310 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %309, i64 0
  %311 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %312, 1
  %314 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %313, i32* %314, align 8
  %315 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %316 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %315, i64 0
  %317 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %316, i32 0, i32 3
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 1
  %320 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %319, i32** %320, align 8
  %321 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %322 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %321, %struct.rtl28xxu_req* %11)
  store i32 %322, i32* %8, align 4
  br label %345

323:                                              ; preds = %287, %281
  %324 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %325 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %324, i64 0
  %326 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = shl i32 %327, 1
  %329 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %328, i32* %329, align 8
  %330 = load i8*, i8** @CMD_I2C_DA_WR, align 8
  %331 = ptrtoint i8* %330 to i32
  %332 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %331, i32* %332, align 4
  %333 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %334 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %333, i64 0
  %335 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %336, i32* %337, align 8
  %338 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %339 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %338, i64 0
  %340 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %341, i32** %342, align 8
  %343 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %344 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %343, %struct.rtl28xxu_req* %11)
  store i32 %344, i32* %8, align 4
  br label %345

345:                                              ; preds = %323, %292
  br label %346

346:                                              ; preds = %345, %280
  br label %347

347:                                              ; preds = %346
  br label %385

348:                                              ; preds = %205, %202
  %349 = load i32, i32* %7, align 4
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %381

351:                                              ; preds = %348
  %352 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %353 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %352, i64 0
  %354 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @I2C_M_RD, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %381

359:                                              ; preds = %351
  %360 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %361 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %360, i64 0
  %362 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = shl i32 %363, 1
  %365 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 0
  store i32 %364, i32* %365, align 8
  %366 = load i8*, i8** @CMD_I2C_DA_RD, align 8
  %367 = ptrtoint i8* %366 to i32
  %368 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 1
  store i32 %367, i32* %368, align 4
  %369 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %370 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %369, i64 0
  %371 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 2
  store i32 %372, i32* %373, align 8
  %374 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %375 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %374, i64 0
  %376 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %375, i32 0, i32 3
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %11, i32 0, i32 3
  store i32* %377, i32** %378, align 8
  %379 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %380 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %379, %struct.rtl28xxu_req* %11)
  store i32 %380, i32* %8, align 4
  br label %384

381:                                              ; preds = %351, %348
  %382 = load i32, i32* @EOPNOTSUPP, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %8, align 4
  br label %384

384:                                              ; preds = %381, %359
  br label %385

385:                                              ; preds = %384, %347
  br label %386

386:                                              ; preds = %385, %201
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* @EPIPE, align 4
  %389 = sub nsw i32 0, %388
  %390 = icmp eq i32 %387, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = load i32, i32* @EAGAIN, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %8, align 4
  br label %394

394:                                              ; preds = %391, %386
  br label %395

395:                                              ; preds = %394, %219, %176, %55
  %396 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %397 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %396, i32 0, i32 0
  %398 = call i32 @mutex_unlock(i32* %397)
  %399 = load i32, i32* %8, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %395
  %402 = load i32, i32* %8, align 4
  br label %405

403:                                              ; preds = %395
  %404 = load i32, i32* %7, align 4
  br label %405

405:                                              ; preds = %403, %401
  %406 = phi i32 [ %402, %401 ], [ %404, %403 ]
  store i32 %406, i32* %4, align 4
  br label %407

407:                                              ; preds = %405, %21
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device*, %struct.rtl28xxu_req*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
