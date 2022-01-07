; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_hw_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_hw_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [52 x i8] c"addr: 0x%02x, read buff len: %d, write buff len: %d\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@USB_END_I2C_CMD = common dso_local global i32 0, align 4
@USB_WRITE_I2C_CMD = common dso_local global i32 0, align 4
@I2C_MUX_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%d\09%02x\00", align 1
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@HWI2C400 = common dso_local global i64 0, align 8
@I2C_SLAVE_ADDR_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"NACK writing slave address %02x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"block_len %d, left_over_len %d\00", align 1
@I2C_DATA_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"index = %d %d data %d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"read buf len %d\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"NACK reading slave address %02x\00", align 1
@USB_READ_I2C_CMD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"i2c fifo empty! @ %d\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"read data: %02x\09 %02x\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"readagain ERROR!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, %struct.i2c_msg*)* @mxl111sf_i2c_hw_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_hw_xfer_msg(%struct.mxl111sf_state* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [26 x i32], align 16
  %10 = alloca [24 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [26 x i32], align 16
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I2C_M_RD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %31, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %54, %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 26
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @USB_END_I2C_CMD, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %46

57:                                               ; preds = %46
  %58 = load i32, i32* @USB_WRITE_I2C_CMD, align 4
  %59 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* @I2C_MUX_REG, align 4
  %62 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 128, i32* %63, align 4
  %64 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 0, i32* %64, align 16
  %65 = load i32, i32* @I2C_MUX_REG, align 4
  %66 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 6
  store i32 129, i32* %67, align 8
  %68 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 7
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 8
  store i32 20, i32* %69, align 16
  %70 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 9
  store i32 255, i32* %70, align 4
  %71 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 10
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 11
  store i32 36, i32* %72, align 4
  %73 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 12
  store i32 247, i32* %73, align 16
  %74 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 13
  store i32 0, i32* %74, align 4
  %75 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %76 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %77 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %75, i32 0, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @I2C_M_RD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %310, label %84

84:                                               ; preds = %57
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %310

89:                                               ; preds = %84
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %97)
  %99 = load i32, i32* @I2C_CONTROL_REG, align 4
  %100 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %99, i32* %100, align 8
  %101 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 94, i32* %101, align 4
  %102 = load i64, i64* @HWI2C400, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 3, i32 13
  %106 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %105, i32* %106, align 16
  %107 = load i32, i32* @I2C_SLAVE_ADDR_REG, align 4
  %108 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 %107, i32* %108, align 4
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 6
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 7
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @USB_END_I2C_CMD, align 4
  %115 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 8
  store i32 %114, i32* %115, align 16
  %116 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %117 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %118 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %116, i32 0, i32* %117)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %120 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %119)
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %137

122:                                              ; preds = %89
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @I2C_CONTROL_REG, align 4
  %128 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 78, i32* %129, align 4
  %130 = load i64, i64* @HWI2C400, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 3, i32 13
  %134 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %133, i32* %134, align 16
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %725

137:                                              ; preds = %89
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 8
  store i32 %141, i32* %11, align 4
  %142 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = srem i32 %144, 8
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147)
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %210, %137
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %213

153:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %184, %153
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 8
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  %158 = load i32, i32* @I2C_DATA_REG, align 4
  %159 = load i32, i32* %5, align 4
  %160 = mul nsw i32 %159, 3
  %161 = add nsw i32 2, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %162
  store i32 %158, i32* %163, align 4
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 %167, 8
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %5, align 4
  %175 = mul nsw i32 %174, 3
  %176 = add nsw i32 3, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32, i32* %5, align 4
  %180 = mul nsw i32 %179, 3
  %181 = add nsw i32 4, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %182
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %157
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %154

187:                                              ; preds = %154
  %188 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %189 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %190 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %188, i32 0, i32* %189)
  store i32 %190, i32* %7, align 4
  %191 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %192 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %191)
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %209

194:                                              ; preds = %187
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @I2C_CONTROL_REG, align 4
  %200 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %199, i32* %200, align 8
  %201 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 78, i32* %201, align 4
  %202 = load i64, i64* @HWI2C400, align 8
  %203 = icmp ne i64 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 3, i32 13
  %206 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %205, i32* %206, align 16
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %7, align 4
  br label %725

