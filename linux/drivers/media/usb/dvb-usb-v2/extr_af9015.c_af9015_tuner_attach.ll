; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.af9015_state = type { i64*, i64*, %struct.TYPE_5__*, i32*, %struct.i2c_client** }
%struct.TYPE_5__ = type { i32, %struct.i2c_adapter* (%struct.i2c_client*)* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"adap id %u\0A\00", align 1
@mt2060_attach = common dso_local global i32 0, align 4
@af9015_mt2060_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@qt1010_attach = common dso_local global i32 0, align 4
@af9015_qt1010_config = common dso_local global i32 0, align 4
@tda18271_attach = common dso_local global i32 0, align 4
@af9015_tda18271_config = common dso_local global i32 0, align 4
@tda18218_attach = common dso_local global i32 0, align 4
@af9015_tda18218_config = common dso_local global i32 0, align 4
@mxl5005s_attach = common dso_local global i32 0, align 4
@af9015_mxl5003_config = common dso_local global i32 0, align 4
@af9015_mxl5005_config = common dso_local global i32 0, align 4
@dvb_pll_attach = common dso_local global i32 0, align 4
@DVB_PLL_TDA665X = common dso_local global i32 0, align 4
@mc44s803_attach = common dso_local global i32 0, align 4
@af9015_mc44s803_config = common dso_local global i32 0, align 4
@mxl5007t_attach = common dso_local global i32 0, align 4
@af9015_mxl5007t_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown tuner, tuner id %02x\0A\00", align 1
@af9015_tuner_init = common dso_local global i64 0, align 8
@af9015_tuner_sleep = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9015_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.af9015_state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %10 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %9)
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %3, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %11)
  store %struct.af9015_state* %12, %struct.af9015_state** %4, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %5, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %23 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %22, i32 0, i32 4
  %24 = load %struct.i2c_client**, %struct.i2c_client*** %23, align 8
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %24, i64 %27
  %29 = load %struct.i2c_client*, %struct.i2c_client** %28, align 8
  store %struct.i2c_client* %29, %struct.i2c_client** %6, align 8
  %30 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %31 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.i2c_adapter* (%struct.i2c_client*)*, %struct.i2c_adapter* (%struct.i2c_client*)** %37, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = call %struct.i2c_adapter* %38(%struct.i2c_client* %39)
  store %struct.i2c_adapter* %40, %struct.i2c_adapter** %7, align 8
  %41 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %42 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %213 [
    i32 138, label %50
    i32 137, label %50
    i32 132, label %75
    i32 131, label %75
    i32 129, label %92
    i32 130, label %109
    i32 136, label %126
    i32 135, label %143
    i32 134, label %143
    i32 140, label %160
    i32 139, label %178
    i32 133, label %195
    i32 128, label %212
  ]

50:                                               ; preds = %1, %1
  %51 = load i32, i32* @mt2060_attach, align 4
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %58 = ptrtoint %struct.i2c_adapter* %57 to i32
  %59 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %60 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %51, %struct.TYPE_8__* %56, i32 %58, i32 ptrtoint (i32* @af9015_mt2060_config to i32), i32 %66)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  br label %73

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  store i32 %74, i32* %8, align 4
  br label %228

75:                                               ; preds = %1, %1
  %76 = load i32, i32* @qt1010_attach, align 4
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %83 = ptrtoint %struct.i2c_adapter* %82 to i32
  %84 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %76, %struct.TYPE_8__* %81, i32 %83, i32 ptrtoint (i32* @af9015_qt1010_config to i32))
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  br label %90

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %8, align 4
  br label %228

92:                                               ; preds = %1
  %93 = load i32, i32* @tda18271_attach, align 4
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %96, i64 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %100 = ptrtoint %struct.i2c_adapter* %99 to i32
  %101 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %93, %struct.TYPE_8__* %98, i32 96, i32 %100, i32* @af9015_tda18271_config)
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  br label %107

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32 [ %105, %103 ], [ 0, %106 ]
  store i32 %108, i32* %8, align 4
  br label %228

109:                                              ; preds = %1
  %110 = load i32, i32* @tda18218_attach, align 4
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %113, i64 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %117 = ptrtoint %struct.i2c_adapter* %116 to i32
  %118 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %110, %struct.TYPE_8__* %115, i32 %117, i32 ptrtoint (i32* @af9015_tda18218_config to i32))
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  br label %124

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %120
  %125 = phi i32 [ %122, %120 ], [ 0, %123 ]
  store i32 %125, i32* %8, align 4
  br label %228

