; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"too many i2c messages[%d], max 2.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"too many i2c bytes[%d], max 60.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"too many i2c bytes[w-%d][r-%d], max 60.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dvbsky_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i32], align 16
  %11 = alloca [64 x i32], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %226

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %214

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %130

36:                                               ; preds = %33
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 60
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 0
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %214

54:                                               ; preds = %36
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i64 0
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I2C_M_RD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %54
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  store i32 9, i32* %63, align 16
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i64 0
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i64 0
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 3
  store i32 %73, i32* %74, align 4
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i64 0
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = call i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %75, i32* %76, i32 4, i32* %77, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %62
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i64 0
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i64 0
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memcpy(i32* %90, i32* %91, i32 %95)
  br label %97

97:                                               ; preds = %86, %62
  br label %129

98:                                               ; preds = %54
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  store i32 8, i32* %99, align 16
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 0
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  store i32 %103, i32* %104, align 4
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i64 0
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 2
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 3
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i64 0
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i64 0
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i32* %110, i32* %114, i32 %118)
  %120 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %121 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %122 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i64 0
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 3
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %128 = call i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %120, i32* %121, i32 %126, i32* %127, i32 1)
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %98, %97
  br label %213

130:                                              ; preds = %33
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i64 0
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 60
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i64 1
  %139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 60
  br i1 %141, label %142, label %158

142:                                              ; preds = %136, %130
  %143 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %144 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i64 0
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i64 1
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %150, i32 %154)
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %9, align 4
  br label %214

158:                                              ; preds = %136
  %159 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  store i32 9, i32* %159, align 16
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 0
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  %165 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i64 1
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 2
  store i32 %168, i32* %169, align 8
  %170 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %170, i64 0
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 3
  store i32 %173, i32* %174, align 4
  %175 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 4
  %176 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %177 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %176, i64 0
  %178 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i64 0
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @memcpy(i32* %175, i32* %179, i32 %183)
  %185 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %186 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %187 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i64 0
  %189 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 4
  %192 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %193 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i64 1
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  %198 = call i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %185, i32* %186, i32 %191, i32* %192, i32 %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %158
  %202 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %203 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %202, i64 1
  %204 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %207 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %208 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i64 1
  %209 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @memcpy(i32* %205, i32* %206, i32 %210)
  br label %212

212:                                              ; preds = %201, %158
  br label %213

213:                                              ; preds = %212, %129
  br label %214

214:                                              ; preds = %213, %142, %42, %24
  %215 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %216 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %215, i32 0, i32 0
  %217 = call i32 @mutex_unlock(i32* %216)
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* %9, align 4
  br label %224

222:                                              ; preds = %214
  %223 = load i32, i32* %7, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %224, %18
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
