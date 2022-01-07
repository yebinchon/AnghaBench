; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i8*, %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"board id=%lu, interface number %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"interface %d won't be used. Expecting interface %d to popup\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"usb_set_interface failed, rc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"smsusb_probe %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"endpoint %d %02x %02x %d\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"rom interface 0 is not used\0A\00", align 1
@SMS1XXX_BOARD_SIANO_STELLAR_ROM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"usb\\%d-%s\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"stellar device in cold state was found at %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"stellar device now in warm state\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Failed to put stellar in warm state. Error: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Device initialized with return code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @smsusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %20)
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_16__* @sms_get_board(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %27, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %2
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_16__* @sms_get_board(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %244

51:                                               ; preds = %2
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @usb_set_interface(%struct.usb_device* %57, i64 %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %244

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %74 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %172, %72
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %175

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %101, i32 %112, i32 %123)
  %125 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %126 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @USB_DIR_IN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %89
  %140 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %141 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %142 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %143 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %141, i32 %152)
  %154 = call i32 @usb_clear_halt(%struct.usb_device* %140, i32 %153)
  store i32 %154, i32* %9, align 4
  br label %171

155:                                              ; preds = %89
  %156 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %157 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %158 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %159 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %158, i32 0, i32 1
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @usb_sndbulkpipe(%struct.usb_device* %157, i32 %168)
  %170 = call i32 @usb_clear_halt(%struct.usb_device* %156, i32 %169)
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %155, %139
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %80

175:                                              ; preds = %80
  %176 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %177 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %176, i32 0, i32 2
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %195

183:                                              ; preds = %175
  %184 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %185 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %184, i32 0, i32 1
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %244

195:                                              ; preds = %183, %175
  %196 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %197 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SMS1XXX_BOARD_SIANO_STELLAR_ROM, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %230

201:                                              ; preds = %195
  %202 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %203 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %204 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %203, i32 0, i32 1
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %209 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @snprintf(i8* %202, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %207, i8* %210)
  %212 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %213 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %212)
  %214 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %216 = call i32 @smscore_registry_getmode(i8* %215)
  %217 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %218 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @smsusb1_load_firmware(%struct.usb_device* %214, i32 %216, i32 %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %201
  %224 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %228

225:                                              ; preds = %201
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %225, %223
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %3, align 4
  br label %244

230:                                              ; preds = %195
  %231 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %232 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %233 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @smsusb_init_device(%struct.usb_interface* %231, i32 %234)
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %230
  %237 = load i32, i32* %9, align 4
  %238 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %237)
  %239 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %240 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @sms_board_load_modules(i32 %241)
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %236, %228, %191, %67, %35
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.TYPE_16__* @sms_get_board(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @usb_clear_halt(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @smsusb1_load_firmware(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @smscore_registry_getmode(i8*) #1

declare dso_local i32 @smsusb_init_device(%struct.usb_interface*, i32) #1

declare dso_local i32 @sms_board_load_modules(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
