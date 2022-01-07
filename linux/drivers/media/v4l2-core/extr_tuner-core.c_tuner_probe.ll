; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tuner = type { i8*, i32, double, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__*, %struct.i2c_client*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tuner_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"(tuner unset)\00", align 1
@UNSET = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@show_i2c = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"I2C RECV = %*ph\0A\00", align 1
@no_autodetect = common dso_local global i32 0, align 4
@tea5761_autodetection = common dso_local global i32 0, align 4
@TUNER_TEA5761 = common dso_local global i32 0, align 4
@T_RADIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tda829x_probe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"tda829x detected\0A\00", align 1
@TUNER_TDA9887 = common dso_local global i32 0, align 4
@T_ANALOG_TV = common dso_local global i32 0, align 4
@tea5767_autodetection = common dso_local global i32 0, align 4
@TUNER_TEA5767 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Setting mode_mask to 0x%02x\0A\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@tuner_list = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Tuner %d found with type(s)%s%s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" Radio\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" TV\00", align 1
@IF_VID_DEC_PAD_IF_INPUT = common dso_local global i64 0, align 8
@IF_VID_DEC_PAD_NUM_PADS = common dso_local global i32 0, align 4
@IF_VID_DEC_PAD_OUT = common dso_local global i64 0, align 8
@MEDIA_ENT_F_IF_VID_DECODER = common dso_local global i32 0, align 4
@MEDIA_ENT_F_TUNER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@PAD_SIGNAL_ANALOG = common dso_local global i8* null, align 8
@PAD_SIGNAL_AUDIO = common dso_local global i8* null, align 8
@TUNER_NUM_PADS = common dso_local global i32 0, align 4
@TUNER_PAD_AUD_OUT = common dso_local global i64 0, align 8
@TUNER_PAD_OUTPUT = common dso_local global i64 0, align 8
@TUNER_PAD_RF_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tuner_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tuner*, align 8
  %7 = alloca %struct.tuner*, align 8
  %8 = alloca %struct.tuner*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tuner* @kzalloc(i32 96, i32 %11)
  store %struct.tuner* %12, %struct.tuner** %6, align 8
  %13 = load %struct.tuner*, %struct.tuner** %6, align 8
  %14 = icmp eq %struct.tuner* null, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %250

18:                                               ; preds = %2
  %19 = load %struct.tuner*, %struct.tuner** %6, align 8
  %20 = getelementptr inbounds %struct.tuner, %struct.tuner* %19, i32 0, i32 10
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__* %20, %struct.i2c_client* %21, i32* @tuner_ops)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.tuner*, %struct.tuner** %6, align 8
  %25 = getelementptr inbounds %struct.tuner, %struct.tuner* %24, i32 0, i32 12
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.tuner*, %struct.tuner** %6, align 8
  %27 = getelementptr inbounds %struct.tuner, %struct.tuner* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @UNSET, align 4
  %29 = load %struct.tuner*, %struct.tuner** %6, align 8
  %30 = getelementptr inbounds %struct.tuner, %struct.tuner* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %32 = load %struct.tuner*, %struct.tuner** %6, align 8
  %33 = getelementptr inbounds %struct.tuner, %struct.tuner* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tuner*, %struct.tuner** %6, align 8
  %35 = getelementptr inbounds %struct.tuner, %struct.tuner* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load %struct.tuner*, %struct.tuner** %6, align 8
  %37 = getelementptr inbounds %struct.tuner, %struct.tuner* %36, i32 0, i32 2
  store double 1.400000e+06, double* %37, align 8
  %38 = load %struct.tuner*, %struct.tuner** %6, align 8
  %39 = getelementptr inbounds %struct.tuner, %struct.tuner* %38, i32 0, i32 3
  store i32 6400, i32* %39, align 8
  %40 = load i64, i64* @show_i2c, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %18
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 16)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %47 = call i32 @i2c_master_recv(%struct.i2c_client* %45, i8* %46, i32 16)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %53 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i32, i32* @no_autodetect, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %169, label %58