209:                                              ; preds = %187
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %149

213:                                              ; preds = %149
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %301

216:                                              ; preds = %213
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %225, %216
  %218 = load i32, i32* %6, align 4
  %219 = icmp slt i32 %218, 26
  br i1 %219, label %220, label %228

220:                                              ; preds = %217
  %221 = load i32, i32* @USB_END_I2C_CMD, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %223
  store i32 %221, i32* %224, align 4
  br label %225

225:                                              ; preds = %220
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  br label %217

228:                                              ; preds = %217
  %229 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  store i32 153, i32* %229, align 16
  %230 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %230, align 4
  store i32 0, i32* %5, align 4
  br label %231

231:                                              ; preds = %275, %228
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %278

235:                                              ; preds = %231
  %236 = load i32, i32* @I2C_DATA_REG, align 4
  %237 = load i32, i32* %5, align 4
  %238 = mul nsw i32 %237, 3
  %239 = add nsw i32 2, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %240
  store i32 %236, i32* %241, align 4
  %242 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %243 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = mul nsw i32 %245, 8
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %244, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %5, align 4
  %253 = mul nsw i32 %252, 3
  %254 = add nsw i32 3, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %255
  store i32 %251, i32* %256, align 4
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %260 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = mul nsw i32 %262, 8
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %261, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %257, i32 %258, i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = mul nsw i32 %270, 3
  %272 = add nsw i32 4, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %273
  store i32 0, i32* %274, align 4
  br label %275

275:                                              ; preds = %235
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %5, align 4
  br label %231

278:                                              ; preds = %231
  %279 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %280 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %281 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %279, i32 0, i32* %280)
  store i32 %281, i32* %7, align 4
  %282 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %283 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %282)
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %300

285:                                              ; preds = %278
  %286 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %287 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* @I2C_CONTROL_REG, align 4
  %291 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %290, i32* %291, align 8
  %292 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 78, i32* %292, align 4
  %293 = load i64, i64* @HWI2C400, align 8
  %294 = icmp ne i64 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 3, i32 13
  %297 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %296, i32* %297, align 16
  %298 = load i32, i32* @EIO, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %7, align 4
  br label %725

300:                                              ; preds = %278
  br label %301

301:                                              ; preds = %300, %213
  %302 = load i32, i32* @I2C_CONTROL_REG, align 4
  %303 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %302, i32* %303, align 8
  %304 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 78, i32* %304, align 4
  %305 = load i64, i64* @HWI2C400, align 8
  %306 = icmp ne i64 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 3, i32 13
  %309 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %308, i32* %309, align 16
  br label %310

310:                                              ; preds = %301, %84, %57
  %311 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %312 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @I2C_M_RD, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %724

317:                                              ; preds = %310
  %318 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %319 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %724

322:                                              ; preds = %317
  %323 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %324 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  %327 = load i32, i32* @I2C_CONTROL_REG, align 4
  %328 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %327, i32* %328, align 8
  %329 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 223, i32* %329, align 4
  %330 = load i64, i64* @HWI2C400, align 8
  %331 = icmp ne i64 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 3, i32 13
  %334 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %333, i32* %334, align 16
  %335 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 20, i32* %335, align 4
  %336 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %337 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, 255
  %340 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 6
  store i32 %339, i32* %340, align 8
  %341 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 7
  store i32 0, i32* %341, align 4
  %342 = load i32, i32* @I2C_SLAVE_ADDR_REG, align 4
  %343 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 8
  store i32 %342, i32* %343, align 16
  %344 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %345 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 9
  store i32 %346, i32* %347, align 4
  %348 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 10
  store i32 0, i32* %348, align 8
  %349 = load i32, i32* @USB_END_I2C_CMD, align 4
  %350 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 11
  store i32 %349, i32* %350, align 4
  %351 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %352 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %353 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %351, i32 0, i32* %352)
  store i32 %353, i32* %7, align 4
  %354 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %355 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %354)
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %372

