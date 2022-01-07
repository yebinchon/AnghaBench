; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.dvb_frontend** }
%struct.dvb_frontend = type { i32 }
%struct.state = type { %struct.platform_device**, i32, %struct.TYPE_6__* }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dvb_usb_device = type { %struct.usb_interface*, i32 }
%struct.usb_interface = type { i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }
%struct.tua9001_platform_data = type { %struct.dvb_frontend* }
%struct.fc2580_platform_data = type { %struct.dvb_frontend* }
%struct.it913x_platform_data = type { i32, %struct.dvb_frontend*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"adap->id=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tua9001\00", align 1
@fc0011_attach = common dso_local global i32 0, align 4
@af9035_fc0011_config = common dso_local global i32 0, align 4
@mxl5007t_attach = common dso_local global i32 0, align 4
@af9035_mxl5007t_config = common dso_local global i32* null, align 8
@tda18218_attach = common dso_local global i32 0, align 4
@af9035_tda18218_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"fc2580\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\02\00", align 1
@fc0012_attach = common dso_local global i32 0, align 4
@af9035_fc0012_config = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"it9133ax-tuner\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"it9133bx-tuner\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IT913X_ROLE_DUAL_MASTER = common dso_local global i32 0, align 4
@IT913X_ROLE_DUAL_SLAVE = common dso_local global i32 0, align 4
@IT913X_ROLE_SINGLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"it913x\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9035_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca [1 x %struct.i2c_msg], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.tua9001_platform_data, align 8
  %12 = alloca %struct.fc2580_platform_data, align 8
  %13 = alloca %struct.platform_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.it913x_platform_data, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = call %struct.state* @adap_to_priv(%struct.dvb_usb_adapter* %16)
  store %struct.state* %17, %struct.state** %4, align 8
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %18)
  store %struct.dvb_usb_device* %19, %struct.dvb_usb_device** %5, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  store %struct.usb_interface* %22, %struct.usb_interface** %6, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.state*, %struct.state** %4, align 8
  %30 = getelementptr inbounds %struct.state, %struct.state* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %392 [
    i32 128, label %39
    i32 139, label %83
    i32 130, label %93
    i32 129, label %179
    i32 137, label %189
    i32 138, label %229
    i32 136, label %288
    i32 135, label %288
    i32 134, label %288
    i32 133, label %288
    i32 132, label %288
    i32 131, label %288
  ]

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.tua9001_platform_data, %struct.tua9001_platform_data* %11, i32 0, i32 0
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 1
  %43 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %42, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %43, i64 0
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %44, align 8
  store %struct.dvb_frontend* %45, %struct.dvb_frontend** %40, align 8
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %47 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %46, i32 55532, i32 1, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %400

51:                                               ; preds = %39
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %53 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %52, i32 55533, i32 1, i32 1)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %400

57:                                               ; preds = %51
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %59 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %58, i32 55528, i32 1, i32 1)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %400

63:                                               ; preds = %57
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %65 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %64, i32 55529, i32 1, i32 1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %400

69:                                               ; preds = %63
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %71, i32 0, i32 1
  %73 = call i32 @af9035_add_i2c_dev(%struct.dvb_usb_device* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 96, %struct.tua9001_platform_data* %11, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %400

77:                                               ; preds = %69
  %78 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %78, i32 0, i32 1
  %80 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %79, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %80, i64 0
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %81, align 8
  store %struct.dvb_frontend* %82, %struct.dvb_frontend** %8, align 8
  br label %393

83:                                               ; preds = %1
  %84 = load i32, i32* @fc0011_attach, align 4
  %85 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %85, i32 0, i32 1
  %87 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %86, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %87, i64 0
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %88, align 8
  %90 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %90, i32 0, i32 1
  %92 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32*, i32, ...) @dvb_attach(i32 %84, %struct.dvb_frontend* %89, i32* %91, i32 ptrtoint (i32* @af9035_fc0011_config to i32))
  store %struct.dvb_frontend* %92, %struct.dvb_frontend** %8, align 8
  br label %393

