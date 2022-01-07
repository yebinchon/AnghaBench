; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.ttusb = type { %struct.TYPE_17__*, i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@stv0299_attach = common dso_local global i32 0, align 4
@alps_stv0299_config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@philips_tsa5059_tuner_set_params = common dso_local global i32 0, align 4
@TTUSB_REV_2_2 = common dso_local global i32 0, align 4
@alps_bsbe1_inittab = common dso_local global i32 0, align 4
@lnbp21_attach = common dso_local global i32 0, align 4
@ttusb_set_voltage = common dso_local global i8* null, align 8
@tda8083_attach = common dso_local global i32 0, align 4
@ttusb_novas_grundig_29504_491_config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@ttusb_novas_grundig_29504_491_tuner_set_params = common dso_local global i32 0, align 4
@ves1820_attach = common dso_local global i32 0, align 4
@alps_tdbe2_config = common dso_local global i32 0, align 4
@alps_tdbe2_tuner_set_params = common dso_local global i32 0, align 4
@stv0297_attach = common dso_local global i32 0, align 4
@dvbc_philips_tdm1316l_config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@dvbc_philips_tdm1316l_tuner_set_params = common dso_local global i32 0, align 4
@cx22700_attach = common dso_local global i32 0, align 4
@alps_tdmb7_config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@alps_tdmb7_tuner_set_params = common dso_local global i32 0, align 4
@tda10046_attach = common dso_local global i32 0, align 4
@philips_tdm1316l_config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@philips_tdm1316l_tuner_init = common dso_local global i32 0, align 4
@philips_tdm1316l_tuner_set_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"dvb-ttusb-budget: A frontend driver was not found for device [%04x:%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"dvb-ttusb-budget: Frontend registration failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttusb*)* @frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_init(%struct.ttusb* %0) #0 {
  %2 = alloca %struct.ttusb*, align 8
  store %struct.ttusb* %0, %struct.ttusb** %2, align 8
  %3 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %4 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %3, i32 0, i32 2
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  switch i32 %9, label %170 [
    i32 4099, label %10
    i32 4100, label %79
    i32 4101, label %122
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @stv0299_attach, align 4
  %12 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %13 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %12, i32 0, i32 3
  %14 = call i8* (i32, ...) @dvb_attach(i32 %11, %struct.TYPE_16__* @alps_stv0299_config, i32* %13)
  %15 = bitcast i8* %14 to %struct.TYPE_17__*
  %16 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %17 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %16, i32 0, i32 0
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %17, align 8
  %18 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %19 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %10
  %23 = load i32, i32* @philips_tsa5059_tuner_set_params, align 4
  %24 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %25 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 8
  %30 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %31 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TTUSB_REV_2_2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load i32, i32* @alps_bsbe1_inittab, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @alps_stv0299_config, i32 0, i32 0), align 4
  %37 = load i32, i32* @lnbp21_attach, align 4
  %38 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %39 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %42 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %41, i32 0, i32 3
  %43 = call i8* (i32, ...) @dvb_attach(i32 %37, %struct.TYPE_17__* %40, i32* %42, i32 0, i32 0)
  br label %51

44:                                               ; preds = %22
  %45 = load i8*, i8** @ttusb_set_voltage, align 8
  %46 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %47 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %44, %35
  br label %170

52:                                               ; preds = %10
  %53 = load i32, i32* @tda8083_attach, align 4
  %54 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %55 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %54, i32 0, i32 3
  %56 = call i8* (i32, ...) @dvb_attach(i32 %53, %struct.TYPE_16__* @ttusb_novas_grundig_29504_491_config, i32* %55)
  %57 = bitcast i8* %56 to %struct.TYPE_17__*
  %58 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %59 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %58, i32 0, i32 0
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %59, align 8
  %60 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %61 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load i32, i32* @ttusb_novas_grundig_29504_491_tuner_set_params, align 4
  %66 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %67 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %65, i32* %71, align 8
  %72 = load i8*, i8** @ttusb_set_voltage, align 8
  %73 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %74 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i8* %72, i8** %77, align 8
  br label %170

78:                                               ; preds = %52
  br label %170

