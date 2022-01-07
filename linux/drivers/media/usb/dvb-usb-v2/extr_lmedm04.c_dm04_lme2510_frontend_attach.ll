; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_lme2510_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_lme2510_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dvb_usb_device = type { i32*, i32, %struct.TYPE_6__*, %struct.lme2510_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lme2510_state = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8* }

@tda10086_attach = common dso_local global i32 0, align 4
@tda10086_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TUN Found Frontend TDA10086\00", align 1
@TUNER_LG = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@stv0299_attach = common dso_local global i32 0, align 4
@sharp_z0194_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"FE Found Stv0299\00", align 1
@TUNER_S0194 = common dso_local global i8* null, align 8
@stv0288_attach = common dso_local global i32 0, align 4
@lme_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"FE Found Stv0288\00", align 1
@TUNER_S7395 = common dso_local global i8* null, align 8
@m88rs2000_attach = common dso_local global i32 0, align 4
@m88rs2000_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"FE Found M88RS2000\00", align 1
@TUNER_RS2000 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"DM04/QQBOX Not Powered up or not Supported\00", align 1
@dm04_read_status = common dso_local global i32 0, align 4
@dm04_read_signal_strength = common dso_local global i32 0, align 4
@dm04_read_snr = common dso_local global i32 0, align 4
@dm04_read_ber = common dso_local global i32 0, align 4
@dm04_read_ucblocks = common dso_local global i32 0, align 4
@dm04_lme2510_set_voltage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dm04_lme2510_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm04_lme2510_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.lme2510_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %7)
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %4, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 3
  %11 = load %struct.lme2510_state*, %struct.lme2510_state** %10, align 8
  store %struct.lme2510_state* %11, %struct.lme2510_state** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %13 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  switch i32 %20, label %206 [
    i32 4386, label %21
    i32 4384, label %21
    i32 8944, label %166
  ]

21:                                               ; preds = %1, %1
  %22 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %23 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %22, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load i32, i32* @tda10086_attach, align 4
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 1
  %27 = call i8* @dvb_attach(i32 %24, i32* @tda10086_config, i32* %26)
  %28 = bitcast i8* %27 to %struct.TYPE_8__*
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %21
  %40 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %42 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %41, i32 0, i32 2
  store i32 4, i32* %42, align 8
  %43 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %44 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %43, i32 0, i32 3
  store i32 4, i32* %44, align 4
  %45 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %46 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %45, i32 0, i32 4
  store i32 96, i32* %46, align 8
  %47 = load i8*, i8** @TUNER_LG, align 8
  %48 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %49 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %48, i32 0, i32 12
  store i8* %47, i8** %49, align 8
  %50 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %51 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @TUNER_LG, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %39
  %56 = load i8*, i8** @TUNER_LG, align 8
  %57 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %58 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %60 = call i32 @lme_firmware_switch(%struct.dvb_usb_device* %59, i32 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ 0, %62 ], [ %65, %63 ]
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %39
  br label %206

69:                                               ; preds = %21
  %70 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %71 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %70, i32 0, i32 1
  store i32 4, i32* %71, align 4
  %72 = load i32, i32* @stv0299_attach, align 4
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %73, i32 0, i32 1
  %75 = call i8* @dvb_attach(i32 %72, i32* @sharp_z0194_config, i32* %74)
  %76 = bitcast i8* %75 to %struct.TYPE_8__*
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 0
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %80, align 8
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %83, i64 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %117

87:                                               ; preds = %69
  %88 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %90 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %89, i32 0, i32 2
  store i32 4, i32* %90, align 8
  %91 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %92 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %91, i32 0, i32 3
  store i32 5, i32* %92, align 4
  %93 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %94 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %93, i32 0, i32 4
  store i32 96, i32* %94, align 8
  %95 = load i8*, i8** @TUNER_S0194, align 8
  %96 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %97 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %96, i32 0, i32 12
  store i8* %95, i8** %97, align 8
  %98 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %99 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** @TUNER_S0194, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %87
  %104 = load i8*, i8** @TUNER_S0194, align 8
  %105 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %106 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %108 = call i32 @lme_firmware_switch(%struct.dvb_usb_device* %107, i32 1)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  br label %114

114:                                              ; preds = %111, %110
  %115 = phi i32 [ 0, %110 ], [ %113, %111 ]
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %87
  br label %206

117:                                              ; preds = %69
  %118 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %119 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %118, i32 0, i32 1
  store i32 5, i32* %119, align 4
  %120 = load i32, i32* @stv0288_attach, align 4
  %121 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %122 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %121, i32 0, i32 1
  %123 = call i8* @dvb_attach(i32 %120, i32* @lme_config, i32* %122)
  %124 = bitcast i8* %123 to %struct.TYPE_8__*
  %125 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 0
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %128, align 8
  %129 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %131, i64 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = icmp ne %struct.TYPE_8__* %133, null
  br i1 %134, label %135, label %165

