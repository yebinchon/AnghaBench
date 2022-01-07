; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device_properties = type { i32, %struct.TYPE_8__*, i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@s6x0_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@P1100_FIRMWARE = common dso_local global i32 0, align 4
@d1100 = common dso_local global i32 0, align 4
@prof_rc_query = common dso_local global i8* null, align 8
@RC_MAP_TBS_NEC = common dso_local global i8* null, align 8
@stv0288_frontend_attach = common dso_local global i32 0, align 4
@S660_FIRMWARE = common dso_local global i32 0, align 4
@d660 = common dso_local global i32 0, align 4
@d480_1 = common dso_local global i32 0, align 4
@d480_2 = common dso_local global i32 0, align 4
@ds3000_frontend_attach = common dso_local global i32 0, align 4
@P7500_FIRMWARE = common dso_local global i32 0, align 4
@d7500 = common dso_local global i32 0, align 4
@prof_7500_frontend_attach = common dso_local global i32 0, align 4
@su3000_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@d421 = common dso_local global i32 0, align 4
@d632 = common dso_local global i32 0, align 4
@m88rs2000_frontend_attach = common dso_local global i32 0, align 4
@dw2102_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@dw2104_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@dw3101_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@t220_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@tt_s2_4600_properties = common dso_local global %struct.dvb_usb_device_properties zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dw2102_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2102_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device_properties*, align 8
  %8 = alloca %struct.dvb_usb_device_properties*, align 8
  %9 = alloca %struct.dvb_usb_device_properties*, align 8
  %10 = alloca %struct.dvb_usb_device_properties*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dvb_usb_device_properties* @kmemdup(%struct.dvb_usb_device_properties* @s6x0_properties, i32 48, i32 %13)
  store %struct.dvb_usb_device_properties* %14, %struct.dvb_usb_device_properties** %7, align 8
  %15 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %16 = icmp ne %struct.dvb_usb_device_properties* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %229

18:                                               ; preds = %2
  %19 = load i32, i32* @P1100_FIRMWARE, align 4
  %20 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @d1100, align 4
  %23 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load i8*, i8** @prof_rc_query, align 8
  %28 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** @RC_MAP_TBS_NEC, align 8
  %33 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* @stv0288_frontend_attach, align 4
  %38 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.dvb_usb_device_properties* @kmemdup(%struct.dvb_usb_device_properties* @s6x0_properties, i32 48, i32 %45)
  store %struct.dvb_usb_device_properties* %46, %struct.dvb_usb_device_properties** %8, align 8
  %47 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %48 = icmp ne %struct.dvb_usb_device_properties* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %18
  br label %226

50:                                               ; preds = %18
  %51 = load i32, i32* @S660_FIRMWARE, align 4
  %52 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %54, i32 0, i32 0
  store i32 3, i32* %55, align 8
  %56 = load i32, i32* @d660, align 4
  %57 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @d480_1, align 4
  %62 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @d480_2, align 4
  %67 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @ds3000_frontend_attach, align 4
  %72 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.dvb_usb_device_properties* @kmemdup(%struct.dvb_usb_device_properties* @s6x0_properties, i32 48, i32 %79)
  store %struct.dvb_usb_device_properties* %80, %struct.dvb_usb_device_properties** %9, align 8
  %81 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %82 = icmp ne %struct.dvb_usb_device_properties* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %50
  br label %223

84:                                               ; preds = %50
  %85 = load i32, i32* @P7500_FIRMWARE, align 4
  %86 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %87 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @d7500, align 4
  %89 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load i8*, i8** @prof_rc_query, align 8
  %94 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** @RC_MAP_TBS_NEC, align 8
  %99 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %100 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i8* %98, i8** %102, align 8
  %103 = load i32, i32* @prof_7500_frontend_attach, align 4
  %104 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %105 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.dvb_usb_device_properties* @kmemdup(%struct.dvb_usb_device_properties* @su3000_properties, i32 48, i32 %111)
  store %struct.dvb_usb_device_properties* %112, %struct.dvb_usb_device_properties** %10, align 8
  %113 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %114 = icmp ne %struct.dvb_usb_device_properties* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %84
  br label %220

116:                                              ; preds = %84
  %117 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %118 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %117, i32 0, i32 0
  store i32 2, i32* %118, align 8
  %119 = load i32, i32* @d421, align 4
  %120 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %121 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* @d632, align 4
  %125 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* @m88rs2000_frontend_attach, align 4
  %130 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %131 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  %137 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %138 = load i32, i32* @THIS_MODULE, align 4
  %139 = load i32, i32* @adapter_nr, align 4
  %140 = call i64 @dvb_usb_device_init(%struct.usb_interface* %137, %struct.dvb_usb_device_properties* @dw2102_properties, i32 %138, i32* null, i32 %139)
  %141 = icmp eq i64 0, %140
  br i1 %141, label %206, label %142

142:                                              ; preds = %116
  %143 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %144 = load i32, i32* @THIS_MODULE, align 4
  %145 = load i32, i32* @adapter_nr, align 4
  %146 = call i64 @dvb_usb_device_init(%struct.usb_interface* %143, %struct.dvb_usb_device_properties* @dw2104_properties, i32 %144, i32* null, i32 %145)
  %147 = icmp eq i64 0, %146
  br i1 %147, label %206, label %148

148:                                              ; preds = %142
  %149 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %150 = load i32, i32* @THIS_MODULE, align 4
  %151 = load i32, i32* @adapter_nr, align 4
  %152 = call i64 @dvb_usb_device_init(%struct.usb_interface* %149, %struct.dvb_usb_device_properties* @dw3101_properties, i32 %150, i32* null, i32 %151)
  %153 = icmp eq i64 0, %152
  br i1 %153, label %206, label %154

154:                                              ; preds = %148
  %155 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %156 = load i32, i32* @THIS_MODULE, align 4
  %157 = load i32, i32* @adapter_nr, align 4
  %158 = call i64 @dvb_usb_device_init(%struct.usb_interface* %155, %struct.dvb_usb_device_properties* @s6x0_properties, i32 %156, i32* null, i32 %157)
  %159 = icmp eq i64 0, %158
  br i1 %159, label %206, label %160

160:                                              ; preds = %154
  %161 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %162 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %163 = load i32, i32* @THIS_MODULE, align 4
  %164 = load i32, i32* @adapter_nr, align 4
  %165 = call i64 @dvb_usb_device_init(%struct.usb_interface* %161, %struct.dvb_usb_device_properties* %162, i32 %163, i32* null, i32 %164)
  %166 = icmp eq i64 0, %165
  br i1 %166, label %206, label %167

167:                                              ; preds = %160
  %168 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %169 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %170 = load i32, i32* @THIS_MODULE, align 4
  %171 = load i32, i32* @adapter_nr, align 4
  %172 = call i64 @dvb_usb_device_init(%struct.usb_interface* %168, %struct.dvb_usb_device_properties* %169, i32 %170, i32* null, i32 %171)
  %173 = icmp eq i64 0, %172
  br i1 %173, label %206, label %174

174:                                              ; preds = %167
  %175 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %176 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %177 = load i32, i32* @THIS_MODULE, align 4
  %178 = load i32, i32* @adapter_nr, align 4
  %179 = call i64 @dvb_usb_device_init(%struct.usb_interface* %175, %struct.dvb_usb_device_properties* %176, i32 %177, i32* null, i32 %178)
  %180 = icmp eq i64 0, %179
  br i1 %180, label %206, label %181

181:                                              ; preds = %174
  %182 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %183 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %184 = load i32, i32* @THIS_MODULE, align 4
  %185 = load i32, i32* @adapter_nr, align 4
  %186 = call i64 @dvb_usb_device_init(%struct.usb_interface* %182, %struct.dvb_usb_device_properties* %183, i32 %184, i32* null, i32 %185)
  %187 = icmp eq i64 0, %186
  br i1 %187, label %206, label %188

188:                                              ; preds = %181
  %189 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %190 = load i32, i32* @THIS_MODULE, align 4
  %191 = load i32, i32* @adapter_nr, align 4
  %192 = call i64 @dvb_usb_device_init(%struct.usb_interface* %189, %struct.dvb_usb_device_properties* @su3000_properties, i32 %190, i32* null, i32 %191)
  %193 = icmp eq i64 0, %192
  br i1 %193, label %206, label %194

194:                                              ; preds = %188
  %195 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %196 = load i32, i32* @THIS_MODULE, align 4
  %197 = load i32, i32* @adapter_nr, align 4
  %198 = call i64 @dvb_usb_device_init(%struct.usb_interface* %195, %struct.dvb_usb_device_properties* @t220_properties, i32 %196, i32* null, i32 %197)
  %199 = icmp eq i64 0, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %202 = load i32, i32* @THIS_MODULE, align 4
  %203 = load i32, i32* @adapter_nr, align 4
  %204 = call i64 @dvb_usb_device_init(%struct.usb_interface* %201, %struct.dvb_usb_device_properties* @tt_s2_4600_properties, i32 %202, i32* null, i32 %203)
  %205 = icmp eq i64 0, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %200, %194, %188, %181, %174, %167, %160, %154, %148, %142, %116
  %207 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %208 = call i32 @kfree(%struct.dvb_usb_device_properties* %207)
  %209 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %210 = call i32 @kfree(%struct.dvb_usb_device_properties* %209)
  %211 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %212 = call i32 @kfree(%struct.dvb_usb_device_properties* %211)
  %213 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %214 = call i32 @kfree(%struct.dvb_usb_device_properties* %213)
  store i32 0, i32* %3, align 4
  br label %231

215:                                              ; preds = %200
  %216 = load i32, i32* @ENODEV, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %6, align 4
  %218 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %10, align 8
  %219 = call i32 @kfree(%struct.dvb_usb_device_properties* %218)
  br label %220

220:                                              ; preds = %215, %115
  %221 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %9, align 8
  %222 = call i32 @kfree(%struct.dvb_usb_device_properties* %221)
  br label %223

223:                                              ; preds = %220, %83
  %224 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %225 = call i32 @kfree(%struct.dvb_usb_device_properties* %224)
  br label %226

226:                                              ; preds = %223, %49
  %227 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %7, align 8
  %228 = call i32 @kfree(%struct.dvb_usb_device_properties* %227)
  br label %229

229:                                              ; preds = %226, %17
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %229, %206
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.dvb_usb_device_properties* @kmemdup(%struct.dvb_usb_device_properties*, i32, i32) #1

declare dso_local i64 @dvb_usb_device_init(%struct.usb_interface*, %struct.dvb_usb_device_properties*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.dvb_usb_device_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