79:                                               ; preds = %1
  %80 = load i32, i32* @ves1820_attach, align 4
  %81 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %82 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %81, i32 0, i32 3
  %83 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %84 = call i32 @read_pwm(%struct.ttusb* %83)
  %85 = call i8* (i32, ...) @dvb_attach(i32 %80, i32* @alps_tdbe2_config, i32* %82, i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_17__*
  %87 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %88 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %87, i32 0, i32 0
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %88, align 8
  %89 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %90 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = icmp ne %struct.TYPE_17__* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %79
  %94 = load i32, i32* @alps_tdbe2_tuner_set_params, align 4
  %95 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %96 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %95, i32 0, i32 0
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 %94, i32* %100, align 8
  br label %170

101:                                              ; preds = %79
  %102 = load i32, i32* @stv0297_attach, align 4
  %103 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %104 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %103, i32 0, i32 3
  %105 = call i8* (i32, ...) @dvb_attach(i32 %102, %struct.TYPE_16__* @dvbc_philips_tdm1316l_config, i32* %104)
  %106 = bitcast i8* %105 to %struct.TYPE_17__*
  %107 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %108 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %107, i32 0, i32 0
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %108, align 8
  %109 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %110 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = icmp ne %struct.TYPE_17__* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %101
  %114 = load i32, i32* @dvbc_philips_tdm1316l_tuner_set_params, align 4
  %115 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %116 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 8
  br label %170

121:                                              ; preds = %101
  br label %170

122:                                              ; preds = %1
  %123 = load i32, i32* @cx22700_attach, align 4
  %124 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %125 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %124, i32 0, i32 3
  %126 = call i8* (i32, ...) @dvb_attach(i32 %123, %struct.TYPE_16__* @alps_tdmb7_config, i32* %125)
  %127 = bitcast i8* %126 to %struct.TYPE_17__*
  %128 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %129 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %128, i32 0, i32 0
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %129, align 8
  %130 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %131 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = icmp ne %struct.TYPE_17__* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %122
  %135 = load i32, i32* @alps_tdmb7_tuner_set_params, align 4
  %136 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %137 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %136, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  store i32 %135, i32* %141, align 8
  br label %170

142:                                              ; preds = %122
  %143 = load i32, i32* @tda10046_attach, align 4
  %144 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %145 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %144, i32 0, i32 3
  %146 = call i8* (i32, ...) @dvb_attach(i32 %143, %struct.TYPE_16__* @philips_tdm1316l_config, i32* %145)
  %147 = bitcast i8* %146 to %struct.TYPE_17__*
  %148 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %149 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %148, i32 0, i32 0
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %149, align 8
  %150 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %151 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %150, i32 0, i32 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = icmp ne %struct.TYPE_17__* %152, null
  br i1 %153, label %154, label %169

154:                                              ; preds = %142
  %155 = load i32, i32* @philips_tdm1316l_tuner_init, align 4
  %156 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %157 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* @philips_tdm1316l_tuner_set_params, align 4
  %163 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %164 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %163, i32 0, i32 0
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 %162, i32* %168, align 8
  br label %170

169:                                              ; preds = %142
  br label %170

170:                                              ; preds = %1, %169, %154, %134, %121, %113, %93, %78, %64, %51
  %171 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %172 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %171, i32 0, i32 0
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = icmp eq %struct.TYPE_17__* %173, null
  br i1 %174, label %175, label %191

175:                                              ; preds = %170
  %176 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %177 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %176, i32 0, i32 2
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %184 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %183, i32 0, i32 2
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le16_to_cpu(i32 %188)
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %182, i32 %189)
  br label %208

191:                                              ; preds = %170
  %192 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %193 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %192, i32 0, i32 1
  %194 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %195 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %194, i32 0, i32 0
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = call i64 @dvb_register_frontend(i32* %193, %struct.TYPE_17__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %191
  %200 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %201 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %202 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = call i32 @dvb_frontend_detach(%struct.TYPE_17__* %203)
  %205 = load %struct.ttusb*, %struct.ttusb** %2, align 8
  %206 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %205, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %206, align 8
  br label %207

207:                                              ; preds = %199, %191
  br label %208

208:                                              ; preds = %207, %175
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @dvb_attach(i32, ...) #1

declare dso_local i32 @read_pwm(%struct.ttusb*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