357:                                              ; preds = %322
  %358 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %359 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %360)
  %362 = load i32, i32* @I2C_CONTROL_REG, align 4
  %363 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %362, i32* %363, align 8
  %364 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 199, i32* %364, align 4
  %365 = load i64, i64* @HWI2C400, align 8
  %366 = icmp ne i64 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i32 3, i32 13
  %369 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %368, i32* %369, align 16
  %370 = load i32, i32* @EIO, align 4
  %371 = sub nsw i32 0, %370
  store i32 %371, i32* %7, align 4
  br label %725

372:                                              ; preds = %322
  %373 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %374 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = sdiv i32 %375, 8
  store i32 %376, i32* %11, align 4
  %377 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %378 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = srem i32 %379, 8
  store i32 %380, i32* %12, align 4
  store i32 0, i32* %8, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* %12, align 4
  %383 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %381, i32 %382)
  %384 = load i32, i32* @USB_READ_I2C_CMD, align 4
  %385 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  store i32 %384, i32* %385, align 16
  %386 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %386, align 4
  store i32 0, i32* %8, align 4
  br label %387

387:                                              ; preds = %593, %372
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* %11, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %596

391:                                              ; preds = %387
  store i32 0, i32* %5, align 4
  br label %392

392:                                              ; preds = %412, %391
  %393 = load i32, i32* %5, align 4
  %394 = icmp slt i32 %393, 8
  br i1 %394, label %395, label %415

395:                                              ; preds = %392
  %396 = load i32, i32* @I2C_DATA_REG, align 4
  %397 = load i32, i32* %5, align 4
  %398 = mul nsw i32 %397, 3
  %399 = add nsw i32 2, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %400
  store i32 %396, i32* %401, align 4
  %402 = load i32, i32* %5, align 4
  %403 = mul nsw i32 %402, 3
  %404 = add nsw i32 3, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %405
  store i32 0, i32* %406, align 4
  %407 = load i32, i32* %5, align 4
  %408 = mul nsw i32 %407, 3
  %409 = add nsw i32 4, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %410
  store i32 0, i32* %411, align 4
  br label %412

412:                                              ; preds = %395
  %413 = load i32, i32* %5, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %5, align 4
  br label %392

415:                                              ; preds = %392
  %416 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %417 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %418 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 0
  %419 = call i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state* %416, i32 0, i32* %417, i32* %418)
  store i32 %419, i32* %7, align 4
  %420 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %421 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %420)
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %438

423:                                              ; preds = %415
  %424 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %425 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %426)
  %428 = load i32, i32* @I2C_CONTROL_REG, align 4
  %429 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %428, i32* %429, align 8
  %430 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 199, i32* %430, align 4
  %431 = load i64, i64* @HWI2C400, align 8
  %432 = icmp ne i64 %431, 0
  %433 = zext i1 %432 to i64
  %434 = select i1 %432, i32 3, i32 13
  %435 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %434, i32* %435, align 16
  %436 = load i32, i32* @EIO, align 4
  %437 = sub nsw i32 0, %436
  store i32 %437, i32* %7, align 4
  br label %725

438:                                              ; preds = %415
  store i32 0, i32* %5, align 4
  br label %439

439:                                              ; preds = %588, %438
  %440 = load i32, i32* %5, align 4
  %441 = icmp slt i32 %440, 8
  br i1 %441, label %442, label %591

442:                                              ; preds = %439
  %443 = load i32, i32* %5, align 4
  %444 = mul nsw i32 %443, 3
  %445 = add nsw i32 %444, 2
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* %5, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %450
  store i32 %448, i32* %451, align 4
  %452 = load i32, i32* %5, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %455, 4
  br i1 %456, label %457, label %571

457:                                              ; preds = %442
  %458 = load i32, i32* %5, align 4
  %459 = icmp slt i32 %458, 7
  br i1 %459, label %460, label %554