93:                                               ; preds = %1
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %161

98:                                               ; preds = %93
  %99 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %100 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %99, i32 55520, i32 1)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %400

104:                                              ; preds = %98
  %105 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %106 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %105, i32 55521, i32 1)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %400

110:                                              ; preds = %104
  %111 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %112 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %111, i32 55519, i32 0)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %400

116:                                              ; preds = %110
  %117 = call i32 @msleep(i32 30)
  %118 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %119 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %118, i32 55519, i32 1)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %400

123:                                              ; preds = %116
  %124 = call i32 @msleep(i32 300)
  %125 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %126 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %125, i32 55488, i32 1)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %400

130:                                              ; preds = %123
  %131 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %132 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %131, i32 55489, i32 1)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %400

136:                                              ; preds = %130
  %137 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %138 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %137, i32 55487, i32 0)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %400

142:                                              ; preds = %136
  %143 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %144 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %143, i32 55476, i32 1)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %400

148:                                              ; preds = %142
  %149 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %150 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %149, i32 55477, i32 1)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %400

154:                                              ; preds = %148
  %155 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %156 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %155, i32 55475, i32 1)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %400

160:                                              ; preds = %154
  store i32 96, i32* %10, align 4
  br label %162

161:                                              ; preds = %93
  store i32 224, i32* %10, align 4
  br label %162

162:                                              ; preds = %161, %160
  %163 = load i32, i32* @mxl5007t_attach, align 4
  %164 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %164, i32 0, i32 1
  %166 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %165, align 8
  %167 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %166, i64 0
  %168 = load %struct.dvb_frontend*, %struct.dvb_frontend** %167, align 8
  %169 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %170 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %169, i32 0, i32 1
  %171 = load i32, i32* %10, align 4
  %172 = load i32*, i32** @af9035_mxl5007t_config, align 8
  %173 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32*, i32, ...) @dvb_attach(i32 %163, %struct.dvb_frontend* %168, i32* %170, i32 %171, i32* %177)
  store %struct.dvb_frontend* %178, %struct.dvb_frontend** %8, align 8
  br label %393

179:                                              ; preds = %1
  %180 = load i32, i32* @tda18218_attach, align 4
  %181 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %181, i32 0, i32 1
  %183 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %182, align 8
  %184 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %183, i64 0
  %185 = load %struct.dvb_frontend*, %struct.dvb_frontend** %184, align 8
  %186 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %187 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %186, i32 0, i32 1
  %188 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32*, i32, ...) @dvb_attach(i32 %180, %struct.dvb_frontend* %185, i32* %187, i32 ptrtoint (i32* @af9035_tda18218_config to i32))
  store %struct.dvb_frontend* %188, %struct.dvb_frontend** %8, align 8
  br label %393

189:                                              ; preds = %1
  %190 = getelementptr inbounds %struct.fc2580_platform_data, %struct.fc2580_platform_data* %12, i32 0, i32 0
  %191 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %191, i32 0, i32 1
  %193 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %192, align 8
  %194 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %193, i64 0
  %195 = load %struct.dvb_frontend*, %struct.dvb_frontend** %194, align 8
  store %struct.dvb_frontend* %195, %struct.dvb_frontend** %190, align 8
  %196 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %197 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %196, i32 55531, i32 1, i32 1)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %400

201:                                              ; preds = %189
  %202 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %203 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %202, i32 55532, i32 1, i32 1)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %400

207:                                              ; preds = %201
  %208 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %209 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %208, i32 55533, i32 1, i32 1)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %400

