; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_generic_cdc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_generic_cdc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_16__*, %struct.usb_host_endpoint*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.usb_host_endpoint = type { i32, %struct.usb_endpoint_descriptor, i32* }
%struct.usb_endpoint_descriptor = type { i32, i64 }
%struct.usb_interface = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.usb_host_endpoint*, %struct.usb_interface_descriptor, i32* }
%struct.usb_interface_descriptor = type { i64, i32 }
%struct.cdc_state = type { %struct.usb_interface*, %struct.usb_interface*, %struct.TYPE_14__*, %struct.TYPE_15__*, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.usb_driver = type { i32 }
%struct.usb_cdc_parsed_header = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_14__*, %struct.TYPE_9__*, i64, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@EDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ACM capabilities %02x, not really RNDIS?\0A\00", align 1
@mbm_guid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"GUID doesn't match\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Descriptor too short\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"rndis: master #0/%p slave #1/%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"missing cdc %s%s%sdescriptor\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"header \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ether \00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"bad notification endpoint\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"missing RNDIS status endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"bad CDC descriptors\0A\00", align 1
@USB_CLASS_CDC_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_generic_cdc_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.cdc_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_driver*, align 8
  %14 = alloca %struct.usb_cdc_parsed_header, align 8
  %15 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 3
  %28 = bitcast i32* %27 to i8*
  %29 = bitcast i8* %28 to %struct.cdc_state*
  store %struct.cdc_state* %29, %struct.cdc_state** %9, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %31 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %30)
  store %struct.usb_driver* %31, %struct.usb_driver** %13, align 8
  %32 = load i32, i32* @EDOM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %339

34:                                               ; No predecessors!
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = call i64 @is_rndis(%struct.usb_interface_descriptor* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %331

62:                                               ; preds = %48, %44, %37, %34
  %63 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = icmp ne %struct.TYPE_14__* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %68 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %75 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %74, i32 0, i32 2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @le16_to_cpu(i64 %78)
  %80 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %73, %66, %62
  %83 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @mbm_guid, align 4
  %92 = call i64 @memcmp(i32 %90, i32 %91, i32 16)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %96 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %331

98:                                               ; preds = %86, %82
  %99 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %14, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %107, 5
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %331

113:                                              ; preds = %102, %98
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %165

116:                                              ; preds = %113
  %117 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %118 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %117, i32 0, i32 3
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = icmp ne %struct.TYPE_15__* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %121, %116
  %125 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %126 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = call i8* @usb_ifnum_to_if(%struct.TYPE_16__* %127, i32 0)
  %129 = bitcast i8* %128 to %struct.usb_interface*
  %130 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %131 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %130, i32 0, i32 1
  store %struct.usb_interface* %129, %struct.usb_interface** %131, align 8
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = call i8* @usb_ifnum_to_if(%struct.TYPE_16__* %134, i32 1)
  %136 = bitcast i8* %135 to %struct.usb_interface*
  %137 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %138 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %137, i32 0, i32 0
  store %struct.usb_interface* %136, %struct.usb_interface** %138, align 8
  %139 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %140 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %139, i32 0, i32 1
  %141 = load %struct.usb_interface*, %struct.usb_interface** %140, align 8
  %142 = icmp ne %struct.usb_interface* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %124
  %144 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %145 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %144, i32 0, i32 0
  %146 = load %struct.usb_interface*, %struct.usb_interface** %145, align 8
  %147 = icmp ne %struct.usb_interface* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %150 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %149, i32 0, i32 1
  %151 = load %struct.usb_interface*, %struct.usb_interface** %150, align 8
  %152 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %153 = icmp ne %struct.usb_interface* %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %148, %143, %124
  %155 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %156 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %155, i32 0, i32 0
  %157 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %158 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %157, i32 0, i32 1
  %159 = load %struct.usb_interface*, %struct.usb_interface** %158, align 8
  %160 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %161 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %160, i32 0, i32 0
  %162 = load %struct.usb_interface*, %struct.usb_interface** %161, align 8
  %163 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.usb_interface* %159, %struct.usb_interface* %162)
  br label %331

164:                                              ; preds = %148
  br label %201

165:                                              ; preds = %121, %113
  %166 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %167 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %200, label %173

173:                                              ; preds = %170
  %174 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %175 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %174, i32 0, i32 2
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = icmp ne %struct.TYPE_14__* %176, null
  br i1 %177, label %200, label %178

178:                                              ; preds = %173, %165
  %179 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %180 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %179, i32 0, i32 0
  %181 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %182 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %187 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %188 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %187, i32 0, i32 3
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = icmp ne %struct.TYPE_15__* %189, null
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %193 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %194 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %193, i32 0, i32 2
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = icmp ne %struct.TYPE_14__* %195, null
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %199 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %186, i8* %192, i8* %198)
  br label %331

200:                                              ; preds = %173, %170
  br label %201