460:                                              ; preds = %457
  %461 = load i32, i32* %5, align 4
  %462 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %461)
  %463 = load i32, i32* %5, align 4
  %464 = mul nsw i32 %463, 3
  %465 = add nsw i32 %464, 1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %470 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %469, i32 0, i32 3
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* %8, align 4
  %473 = mul nsw i32 %472, 8
  %474 = load i32, i32* %5, align 4
  %475 = add nsw i32 %473, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %471, i64 %476
  store i32 %468, i32* %477, align 4
  %478 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %479 = load i32, i32* %5, align 4
  %480 = add nsw i32 %479, 1
  %481 = sub nsw i32 8, %480
  %482 = getelementptr inbounds [26 x i32], [26 x i32]* %15, i64 0, i64 0
  %483 = call i32 @mxl111sf_i2c_readagain(%struct.mxl111sf_state* %478, i32 %481, i32* %482)
  store i32 %483, i32* %14, align 4
  %484 = load i32, i32* %14, align 4
  %485 = icmp eq i32 %484, 1
  br i1 %485, label %486, label %551

486:                                              ; preds = %460
  store i32 0, i32* %6, align 4
  br label %487

487:                                              ; preds = %547, %486
  %488 = load i32, i32* %6, align 4
  %489 = load i32, i32* %5, align 4
  %490 = add nsw i32 %489, 1
  %491 = sub nsw i32 8, %490
  %492 = icmp slt i32 %488, %491
  br i1 %492, label %493, label %550

493:                                              ; preds = %487
  %494 = load i32, i32* %6, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [26 x i32], [26 x i32]* %15, i64 0, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %499 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %498, i32 0, i32 3
  %500 = load i32*, i32** %499, align 8
  %501 = load i32, i32* %8, align 4
  %502 = mul nsw i32 %501, 8
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* %5, align 4
  %505 = add nsw i32 %503, %504
  %506 = add nsw i32 %505, 1
  %507 = add nsw i32 %502, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %500, i64 %508
  store i32 %497, i32* %509, align 4
  %510 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %511 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %510, i32 0, i32 3
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %8, align 4
  %514 = mul nsw i32 %513, 8
  %515 = load i32, i32* %6, align 4
  %516 = load i32, i32* %5, align 4
  %517 = add nsw i32 %515, %516
  %518 = add nsw i32 %514, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %512, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* %8, align 4
  %523 = mul nsw i32 %522, 8
  %524 = load i32, i32* %6, align 4
  %525 = load i32, i32* %5, align 4
  %526 = add nsw i32 %524, %525
  %527 = add nsw i32 %523, %526
  %528 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %521, i32 %527)
  %529 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %530 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %529, i32 0, i32 3
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %8, align 4
  %533 = mul nsw i32 %532, 8
  %534 = load i32, i32* %6, align 4
  %535 = load i32, i32* %5, align 4
  %536 = add nsw i32 %534, %535
  %537 = add nsw i32 %536, 1
  %538 = add nsw i32 %533, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %531, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = load i32, i32* %6, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [26 x i32], [26 x i32]* %15, i64 0, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %541, i32 %545)
  br label %547

547:                                              ; preds = %493
  %548 = load i32, i32* %6, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %6, align 4
  br label %487

550:                                              ; preds = %487
  br label %592

551:                                              ; preds = %460
  %552 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %553

553:                                              ; preds = %551
  br label %570

554:                                              ; preds = %457
  %555 = load i32, i32* %5, align 4
  %556 = mul nsw i32 %555, 3
  %557 = add nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %562 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %561, i32 0, i32 3
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %8, align 4
  %565 = mul nsw i32 %564, 8
  %566 = load i32, i32* %5, align 4
  %567 = add nsw i32 %565, %566
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %563, i64 %568
  store i32 %560, i32* %569, align 4
  br label %570

570:                                              ; preds = %554, %553
  br label %587

571:                                              ; preds = %442
  %572 = load i32, i32* %5, align 4
  %573 = mul nsw i32 %572, 3
  %574 = add nsw i32 %573, 1
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %579 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %578, i32 0, i32 3
  %580 = load i32*, i32** %579, align 8
  %581 = load i32, i32* %8, align 4
  %582 = mul nsw i32 %581, 8
  %583 = load i32, i32* %5, align 4
  %584 = add nsw i32 %582, %583
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, i32* %580, i64 %585
  store i32 %577, i32* %586, align 4
  br label %587

587:                                              ; preds = %571, %570
  br label %588

588:                                              ; preds = %587
  %589 = load i32, i32* %5, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %5, align 4
  br label %439

591:                                              ; preds = %439
  br label %592

592:                                              ; preds = %591, %550
  br label %593

