; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_10__ = type { i32 }
%struct.dvb_usb_adapter = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, i32, %struct.usb_device* }
%struct.TYPE_12__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.stv6110x_devctl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stv090x_attach = common dso_local global i32 0, align 4
@technisat_usb2_stv090x_config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@STV090x_DEMODULATOR_0 = common dso_local global i32* null, align 8
@stv6110x_attach = common dso_local global i32 0, align 4
@technisat_usb2_stv6110x_config = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SET_IFCLK_TO_EXTERNAL_TSCLK_VENDOR_REQUEST = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not set IF_CLK to external\00", align 1
@technisat_usb2_set_voltage = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @technisat_usb2_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv6110x_devctl*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load i32, i32* @stv090x_attach, align 4
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load i32*, i32** @STV090x_DEMODULATOR_0, align 8
  %18 = call i8* @dvb_attach(i32 %12, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32* %16, i32* %17)
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %24, align 8
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %179

32:                                               ; preds = %1
  %33 = load i32, i32* @stv6110x_attach, align 4
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = call i8* @dvb_attach(i32 %33, %struct.TYPE_14__* %39, i32* @technisat_usb2_stv6110x_config, i32* %43)
  %45 = bitcast i8* %44 to %struct.stv6110x_devctl*
  store %struct.stv6110x_devctl* %45, %struct.stv6110x_devctl** %6, align 8
  %46 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %47 = icmp ne %struct.stv6110x_devctl* %46, null
  br i1 %47, label %48, label %165

48:                                               ; preds = %32
  %49 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %50 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 11), align 8
  %52 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %53 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 10), align 4
  %55 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %56 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 9), align 8
  %58 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %59 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 8), align 4
  %61 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %62 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 7), align 8
  %64 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %65 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 6), align 4
  %67 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %68 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 5), align 8
  %70 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %71 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 4), align 4
  %73 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %74 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 3), align 8
  %76 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %77 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 2), align 4
  %79 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %6, align 8
  %80 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @technisat_usb2_stv090x_config, i32 0, i32 1), align 8
  %82 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %89, align 8
  %91 = icmp ne i32 (%struct.TYPE_14__*)* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %48
  %93 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %100, align 8
  %102 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = call i32 %101(%struct.TYPE_14__* %107)
  br label %109

109:                                              ; preds = %92, %48
  %110 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = call i64 @mutex_lock_interruptible(i32* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %197

119:                                              ; preds = %109
  %120 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %121 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %122 = call i32 @usb_sndctrlpipe(%struct.usb_device* %121, i32 0)
  %123 = load i32, i32* @SET_IFCLK_TO_EXTERNAL_TSCLK_VENDOR_REQUEST, align 4
  %124 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %125 = load i32, i32* @USB_DIR_OUT, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @usb_control_msg(%struct.usb_device* %120, i32 %122, i32 %123, i32 %126, i32 0, i32 0, i32* null, i32 0, i32 500)
  store i32 %127, i32* %5, align 4
  %128 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %119
  %138 = load i32, i32* @technisat_usb2_set_voltage, align 4
  %139 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i32 %138, i32* %146, align 4
  %147 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %157, i32 0, i32 1
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @strscpy(i32 %156, i32 %163, i32 4)
  br label %178

165:                                              ; preds = %32
  %166 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %166, i32 0, i32 0
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = call i32 @dvb_frontend_detach(%struct.TYPE_14__* %171)
  %173 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %173, i32 0, i32 0
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %177, align 8
  br label %178

178:                                              ; preds = %165, %137
  br label %179

179:                                              ; preds = %178, %1
  %180 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %180, i32 0, i32 1
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = call i32 @technisat_usb2_set_led_timer(%struct.TYPE_15__* %182, i32 1, i32 1)
  %184 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = icmp eq %struct.TYPE_14__* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %179
  %192 = load i32, i32* @ENODEV, align 4
  %193 = sub nsw i32 0, %192
  br label %195

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %191
  %196 = phi i32 [ %193, %191 ], [ 0, %194 ]
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %195, %116
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_14__*) #1

declare dso_local i32 @technisat_usb2_set_led_timer(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