126:                                              ; preds = %1
  %127 = load i32, i32* @mxl5005s_attach, align 4
  %128 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %130, i64 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %134 = ptrtoint %struct.i2c_adapter* %133 to i32
  %135 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %127, %struct.TYPE_8__* %132, i32 %134, i32 ptrtoint (i32* @af9015_mxl5003_config to i32))
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  br label %141

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32 [ %139, %137 ], [ 0, %140 ]
  store i32 %142, i32* %8, align 4
  br label %228

143:                                              ; preds = %1, %1
  %144 = load i32, i32* @mxl5005s_attach, align 4
  %145 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %146 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %147, i64 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %151 = ptrtoint %struct.i2c_adapter* %150 to i32
  %152 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %144, %struct.TYPE_8__* %149, i32 %151, i32 ptrtoint (i32* @af9015_mxl5005_config to i32))
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  br label %158

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i32 [ %156, %154 ], [ 0, %157 ]
  store i32 %159, i32* %8, align 4
  br label %228

160:                                              ; preds = %1
  %161 = load i32, i32* @dvb_pll_attach, align 4
  %162 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %163 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %164, i64 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %168 = ptrtoint %struct.i2c_adapter* %167 to i32
  %169 = load i32, i32* @DVB_PLL_TDA665X, align 4
  %170 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %161, %struct.TYPE_8__* %166, i32 96, i32 %168, i32 %169)
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  br label %176

175:                                              ; preds = %160
  br label %176

176:                                              ; preds = %175, %172
  %177 = phi i32 [ %174, %172 ], [ 0, %175 ]
  store i32 %177, i32* %8, align 4
  br label %228

178:                                              ; preds = %1
  %179 = load i32, i32* @mc44s803_attach, align 4
  %180 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %181 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %182, i64 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %186 = ptrtoint %struct.i2c_adapter* %185 to i32
  %187 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %179, %struct.TYPE_8__* %184, i32 %186, i32 ptrtoint (i32* @af9015_mc44s803_config to i32))
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  br label %193

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi i32 [ %191, %189 ], [ 0, %192 ]
  store i32 %194, i32* %8, align 4
  br label %228

195:                                              ; preds = %1
  %196 = load i32, i32* @mxl5007t_attach, align 4
  %197 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %198 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %197, i32 0, i32 1
  %199 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %199, i64 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %203 = ptrtoint %struct.i2c_adapter* %202 to i32
  %204 = call i32* (i32, %struct.TYPE_8__*, i32, i32, ...) @dvb_attach(i32 %196, %struct.TYPE_8__* %201, i32 %203, i32 96, i32* @af9015_mxl5007t_config)
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %195
  %207 = load i32, i32* @ENODEV, align 4
  %208 = sub nsw i32 0, %207
  br label %210

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209, %206
  %211 = phi i32 [ %208, %206 ], [ 0, %209 ]
  store i32 %211, i32* %8, align 4
  br label %228

212:                                              ; preds = %1
  br label %213

213:                                              ; preds = %1, %212
  %214 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %215 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %214, i32 0, i32 0
  %216 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %217 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %216, i32 0, i32 2
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %220 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @dev_err(i32* %215, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @ENODEV, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %213, %210, %193, %176, %158, %141, %124, %107, %90, %73
  %229 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %230 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %229, i32 0, i32 1
  %231 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %231, i64 0
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %265

239:                                              ; preds = %228
  %240 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %241 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %240, i32 0, i32 1
  %242 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %242, i64 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %250 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %249, i32 0, i32 1
  %251 = load i64*, i64** %250, align 8
  %252 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %253 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds i64, i64* %251, i64 %254
  store i64 %248, i64* %255, align 8
  %256 = load i64, i64* @af9015_tuner_init, align 8
  %257 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %258 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %257, i32 0, i32 1
  %259 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %259, i64 0
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  store i64 %256, i64* %264, align 8
  br label %265

265:                                              ; preds = %239, %228
  %266 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %267 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %266, i32 0, i32 1
  %268 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %268, i64 0
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %302

276:                                              ; preds = %265
  %277 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %278 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %277, i32 0, i32 1
  %279 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %279, i64 0
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %287 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %290 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i64, i64* %288, i64 %291
  store i64 %285, i64* %292, align 8
  %293 = load i64, i64* @af9015_tuner_sleep, align 8
  %294 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %295 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %294, i32 0, i32 1
  %296 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %296, i64 0
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  store i64 %293, i64* %301, align 8
  br label %302

302:                                              ; preds = %276, %265
  %303 = load i32, i32* %8, align 4
  ret i32 %303
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32* @dvb_attach(i32, %struct.TYPE_8__*, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