201:                                              ; preds = %200, %164
  %202 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %203 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %202, i32 0, i32 0
  %204 = load %struct.usb_interface*, %struct.usb_interface** %203, align 8
  %205 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %206 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %205, i32 0, i32 1
  %207 = load %struct.usb_interface*, %struct.usb_interface** %206, align 8
  %208 = icmp ne %struct.usb_interface* %204, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %201
  %210 = load %struct.usb_driver*, %struct.usb_driver** %13, align 8
  %211 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %212 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %211, i32 0, i32 0
  %213 = load %struct.usb_interface*, %struct.usb_interface** %212, align 8
  %214 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %215 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %210, %struct.usb_interface* %213, %struct.usbnet* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %3, align 4
  br label %339

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %201
  %222 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %223 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %224 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %223, i32 0, i32 0
  %225 = load %struct.usb_interface*, %struct.usb_interface** %224, align 8
  %226 = call i32 @usbnet_get_endpoints(%struct.usbnet* %222, %struct.usb_interface* %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %249

229:                                              ; preds = %221
  %230 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %231 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %230, i32 0, i32 0
  %232 = load %struct.usb_interface*, %struct.usb_interface** %231, align 8
  %233 = call i32 @usb_set_intfdata(%struct.usb_interface* %232, i32* null)
  %234 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %235 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %234, i32 0, i32 0
  %236 = load %struct.usb_interface*, %struct.usb_interface** %235, align 8
  %237 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %238 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %237, i32 0, i32 1
  %239 = load %struct.usb_interface*, %struct.usb_interface** %238, align 8
  %240 = icmp ne %struct.usb_interface* %236, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %229
  %242 = load %struct.usb_driver*, %struct.usb_driver** %13, align 8
  %243 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %244 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %243, i32 0, i32 0
  %245 = load %struct.usb_interface*, %struct.usb_interface** %244, align 8
  %246 = call i32 @usb_driver_release_interface(%struct.usb_driver* %242, %struct.usb_interface* %245)
  br label %247

247:                                              ; preds = %241, %229
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %3, align 4
  br label %339

249:                                              ; preds = %221
  %250 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %251 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %250, i32 0, i32 0
  %252 = load %struct.usb_interface*, %struct.usb_interface** %251, align 8
  %253 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %254 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %253, i32 0, i32 1
  %255 = load %struct.usb_interface*, %struct.usb_interface** %254, align 8
  %256 = icmp ne %struct.usb_interface* %252, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %259 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %258, i32 0, i32 2
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %259, align 8
  br label %260

260:                                              ; preds = %257, %249
  %261 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %262 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %261, i32 0, i32 1
  %263 = load %struct.usb_interface*, %struct.usb_interface** %262, align 8
  %264 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %263, i32 0, i32 1
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %307

270:                                              ; preds = %260
  %271 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %272 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %271, i32 0, i32 1
  %273 = load %struct.usb_interface*, %struct.usb_interface** %272, align 8
  %274 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %273, i32 0, i32 1
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %276, align 8
  %278 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %277, i64 0
  %279 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %280 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %279, i32 0, i32 2
  store %struct.usb_host_endpoint* %278, %struct.usb_host_endpoint** %280, align 8
  %281 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %282 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %281, i32 0, i32 2
  %283 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %282, align 8
  %284 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %283, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %284, %struct.usb_endpoint_descriptor** %15, align 8
  %285 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %286 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %270
  %289 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %290 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @le16_to_cpu(i64 %291)
  %293 = sext i32 %292 to i64
  %294 = icmp ult i64 %293, 4
  br i1 %294, label %300, label %295

295:                                              ; preds = %288
  %296 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %297 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %295, %288, %270
  %301 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %302 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %301, i32 0, i32 0
  %303 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %304 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %305 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %304, i32 0, i32 2
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %305, align 8
  br label %306

306:                                              ; preds = %300, %295
  br label %307

307:                                              ; preds = %306, %260
  %308 = load i32, i32* %11, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %330

310:                                              ; preds = %307
  %311 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %312 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %311, i32 0, i32 2
  %313 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %312, align 8
  %314 = icmp ne %struct.usb_host_endpoint* %313, null
  br i1 %314, label %330, label %315

315:                                              ; preds = %310
  %316 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %317 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %316, i32 0, i32 0
  %318 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %317, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %319 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %320 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %319, i32 0, i32 0
  %321 = load %struct.usb_interface*, %struct.usb_interface** %320, align 8
  %322 = call i32 @usb_set_intfdata(%struct.usb_interface* %321, i32* null)
  %323 = load %struct.usb_driver*, %struct.usb_driver** %13, align 8
  %324 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %325 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %324, i32 0, i32 0
  %326 = load %struct.usb_interface*, %struct.usb_interface** %325, align 8
  %327 = call i32 @usb_driver_release_interface(%struct.usb_driver* %323, %struct.usb_interface* %326)
  %328 = load i32, i32* @ENODEV, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %3, align 4
  br label %339

330:                                              ; preds = %310, %307
  store i32 0, i32* %3, align 4
  br label %339

331:                                              ; preds = %178, %154, %109, %94, %54
  %332 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %333 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %332, i32 0, i32 1
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = call i32 @dev_info(i32* %335, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %337 = load i32, i32* @ENODEV, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %3, align 4
  br label %339

339:                                              ; preds = %331, %330, %315, %247, %218, %2
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i64 @is_rndis(%struct.usb_interface_descriptor*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i8* @usb_ifnum_to_if(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