593:                                              ; preds = %592
  %594 = load i32, i32* %8, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %8, align 4
  br label %387

596:                                              ; preds = %387
  %597 = load i32, i32* %12, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %699

599:                                              ; preds = %596
  store i32 0, i32* %6, align 4
  br label %600

600:                                              ; preds = %608, %599
  %601 = load i32, i32* %6, align 4
  %602 = icmp slt i32 %601, 26
  br i1 %602, label %603, label %611

603:                                              ; preds = %600
  %604 = load i32, i32* @USB_END_I2C_CMD, align 4
  %605 = load i32, i32* %6, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %606
  store i32 %604, i32* %607, align 4
  br label %608

608:                                              ; preds = %603
  %609 = load i32, i32* %6, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %6, align 4
  br label %600

611:                                              ; preds = %600
  %612 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  store i32 221, i32* %612, align 16
  %613 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %613, align 4
  store i32 0, i32* %5, align 4
  br label %614

614:                                              ; preds = %635, %611
  %615 = load i32, i32* %5, align 4
  %616 = load i32, i32* %12, align 4
  %617 = icmp slt i32 %615, %616
  br i1 %617, label %618, label %638

618:                                              ; preds = %614
  %619 = load i32, i32* @I2C_DATA_REG, align 4
  %620 = load i32, i32* %5, align 4
  %621 = mul nsw i32 %620, 3
  %622 = add nsw i32 2, %621
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %623
  store i32 %619, i32* %624, align 4
  %625 = load i32, i32* %5, align 4
  %626 = mul nsw i32 %625, 3
  %627 = add nsw i32 3, %626
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %628
  store i32 0, i32* %629, align 4
  %630 = load i32, i32* %5, align 4
  %631 = mul nsw i32 %630, 3
  %632 = add nsw i32 4, %631
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 %633
  store i32 0, i32* %634, align 4
  br label %635

635:                                              ; preds = %618
  %636 = load i32, i32* %5, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %5, align 4
  br label %614

638:                                              ; preds = %614
  %639 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %640 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %641 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 0
  %642 = call i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state* %639, i32 0, i32* %640, i32* %641)
  store i32 %642, i32* %7, align 4
  %643 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %644 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %643)
  %645 = icmp eq i32 %644, 1
  br i1 %645, label %646, label %661

646:                                              ; preds = %638
  %647 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %648 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 8
  %650 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %649)
  %651 = load i32, i32* @I2C_CONTROL_REG, align 4
  %652 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %651, i32* %652, align 8
  %653 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 199, i32* %653, align 4
  %654 = load i64, i64* @HWI2C400, align 8
  %655 = icmp ne i64 %654, 0
  %656 = zext i1 %655 to i64
  %657 = select i1 %655, i32 3, i32 13
  %658 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %657, i32* %658, align 16
  %659 = load i32, i32* @EIO, align 4
  %660 = sub nsw i32 0, %659
  store i32 %660, i32* %7, align 4
  br label %725

661:                                              ; preds = %638
  store i32 0, i32* %5, align 4
  br label %662

662:                                              ; preds = %695, %661
  %663 = load i32, i32* %5, align 4
  %664 = load i32, i32* %12, align 4
  %665 = icmp slt i32 %663, %664
  br i1 %665, label %666, label %698

666:                                              ; preds = %662
  %667 = load i32, i32* %5, align 4
  %668 = mul nsw i32 %667, 3
  %669 = add nsw i32 %668, 1
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %670
  %672 = load i32, i32* %671, align 4
  %673 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %674 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %673, i32 0, i32 3
  %675 = load i32*, i32** %674, align 8
  %676 = load i32, i32* %11, align 4
  %677 = mul nsw i32 %676, 8
  %678 = load i32, i32* %5, align 4
  %679 = add nsw i32 %677, %678
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32, i32* %675, i64 %680
  store i32 %672, i32* %681, align 4
  %682 = load i32, i32* %5, align 4
  %683 = mul nsw i32 %682, 3
  %684 = add nsw i32 %683, 1
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %685
  %687 = load i32, i32* %686, align 4
  %688 = load i32, i32* %5, align 4
  %689 = mul nsw i32 %688, 3
  %690 = add nsw i32 %689, 2
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %687, i32 %693)
  br label %695