58:                                               ; preds = %55
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %168 [
    i32 16, label %62
    i32 66, label %104
    i32 67, label %104
    i32 74, label %104
    i32 75, label %104
    i32 96, label %130
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @tea5761_autodetection, align 4
  %64 = load %struct.tuner*, %struct.tuner** %6, align 8
  %65 = getelementptr inbounds %struct.tuner, %struct.tuner* %64, i32 0, i32 12
  %66 = load %struct.i2c_client*, %struct.i2c_client** %65, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tuner*, %struct.tuner** %6, align 8
  %70 = getelementptr inbounds %struct.tuner, %struct.tuner* %69, i32 0, i32 12
  %71 = load %struct.i2c_client*, %struct.i2c_client** %70, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @tuner_symbol_probe(i32 %63, i32 %68, i32 %73)
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %62
  %77 = load i32, i32* @TUNER_TEA5761, align 4
  %78 = load %struct.tuner*, %struct.tuner** %6, align 8
  %79 = getelementptr inbounds %struct.tuner, %struct.tuner* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @T_RADIO, align 4
  %81 = load %struct.tuner*, %struct.tuner** %6, align 8
  %82 = getelementptr inbounds %struct.tuner, %struct.tuner* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.tuner*, %struct.tuner** %6, align 8
  %84 = getelementptr inbounds %struct.tuner, %struct.tuner* %83, i32 0, i32 12
  %85 = load %struct.i2c_client*, %struct.i2c_client** %84, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @tuner_lookup(i32 %87, %struct.tuner** %7, %struct.tuner** %8)
  %89 = load %struct.tuner*, %struct.tuner** %8, align 8
  %90 = icmp ne %struct.tuner* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load i32, i32* @T_RADIO, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.tuner*, %struct.tuner** %8, align 8
  %95 = getelementptr inbounds %struct.tuner, %struct.tuner* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %76
  br label %196

99:                                               ; preds = %62
  %100 = load %struct.tuner*, %struct.tuner** %6, align 8
  %101 = call i32 @kfree(%struct.tuner* %100)
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %250

104:                                              ; preds = %58, %58, %58, %58
  %105 = load i32, i32* @tda829x_probe, align 4
  %106 = load %struct.tuner*, %struct.tuner** %6, align 8
  %107 = getelementptr inbounds %struct.tuner, %struct.tuner* %106, i32 0, i32 12
  %108 = load %struct.i2c_client*, %struct.i2c_client** %107, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.tuner*, %struct.tuner** %6, align 8
  %112 = getelementptr inbounds %struct.tuner, %struct.tuner* %111, i32 0, i32 12
  %113 = load %struct.i2c_client*, %struct.i2c_client** %112, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @tuner_symbol_probe(i32 %105, i32 %110, i32 %115)
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %129

120:                                              ; preds = %104
  %121 = load i32, i32* @TUNER_TDA9887, align 4
  %122 = load %struct.tuner*, %struct.tuner** %6, align 8
  %123 = getelementptr inbounds %struct.tuner, %struct.tuner* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @T_RADIO, align 4
  %125 = load i32, i32* @T_ANALOG_TV, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.tuner*, %struct.tuner** %6, align 8
  %128 = getelementptr inbounds %struct.tuner, %struct.tuner* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  br label %196

129:                                              ; preds = %118
  br label %168

130:                                              ; preds = %58
  %131 = load i32, i32* @tea5767_autodetection, align 4
  %132 = load %struct.tuner*, %struct.tuner** %6, align 8
  %133 = getelementptr inbounds %struct.tuner, %struct.tuner* %132, i32 0, i32 12
  %134 = load %struct.i2c_client*, %struct.i2c_client** %133, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tuner*, %struct.tuner** %6, align 8
  %138 = getelementptr inbounds %struct.tuner, %struct.tuner* %137, i32 0, i32 12
  %139 = load %struct.i2c_client*, %struct.i2c_client** %138, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @tuner_symbol_probe(i32 %131, i32 %136, i32 %141)
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %130
  %145 = load i32, i32* @TUNER_TEA5767, align 4
  %146 = load %struct.tuner*, %struct.tuner** %6, align 8
  %147 = getelementptr inbounds %struct.tuner, %struct.tuner* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @T_RADIO, align 4
  %149 = load %struct.tuner*, %struct.tuner** %6, align 8
  %150 = getelementptr inbounds %struct.tuner, %struct.tuner* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.tuner*, %struct.tuner** %6, align 8
  %152 = getelementptr inbounds %struct.tuner, %struct.tuner* %151, i32 0, i32 12
  %153 = load %struct.i2c_client*, %struct.i2c_client** %152, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @tuner_lookup(i32 %155, %struct.tuner** %7, %struct.tuner** %8)
  %157 = load %struct.tuner*, %struct.tuner** %8, align 8
  %158 = icmp ne %struct.tuner* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %144
  %160 = load i32, i32* @T_RADIO, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.tuner*, %struct.tuner** %8, align 8
  %163 = getelementptr inbounds %struct.tuner, %struct.tuner* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %159, %144
  br label %196

167:                                              ; preds = %130
  br label %168

168:                                              ; preds = %58, %167, %129
  br label %169

169:                                              ; preds = %168, %55
  %170 = load %struct.tuner*, %struct.tuner** %6, align 8
  %171 = getelementptr inbounds %struct.tuner, %struct.tuner* %170, i32 0, i32 12
  %172 = load %struct.i2c_client*, %struct.i2c_client** %171, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @tuner_lookup(i32 %174, %struct.tuner** %7, %struct.tuner** %8)
  %176 = load %struct.tuner*, %struct.tuner** %8, align 8
  %177 = icmp eq %struct.tuner* %176, null
  br i1 %177, label %178, label %195

178:                                              ; preds = %169
  %179 = load i32, i32* @T_ANALOG_TV, align 4
  %180 = load %struct.tuner*, %struct.tuner** %6, align 8
  %181 = getelementptr inbounds %struct.tuner, %struct.tuner* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %struct.tuner*, %struct.tuner** %7, align 8
  %183 = icmp eq %struct.tuner* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* @T_RADIO, align 4
  %186 = load %struct.tuner*, %struct.tuner** %6, align 8
  %187 = getelementptr inbounds %struct.tuner, %struct.tuner* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %178
  %191 = load %struct.tuner*, %struct.tuner** %6, align 8
  %192 = getelementptr inbounds %struct.tuner, %struct.tuner* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %190, %169
  br label %196

196:                                              ; preds = %195, %166, %120, %98
  %197 = load %struct.tuner*, %struct.tuner** %6, align 8
  %198 = getelementptr inbounds %struct.tuner, %struct.tuner* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @T_ANALOG_TV, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %205 = load %struct.tuner*, %struct.tuner** %6, align 8
  %206 = getelementptr inbounds %struct.tuner, %struct.tuner* %205, i32 0, i32 9
  store i32 %204, i32* %206, align 8
  br label %211

207:                                              ; preds = %196
  %208 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %209 = load %struct.tuner*, %struct.tuner** %6, align 8
  %210 = getelementptr inbounds %struct.tuner, %struct.tuner* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %203
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = load %struct.tuner*, %struct.tuner** %6, align 8
  %214 = getelementptr inbounds %struct.tuner, %struct.tuner* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.tuner*, %struct.tuner** %6, align 8
  %217 = getelementptr inbounds %struct.tuner, %struct.tuner* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.tuner*, %struct.tuner** %6, align 8
  %220 = getelementptr inbounds %struct.tuner, %struct.tuner* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.tuner*, %struct.tuner** %6, align 8
  %223 = getelementptr inbounds %struct.tuner, %struct.tuner* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @set_type(%struct.i2c_client* %212, i32 %215, i32 %218, i32 %221, i32 %225)
  %227 = load %struct.tuner*, %struct.tuner** %6, align 8
  %228 = getelementptr inbounds %struct.tuner, %struct.tuner* %227, i32 0, i32 6
  %229 = call i32 @list_add_tail(i32* %228, i32* @tuner_list)
  %230 = load %struct.tuner*, %struct.tuner** %6, align 8
  %231 = getelementptr inbounds %struct.tuner, %struct.tuner* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.tuner*, %struct.tuner** %6, align 8
  %234 = getelementptr inbounds %struct.tuner, %struct.tuner* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @T_RADIO, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %241 = load %struct.tuner*, %struct.tuner** %6, align 8
  %242 = getelementptr inbounds %struct.tuner, %struct.tuner* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @T_ANALOG_TV, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %249 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %232, i8* %240, i8* %248)
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %211, %99, %15
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.tuner* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @tuner_symbol_probe(i32, i32, i32) #1

declare dso_local i32 @tuner_lookup(i32, %struct.tuner**, %struct.tuner**) #1

declare dso_local i32 @kfree(%struct.tuner*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @set_type(%struct.i2c_client*, i32, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