213:                                              ; preds = %207
  %214 = call i32 @usleep_range(i32 10000, i32 50000)
  %215 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %216 = bitcast %struct.fc2580_platform_data* %12 to %struct.tua9001_platform_data*
  %217 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %218 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %217, i32 0, i32 1
  %219 = call i32 @af9035_add_i2c_dev(%struct.dvb_usb_device* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 86, %struct.tua9001_platform_data* %216, i32* %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %400

223:                                              ; preds = %213
  %224 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %225 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %224, i32 0, i32 1
  %226 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %225, align 8
  %227 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %226, i64 0
  %228 = load %struct.dvb_frontend*, %struct.dvb_frontend** %227, align 8
  store %struct.dvb_frontend* %228, %struct.dvb_frontend** %8, align 8
  br label %393

229:                                              ; preds = %1
  %230 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %231 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %253

234:                                              ; preds = %229
  %235 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %236 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %235, i32 55531, i32 1, i32 1)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %400

240:                                              ; preds = %234
  %241 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %242 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %241, i32 55532, i32 1, i32 1)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %400

246:                                              ; preds = %240
  %247 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %248 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %247, i32 55533, i32 1, i32 1)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %400

252:                                              ; preds = %246
  br label %270

253:                                              ; preds = %229
  %254 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %255 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %254, i32 0, i32 0
  store i32 99, i32* %255, align 16
  %256 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %257 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %256, i32 0, i32 3
  store i32 0, i32* %257, align 16
  %258 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %259 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %258, i32 0, i32 1
  store i32 2, i32* %259, align 4
  %260 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %261 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %260, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %261, align 8
  %262 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %263 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %262, i32 0, i32 1
  %264 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %265 = call i32 @i2c_transfer(i32* %263, %struct.i2c_msg* %264, i32 1)
  store i32 %265, i32* %7, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %253
  br label %400

269:                                              ; preds = %253
  br label %270

270:                                              ; preds = %269, %252
  %271 = call i32 @usleep_range(i32 10000, i32 50000)
  %272 = load i32, i32* @fc0012_attach, align 4
  %273 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %274 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %273, i32 0, i32 1
  %275 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %274, align 8
  %276 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %275, i64 0
  %277 = load %struct.dvb_frontend*, %struct.dvb_frontend** %276, align 8
  %278 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %279 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %278, i32 0, i32 1
  %280 = load i32*, i32** @af9035_fc0012_config, align 8
  %281 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %282 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = ptrtoint i32* %285 to i32
  %287 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32*, i32, ...) @dvb_attach(i32 %272, %struct.dvb_frontend* %277, i32* %279, i32 %286)
  store %struct.dvb_frontend* %287, %struct.dvb_frontend** %8, align 8
  br label %393

288:                                              ; preds = %1, %1, %1, %1, %1, %1
  %289 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %15, i32 0, i32 0
  store i32 0, i32* %289, align 8
  %290 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %15, i32 0, i32 1
  %291 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %292 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %291, i32 0, i32 1
  %293 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %292, align 8
  %294 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %293, i64 0
  %295 = load %struct.dvb_frontend*, %struct.dvb_frontend** %294, align 8
  store %struct.dvb_frontend* %295, %struct.dvb_frontend** %290, align 8
  %296 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %15, i32 0, i32 2
  %297 = load %struct.state*, %struct.state** %4, align 8
  %298 = getelementptr inbounds %struct.state, %struct.state* %297, i32 0, i32 2
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %298, align 8
  %300 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %301 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %296, align 8
  %307 = load %struct.state*, %struct.state** %4, align 8
  %308 = getelementptr inbounds %struct.state, %struct.state* %307, i32 0, i32 2
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %311 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  switch i32 %316, label %319 [
    i32 136, label %317
    i32 135, label %317
    i32 134, label %317
    i32 133, label %318
    i32 132, label %318
    i32 131, label %318
  ]

317:                                              ; preds = %288, %288, %288
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %322

318:                                              ; preds = %288, %288, %288
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %322

319:                                              ; preds = %288
  %320 = load i32, i32* @ENODEV, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %7, align 4
  br label %400

322:                                              ; preds = %318, %317
  %323 = load %struct.state*, %struct.state** %4, align 8
  %324 = getelementptr inbounds %struct.state, %struct.state* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %322
  %328 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %329 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load i32, i32* @IT913X_ROLE_DUAL_MASTER, align 4
  %334 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %15, i32 0, i32 0
  store i32 %333, i32* %334, align 8
  br label %338