695:                                              ; preds = %666
  %696 = load i32, i32* %5, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %5, align 4
  br label %662

698:                                              ; preds = %662
  br label %699

699:                                              ; preds = %698, %596
  %700 = load i32, i32* @USB_WRITE_I2C_CMD, align 4
  %701 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  store i32 %700, i32* %701, align 16
  %702 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %702, align 4
  %703 = load i32, i32* @I2C_CONTROL_REG, align 4
  %704 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %703, i32* %704, align 8
  %705 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 23, i32* %705, align 4
  %706 = load i64, i64* @HWI2C400, align 8
  %707 = icmp ne i64 %706, 0
  %708 = zext i1 %707 to i64
  %709 = select i1 %707, i32 3, i32 13
  %710 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %709, i32* %710, align 16
  %711 = load i32, i32* @USB_END_I2C_CMD, align 4
  %712 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 %711, i32* %712, align 4
  %713 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %714 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %715 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %713, i32 0, i32* %714)
  store i32 %715, i32* %7, align 4
  %716 = load i32, i32* @I2C_CONTROL_REG, align 4
  %717 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %716, i32* %717, align 8
  %718 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 199, i32* %718, align 4
  %719 = load i64, i64* @HWI2C400, align 8
  %720 = icmp ne i64 %719, 0
  %721 = zext i1 %720 to i64
  %722 = select i1 %720, i32 3, i32 13
  %723 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 %722, i32* %723, align 16
  br label %724

724:                                              ; preds = %699, %317, %310
  br label %725

725:                                              ; preds = %724, %646, %423, %357, %285, %194, %122
  %726 = load i32, i32* @USB_WRITE_I2C_CMD, align 4
  %727 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  store i32 %726, i32* %727, align 16
  %728 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %728, align 4
  %729 = load i32, i32* @USB_END_I2C_CMD, align 4
  %730 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 %729, i32* %730, align 4
  %731 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %732 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %733 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %731, i32 0, i32* %732)
  %734 = load i32, i32* @I2C_CONTROL_REG, align 4
  %735 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %734, i32* %735, align 8
  %736 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 223, i32* %736, align 4
  %737 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 3, i32* %737, align 16
  %738 = load i32, i32* @I2C_MUX_REG, align 4
  %739 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 %738, i32* %739, align 4
  %740 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 6
  store i32 0, i32* %740, align 8
  %741 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 7
  store i32 0, i32* %741, align 4
  %742 = load i32, i32* @USB_END_I2C_CMD, align 4
  %743 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 8
  store i32 %742, i32* %743, align 16
  %744 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %745 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %746 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %744, i32 0, i32* %745)
  %747 = load i32, i32* @I2C_MUX_REG, align 4
  %748 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 2
  store i32 %747, i32* %748, align 8
  %749 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 3
  store i32 129, i32* %749, align 4
  %750 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 4
  store i32 0, i32* %750, align 16
  %751 = load i32, i32* @I2C_MUX_REG, align 4
  %752 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 5
  store i32 %751, i32* %752, align 4
  %753 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 6
  store i32 0, i32* %753, align 8
  %754 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 7
  store i32 0, i32* %754, align 4
  %755 = load i32, i32* @I2C_MUX_REG, align 4
  %756 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 8
  store i32 %755, i32* %756, align 16
  %757 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 9
  store i32 0, i32* %757, align 4
  %758 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 10
  store i32 0, i32* %758, align 8
  %759 = load i32, i32* @USB_END_I2C_CMD, align 4
  %760 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 11
  store i32 %759, i32* %760, align 4
  %761 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %762 = getelementptr inbounds [26 x i32], [26 x i32]* %9, i64 0, i64 0
  %763 = call i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state* %761, i32 0, i32* %762)
  %764 = load i32, i32* %7, align 4
  ret i32 %764
}

declare dso_local i32 @mxl_i2c(i8*, ...) #1

declare dso_local i32 @mxl111sf_i2c_send_data(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state*) #1

declare dso_local i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state*, i32, i32*, i32*) #1

declare dso_local i32 @mxl111sf_i2c_readagain(%struct.mxl111sf_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
