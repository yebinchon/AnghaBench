; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2104_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2104_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32, i32, i32, i32 }
%struct.dvb_usb_adapter = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }

@demod_probe = common dso_local global i32 0, align 4
@stv0900_attach = common dso_local global i32 0, align 4
@dw2104a_stv0900_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@stb6100_attach = common dso_local global i32 0, align 4
@dw2104a_stb6100_config = common dso_local global i32 0, align 4
@stb6100_set_freq = common dso_local global i32 0, align 4
@stb6100_get_freq = common dso_local global i32 0, align 4
@stb6100_set_bandw = common dso_local global i32 0, align 4
@stb6100_get_bandw = common dso_local global i32 0, align 4
@dw210x_set_voltage = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Attached STV0900+STB6100!\00", align 1
@dw2104_stv0900_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@stv6110_attach = common dso_local global i32 0, align 4
@dw2104_stv6110_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Attached STV0900+STV6110A!\00", align 1
@cx24116_attach = common dso_local global i32 0, align 4
@dw2104_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Attached cx24116!\00", align 1
@ds3000_attach = common dso_local global i32 0, align 4
@dw2104_ds3000_config = common dso_local global i32 0, align 4
@ts2020_attach = common dso_local global i32 0, align 4
@dw2104_ts2020_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Attached DS3000!\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dw2104_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2104_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_tuner_ops*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  store %struct.dvb_tuner_ops* null, %struct.dvb_tuner_ops** %4, align 8
  %5 = load i32, i32* @demod_probe, align 4
  %6 = and i32 %5, 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %1
  %9 = load i32, i32* @stv0900_attach, align 4
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %9, %struct.TYPE_10__* @dw2104a_stv0900_config, i32* %13, i32 0)
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %20, align 8
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %8
  %29 = load i32, i32* @stb6100_attach, align 4
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %29, %struct.TYPE_10__* %35, i32* @dw2104a_stb6100_config, i32* %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %28
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store %struct.dvb_tuner_ops* %50, %struct.dvb_tuner_ops** %4, align 8
  %51 = load i32, i32* @stb6100_set_freq, align 4
  %52 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @stb6100_get_freq, align 4
  %55 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @stb6100_set_bandw, align 4
  %58 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @stb6100_get_bandw, align 4
  %61 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** @dw210x_set_voltage, align 8
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* %63, i8** %71, align 8
  %72 = call i32 @info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %208

73:                                               ; preds = %28
  br label %74

74:                                               ; preds = %73, %8
  br label %75

75:                                               ; preds = %74, %1
  %76 = load i32, i32* @demod_probe, align 4
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %75
  %80 = load i32, i32* @stv0900_attach, align 4
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %80, %struct.TYPE_10__* @dw2104_stv0900_config, i32* %84, i32 0)
  %86 = bitcast i8* %85 to %struct.TYPE_10__*
  %87 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %91, align 8
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = icmp ne %struct.TYPE_10__* %97, null
  br i1 %98, label %99, label %125

99:                                               ; preds = %79
  %100 = load i32, i32* @stv6110_attach, align 4
  %101 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %100, %struct.TYPE_10__* %106, i32* @dw2104_stv6110_config, i32* %110)
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %99
  %114 = load i8*, i8** @dw210x_set_voltage, align 8
  %115 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i8* %114, i8** %122, align 8
  %123 = call i32 @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %208

124:                                              ; preds = %99
  br label %125

125:                                              ; preds = %124, %79
  br label %126

126:                                              ; preds = %125, %75
  %127 = load i32, i32* @demod_probe, align 4
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %126
  %131 = load i32, i32* @cx24116_attach, align 4
  %132 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %131, %struct.TYPE_10__* bitcast (i32* @dw2104_config to %struct.TYPE_10__*), i32* %135)
  %137 = bitcast i8* %136 to %struct.TYPE_10__*
  %138 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %142, align 8
  %143 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = icmp ne %struct.TYPE_10__* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %130
  %151 = load i8*, i8** @dw210x_set_voltage, align 8
  %152 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i8* %151, i8** %159, align 8
  %160 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %208

161:                                              ; preds = %130
  br label %162

162:                                              ; preds = %161, %126
  %163 = load i32, i32* @ds3000_attach, align 4
  %164 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %163, %struct.TYPE_10__* bitcast (i32* @dw2104_ds3000_config to %struct.TYPE_10__*), i32* %167)
  %169 = bitcast i8* %168 to %struct.TYPE_10__*
  %170 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %171 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %170, i32 0, i32 0
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store %struct.TYPE_10__* %169, %struct.TYPE_10__** %174, align 8
  %175 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %176 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = icmp ne %struct.TYPE_10__* %180, null
  br i1 %181, label %182, label %205

182:                                              ; preds = %162
  %183 = load i32, i32* @ts2020_attach, align 4
  %184 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %191 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = call i8* (i32, %struct.TYPE_10__*, i32*, ...) @dvb_attach(i32 %183, %struct.TYPE_10__* %189, i32* @dw2104_ts2020_config, i32* %193)
  %195 = load i8*, i8** @dw210x_set_voltage, align 8
  %196 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %197 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %196, i32 0, i32 0
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  store i8* %195, i8** %203, align 8
  %204 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %208

205:                                              ; preds = %162
  %206 = load i32, i32* @EIO, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %205, %182, %150, %113, %42
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_10__*, i32*, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