135:                                              ; preds = %117
  %136 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %138 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %137, i32 0, i32 2
  store i32 4, i32* %138, align 8
  %139 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %140 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %139, i32 0, i32 3
  store i32 5, i32* %140, align 4
  %141 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %142 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %141, i32 0, i32 4
  store i32 96, i32* %142, align 8
  %143 = load i8*, i8** @TUNER_S7395, align 8
  %144 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %145 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %144, i32 0, i32 12
  store i8* %143, i8** %145, align 8
  %146 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %147 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** @TUNER_S7395, align 8
  %150 = icmp ne i8* %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %135
  %152 = load i8*, i8** @TUNER_S7395, align 8
  %153 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %154 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %153, i32 0, i32 5
  store i8* %152, i8** %154, align 8
  %155 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %156 = call i32 @lme_firmware_switch(%struct.dvb_usb_device* %155, i32 1)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %162

159:                                              ; preds = %151
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  br label %162

162:                                              ; preds = %159, %158
  %163 = phi i32 [ 0, %158 ], [ %161, %159 ]
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %162, %135
  br label %206

165:                                              ; preds = %117
  br label %166

166:                                              ; preds = %1, %165
  %167 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %168 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %167, i32 0, i32 1
  store i32 5, i32* %168, align 4
  %169 = load i32, i32* @m88rs2000_attach, align 4
  %170 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %171 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %170, i32 0, i32 1
  %172 = call i8* @dvb_attach(i32 %169, i32* @m88rs2000_config, i32* %171)
  %173 = bitcast i8* %172 to %struct.TYPE_8__*
  %174 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %176, i64 0
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %177, align 8
  %178 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %180, i64 0
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = icmp ne %struct.TYPE_8__* %182, null
  br i1 %183, label %184, label %205

184:                                              ; preds = %166
  %185 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %186 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %187 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %186, i32 0, i32 2
  store i32 5, i32* %187, align 8
  %188 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %189 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %188, i32 0, i32 3
  store i32 5, i32* %189, align 4
  %190 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %191 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %190, i32 0, i32 4
  store i32 96, i32* %191, align 8
  %192 = load i8*, i8** @TUNER_RS2000, align 8
  %193 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %194 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %193, i32 0, i32 12
  store i8* %192, i8** %194, align 8
  %195 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %197, i64 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %204 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %203, i32 0, i32 11
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %184, %166
  br label %206

206:                                              ; preds = %1, %205, %164, %116, %68
  %207 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %208 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %209, i64 0
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = icmp eq %struct.TYPE_8__* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = call i32 @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %215 = load i32, i32* @ENODEV, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %2, align 4
  br label %345

217:                                              ; preds = %206
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %217
  %221 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %222 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %223, i64 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = icmp ne %struct.TYPE_8__* %225, null
  br i1 %226, label %227, label %238

227:                                              ; preds = %220
  %228 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %229 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %230, i64 0
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = call i32 @dvb_frontend_detach(%struct.TYPE_8__* %232)
  %234 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %235 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %234, i32 0, i32 0
  %236 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %236, i64 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %237, align 8
  br label %238

238:                                              ; preds = %227, %220
  %239 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %240 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %239, i32 0, i32 0
  store i32* null, i32** %240, align 8
  %241 = load i32, i32* @ENODEV, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %2, align 4
  br label %345

243:                                              ; preds = %217
  %244 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %245 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %244, i32 0, i32 0
  %246 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %246, i64 0
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %253 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %252, i32 0, i32 10
  store i32 %251, i32* %253, align 8
  %254 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %255 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %254, i32 0, i32 0
  %256 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %256, i64 0
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %263 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %262, i32 0, i32 9
  store i32 %261, i32* %263, align 4
  %264 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %265 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %264, i32 0, i32 0
  %266 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %266, i64 0
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %273 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 8
  %274 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %275 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %274, i32 0, i32 0
  %276 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %276, i64 0
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %283 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %282, i32 0, i32 7
  store i32 %281, i32* %283, align 4
  %284 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %285 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %284, i32 0, i32 0
  %286 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %286, i64 0
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %293 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %292, i32 0, i32 6
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* @dm04_read_status, align 4
  %295 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %296 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %295, i32 0, i32 0
  %297 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %297, i64 0
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 5
  store i32 %294, i32* %301, align 4
  %302 = load i32, i32* @dm04_read_signal_strength, align 4
  %303 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %304 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %303, i32 0, i32 0
  %305 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %305, i64 0
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 4
  store i32 %302, i32* %309, align 4
  %310 = load i32, i32* @dm04_read_snr, align 4
  %311 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %312 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %311, i32 0, i32 0
  %313 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %313, i64 0
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 3
  store i32 %310, i32* %317, align 4
  %318 = load i32, i32* @dm04_read_ber, align 4
  %319 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %320 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %319, i32 0, i32 0
  %321 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %321, i64 0
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 2
  store i32 %318, i32* %325, align 4
  %326 = load i32, i32* @dm04_read_ucblocks, align 4
  %327 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %328 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %327, i32 0, i32 0
  %329 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %329, i64 0
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  store i32 %326, i32* %333, align 4
  %334 = load i32, i32* @dm04_lme2510_set_voltage, align 4
  %335 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %336 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %335, i32 0, i32 0
  %337 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %337, i64 0
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  store i32 %334, i32* %341, align 4
  %342 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %343 = call i32 @lme_name(%struct.dvb_usb_adapter* %342)
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* %6, align 4
  store i32 %344, i32* %2, align 4
  br label %345

345:                                              ; preds = %243, %238, %213
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @lme_firmware_switch(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_8__*) #1

declare dso_local i32 @lme_name(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