335:                                              ; preds = %327
  %336 = load i32, i32* @IT913X_ROLE_DUAL_SLAVE, align 4
  %337 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %15, i32 0, i32 0
  store i32 %336, i32* %337, align 8
  br label %338

338:                                              ; preds = %335, %332
  br label %342

339:                                              ; preds = %322
  %340 = load i32, i32* @IT913X_ROLE_SINGLE, align 4
  %341 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %15, i32 0, i32 0
  store i32 %340, i32* %341, align 8
  br label %342

342:                                              ; preds = %339, %338
  %343 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %344 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %345 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %344, i32 0, i32 0
  %346 = load %struct.usb_interface*, %struct.usb_interface** %345, align 8
  %347 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %346, i32 0, i32 0
  %348 = load i8*, i8** %14, align 8
  %349 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %350 = call %struct.platform_device* @platform_device_register_data(i32* %347, i8* %348, i32 %349, %struct.it913x_platform_data* %15, i32 24)
  store %struct.platform_device* %350, %struct.platform_device** %13, align 8
  %351 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %352 = call i32 @IS_ERR(%struct.platform_device* %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %342
  %355 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %356 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = icmp ne %struct.TYPE_4__* %358, null
  br i1 %359, label %363, label %360

360:                                              ; preds = %354, %342
  %361 = load i32, i32* @ENODEV, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %7, align 4
  br label %400

363:                                              ; preds = %354
  %364 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %365 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @try_module_get(i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %377, label %372

372:                                              ; preds = %363
  %373 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %374 = call i32 @platform_device_unregister(%struct.platform_device* %373)
  %375 = load i32, i32* @ENODEV, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %7, align 4
  br label %400

377:                                              ; preds = %363
  %378 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %379 = load %struct.state*, %struct.state** %4, align 8
  %380 = getelementptr inbounds %struct.state, %struct.state* %379, i32 0, i32 0
  %381 = load %struct.platform_device**, %struct.platform_device*** %380, align 8
  %382 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %383 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %381, i64 %385
  store %struct.platform_device* %378, %struct.platform_device** %386, align 8
  %387 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %388 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %387, i32 0, i32 1
  %389 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %388, align 8
  %390 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %389, i64 0
  %391 = load %struct.dvb_frontend*, %struct.dvb_frontend** %390, align 8
  store %struct.dvb_frontend* %391, %struct.dvb_frontend** %8, align 8
  br label %393

392:                                              ; preds = %1
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %8, align 8
  br label %393

393:                                              ; preds = %392, %377, %270, %223, %179, %162, %83, %77
  %394 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %395 = icmp eq %struct.dvb_frontend* %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load i32, i32* @ENODEV, align 4
  %398 = sub nsw i32 0, %397
  store i32 %398, i32* %7, align 4
  br label %400

399:                                              ; preds = %393
  store i32 0, i32* %2, align 4
  br label %406

400:                                              ; preds = %396, %372, %360, %319, %268, %251, %245, %239, %222, %212, %206, %200, %159, %153, %147, %141, %135, %129, %122, %115, %109, %103, %76, %68, %62, %56, %50
  %401 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %402 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %401, i32 0, i32 0
  %403 = load i32, i32* %7, align 4
  %404 = call i32 @dev_dbg(i32* %402, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %403)
  %405 = load i32, i32* %7, align 4
  store i32 %405, i32* %2, align 4
  br label %406

406:                                              ; preds = %400, %399
  %407 = load i32, i32* %2, align 4
  ret i32 %407
}

declare dso_local %struct.state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @af9035_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @af9035_add_i2c_dev(%struct.dvb_usb_device*, i8*, i32, %struct.tua9001_platform_data*, i32*) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.dvb_frontend*, i32*, i32, ...) #1

declare dso_local i32 @af9035_wr_reg(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.it913x_platform_data*, i32) #1

declare dso_local i32 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
