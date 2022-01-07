; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.tda10071_dev* }
%struct.dtv_frontend_properties = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.tda10071_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@CMD_GET_AGCACC = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"meas not ready=%02x\0A\00", align 1
@CMD_BER_UPDATE_COUNTERS = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tda10071_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca %struct.tda10071_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.tda10071_dev*, %struct.tda10071_dev** %17, align 8
  store %struct.tda10071_dev* %18, %struct.tda10071_dev** %6, align 8
  %19 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %20 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %19, i32 0, i32 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %7, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  store %struct.dtv_frontend_properties* %23, %struct.dtv_frontend_properties** %8, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %26 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %390

30:                                               ; preds = %2
  %31 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %32 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @regmap_read(i32 %33, i32 57, i32* %11)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %390

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %44 = load i32, i32* @FE_HAS_CARRIER, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @FE_HAS_VITERBI, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* @FE_HAS_SYNC, align 4
  %64 = load i32, i32* @FE_HAS_LOCK, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %73 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %75 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %69
  %81 = load i32, i32* @CMD_GET_AGCACC, align 4
  %82 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 1
  store i32 2, i32* %88, align 8
  %89 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %90 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %89, %struct.tda10071_cmd* %9)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %390

94:                                               ; preds = %80
  %95 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %96 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @regmap_read(i32 %97, i32 80, i32* %11)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %390

102:                                              ; preds = %94
  %103 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i8* %103, i8** %109, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sub i32 %110, 256
  %112 = mul nsw i32 %111, 1000
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %112, i32* %118, align 8
  br label %127

119:                                              ; preds = %69
  %120 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  store i8* %120, i8** %126, align 8
  br label %127

127:                                              ; preds = %119, %102
  %128 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %129 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FE_HAS_VITERBI, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %127
  %135 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %136 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %139 = call i32 @regmap_bulk_read(i32 %137, i32 58, i32* %138, i32 2)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %390

143:                                              ; preds = %134
  %144 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %145 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %146 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  store i8* %144, i8** %150, align 8
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = shl i32 %152, 8
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 0
  %157 = or i32 %153, %156
  %158 = mul nsw i32 %157, 100
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i32 %158, i32* %164, align 8
  br label %173

165:                                              ; preds = %127
  %166 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %167 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %168 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  store i8* %166, i8** %172, align 8
  br label %173

173:                                              ; preds = %165, %143
  %174 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %175 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FE_HAS_LOCK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %373

180:                                              ; preds = %173
  %181 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %182 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %186 [
    i32 129, label %184
    i32 128, label %185
  ]

184:                                              ; preds = %180
  store i32 76, i32* %14, align 4
  store i32 8, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %189

185:                                              ; preds = %180
  store i32 77, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %10, align 4
  br label %390

189:                                              ; preds = %185, %184
  %190 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %191 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @regmap_read(i32 %192, i32 %193, i32* %11)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %390

198:                                              ; preds = %189
  %199 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %200 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 0
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @dev_dbg(i32* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %207)
  store i32 0, i32* %10, align 4
  br label %390

209:                                              ; preds = %198
  %210 = load i32, i32* %11, align 4
  %211 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %212 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %209
  %214 = load i32, i32* @CMD_BER_UPDATE_COUNTERS, align 4
  %215 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 %214, i32* %217, align 4
  %218 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 0, i32* %220, align 4
  %221 = load i32, i32* %13, align 4
  %222 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  store i32 %221, i32* %224, align 4
  %225 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 1
  store i32 3, i32* %225, align 8
  %226 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %227 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %226, %struct.tda10071_cmd* %9)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %213
  br label %390

231:                                              ; preds = %213
  %232 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %233 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %9, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @regmap_bulk_read(i32 %234, i32 %236, i32* %237, i32 %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %231
  br label %390

243:                                              ; preds = %231
  %244 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %245 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 129
  br i1 %247, label %248, label %328

248:                                              ; preds = %243
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %250 = load i32, i32* %249, align 16
  %251 = shl i32 %250, 24
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 16
  %255 = or i32 %251, %254
  %256 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %257 = load i32, i32* %256, align 8
  %258 = shl i32 %257, 8
  %259 = or i32 %255, %258
  %260 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 0
  %263 = or i32 %259, %262
  %264 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %265 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %267 = load i32, i32* %266, align 16
  %268 = shl i32 %267, 24
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = shl i32 %270, 16
  %272 = or i32 %268, %271
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %274 = load i32, i32* %273, align 8
  %275 = shl i32 %274, 8
  %276 = or i32 %272, %275
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %278, 0
  %280 = or i32 %276, %279
  %281 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %282 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %286 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %287 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 1
  store i8* %285, i8** %291, align 8
  %292 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %293 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %296 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  store i32 %294, i32* %300, align 8
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %302 = load i32, i32* %301, align 16
  %303 = shl i32 %302, 8
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 0
  %307 = or i32 %303, %306
  %308 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %309 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %307
  store i32 %311, i32* %309, align 4
  %312 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %313 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %314 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 1
  store i8* %312, i8** %318, align 8
  %319 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %320 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %323 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  store i32 %321, i32* %327, align 8
  br label %372

328:                                              ; preds = %243
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %330 = load i32, i32* %329, align 16
  %331 = shl i32 %330, 8
  %332 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = shl i32 %333, 0
  %335 = or i32 %331, %334
  %336 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %337 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %336, i32 0, i32 3
  store i32 %335, i32* %337, align 4
  %338 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %339 = load i32, i32* %338, align 16
  %340 = shl i32 %339, 8
  %341 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = shl i32 %342, 0
  %344 = or i32 %340, %343
  %345 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %346 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, %344
  store i32 %348, i32* %346, align 8
  %349 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %350 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %351 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  store i8* %349, i8** %355, align 8
  %356 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %357 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %360 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i64 0
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  store i32 %358, i32* %364, align 8
  %365 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %366 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %367 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i64 0
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  store i8* %365, i8** %371, align 8
  br label %372

372:                                              ; preds = %328, %248
  br label %388

373:                                              ; preds = %173
  %374 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %375 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %376 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i64 0
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 1
  store i8* %374, i8** %380, align 8
  %381 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %382 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %383 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i64 0
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 1
  store i8* %381, i8** %387, align 8
  br label %388

388:                                              ; preds = %373, %372
  %389 = load i32, i32* %10, align 4
  store i32 %389, i32* %3, align 4
  br label %396

390:                                              ; preds = %242, %230, %204, %197, %186, %142, %101, %93, %37, %29
  %391 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %392 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %391, i32 0, i32 0
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @dev_dbg(i32* %392, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %393)
  %395 = load i32, i32* %10, align 4
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %390, %388
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
