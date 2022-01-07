; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pulse8 = type { i32*, i32, i32, i32 }
%struct.serio = type { i32 }
%struct.cec_log_addrs = type { i32*, i32, i32, i32, i32, i8**, i8** }
%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@MSGCODE_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Firmware version %04x\0A\00", align 1
@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@MSGCODE_GET_BUILDDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Firmware build date %04ld.%02d.%02d %02d:%02d:%02d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Persistent config:\0A\00", align 1
@MSGCODE_GET_AUTO_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Autonomous mode: %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@MSGCODE_GET_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Primary device type: %d\0A\00", align 1
@CEC_LOG_ADDR_TYPE_TV = common dso_local global i8* null, align 8
@CEC_OP_ALL_DEVTYPE_TV = common dso_local global i8* null, align 8
@CEC_LOG_ADDR_TYPE_RECORD = common dso_local global i8* null, align 8
@CEC_OP_ALL_DEVTYPE_RECORD = common dso_local global i8* null, align 8
@CEC_LOG_ADDR_TYPE_TUNER = common dso_local global i8* null, align 8
@CEC_OP_ALL_DEVTYPE_TUNER = common dso_local global i8* null, align 8
@CEC_LOG_ADDR_TYPE_PLAYBACK = common dso_local global i8* null, align 8
@CEC_OP_ALL_DEVTYPE_PLAYBACK = common dso_local global i8* null, align 8
@CEC_OP_ALL_DEVTYPE_AUDIOSYSTEM = common dso_local global i8* null, align 8
@CEC_LOG_ADDR_TYPE_UNREGISTERED = common dso_local global i8* null, align 8
@CEC_OP_ALL_DEVTYPE_SWITCH = common dso_local global i8* null, align 8
@CEC_LOG_ADDR_TYPE_SPECIFIC = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"Unknown Primary Device Type: %d\0A\00", align 1
@MSGCODE_GET_LOGICAL_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Logical address ACK mask: %x\0A\00", align 1
@MSGCODE_GET_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Physical address: %x.%x.%x.%x\0A\00", align 1
@MSGCODE_GET_HDMI_VERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"CEC version: %d\0A\00", align 1
@MSGCODE_GET_OSD_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"OSD name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pulse8*, %struct.serio*, %struct.cec_log_addrs*, i32*)* @pulse8_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_setup(%struct.pulse8* %0, %struct.serio* %1, %struct.cec_log_addrs* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pulse8*, align 8
  %7 = alloca %struct.serio*, align 8
  %8 = alloca %struct.cec_log_addrs*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm, align 8
  %14 = alloca i32, align 4
  store %struct.pulse8* %0, %struct.pulse8** %6, align 8
  store %struct.serio* %1, %struct.serio** %7, align 8
  store %struct.cec_log_addrs* %2, %struct.cec_log_addrs** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %16 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32* %18, i32** %10, align 8
  %19 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %20 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @MSGCODE_FIRMWARE_VERSION, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pulse8_send_and_wait(%struct.pulse8* %23, i32* %24, i32 1, i32 %26, i32 2)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %382

32:                                               ; preds = %4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %42 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %44 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %47 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %51 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %382

57:                                               ; preds = %32
  %58 = load i32, i32* @MSGCODE_GET_BUILDDATE, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pulse8_send_and_wait(%struct.pulse8* %60, i32* %61, i32 1, i32 %63, i32 4)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %382

69:                                               ; preds = %57
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %73, %77
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %78, %82
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @time64_to_tm(i32 %88, i32 0, %struct.tm* %13)
  %90 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %91 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1900
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %99, i32 %101, i32 %103, i32 %105, i32 %107)
  %109 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %110 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @dev_dbg(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @MSGCODE_GET_AUTO_ENABLED, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pulse8_send_and_wait(%struct.pulse8* %115, i32* %116, i32 1, i32 %118, i32 1)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %69
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %5, align 4
  br label %382

124:                                              ; preds = %69
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %129 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %131 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %139 = call i32 (i32, i8*, ...) @dev_dbg(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  %140 = load i32, i32* @MSGCODE_GET_DEVICE_TYPE, align 4
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @pulse8_send_and_wait(%struct.pulse8* %142, i32* %143, i32 1, i32 %145, i32 1)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %124
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %382

151:                                              ; preds = %124
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %156 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %154, i32* %158, align 4
  %159 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %160 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, ...) @dev_dbg(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %167 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  switch i32 %170, label %248 [
    i32 128, label %171
    i32 131, label %182
    i32 129, label %193
    i32 133, label %204
    i32 134, label %215
    i32 130, label %226
    i32 132, label %237
  ]

171:                                              ; preds = %151
  %172 = load i8*, i8** @CEC_LOG_ADDR_TYPE_TV, align 8
  %173 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %174 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %173, i32 0, i32 6
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  store i8* %172, i8** %176, align 8
  %177 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_TV, align 8
  %178 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %179 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %178, i32 0, i32 5
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  store i8* %177, i8** %181, align 8
  br label %268

182:                                              ; preds = %151
  %183 = load i8*, i8** @CEC_LOG_ADDR_TYPE_RECORD, align 8
  %184 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %185 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %184, i32 0, i32 6
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  store i8* %183, i8** %187, align 8
  %188 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_RECORD, align 8
  %189 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %190 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %189, i32 0, i32 5
  %191 = load i8**, i8*** %190, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  store i8* %188, i8** %192, align 8
  br label %268

193:                                              ; preds = %151
  %194 = load i8*, i8** @CEC_LOG_ADDR_TYPE_TUNER, align 8
  %195 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %196 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %195, i32 0, i32 6
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %194, i8** %198, align 8
  %199 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_TUNER, align 8
  %200 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %201 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %200, i32 0, i32 5
  %202 = load i8**, i8*** %201, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 0
  store i8* %199, i8** %203, align 8
  br label %268

204:                                              ; preds = %151
  %205 = load i8*, i8** @CEC_LOG_ADDR_TYPE_PLAYBACK, align 8
  %206 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %207 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %206, i32 0, i32 6
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 0
  store i8* %205, i8** %209, align 8
  %210 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_PLAYBACK, align 8
  %211 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %212 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %211, i32 0, i32 5
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  store i8* %210, i8** %214, align 8
  br label %268

215:                                              ; preds = %151
  %216 = load i8*, i8** @CEC_LOG_ADDR_TYPE_PLAYBACK, align 8
  %217 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %218 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %217, i32 0, i32 6
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 0
  store i8* %216, i8** %220, align 8
  %221 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_AUDIOSYSTEM, align 8
  %222 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %223 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %222, i32 0, i32 5
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 0
  store i8* %221, i8** %225, align 8
  br label %268

226:                                              ; preds = %151
  %227 = load i8*, i8** @CEC_LOG_ADDR_TYPE_UNREGISTERED, align 8
  %228 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %229 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %228, i32 0, i32 6
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 0
  store i8* %227, i8** %231, align 8
  %232 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_SWITCH, align 8
  %233 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %234 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %233, i32 0, i32 5
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  store i8* %232, i8** %236, align 8
  br label %268

237:                                              ; preds = %151
  %238 = load i8*, i8** @CEC_LOG_ADDR_TYPE_SPECIFIC, align 8
  %239 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %240 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %239, i32 0, i32 6
  %241 = load i8**, i8*** %240, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  store i8* %238, i8** %242, align 8
  %243 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_SWITCH, align 8
  %244 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %245 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %244, i32 0, i32 5
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 0
  store i8* %243, i8** %247, align 8
  br label %268

248:                                              ; preds = %151
  %249 = load i8*, i8** @CEC_LOG_ADDR_TYPE_UNREGISTERED, align 8
  %250 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %251 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %250, i32 0, i32 6
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 0
  store i8* %249, i8** %253, align 8
  %254 = load i8*, i8** @CEC_OP_ALL_DEVTYPE_SWITCH, align 8
  %255 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %256 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %255, i32 0, i32 5
  %257 = load i8**, i8*** %256, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 0
  store i8* %254, i8** %258, align 8
  %259 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %260 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %263 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %261, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %248, %237, %226, %215, %204, %193, %182, %171
  %269 = load i32, i32* @MSGCODE_GET_LOGICAL_ADDRESS_MASK, align 4
  %270 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %269, i32* %270, align 4
  %271 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @pulse8_send_and_wait(%struct.pulse8* %271, i32* %272, i32 1, i32 %274, i32 2)
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* %12, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %268
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %5, align 4
  br label %382

280:                                              ; preds = %268
  %281 = load i32*, i32** %10, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = shl i32 %283, 8
  %285 = load i32*, i32** %10, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %284, %287
  %289 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %290 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 8
  %291 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %292 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %295 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i32, i8*, ...) @dev_dbg(i32 %293, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %296)
  %298 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %299 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %280
  %303 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %304 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %303, i32 0, i32 2
  store i32 1, i32* %304, align 4
  br label %305

305:                                              ; preds = %302, %280
  %306 = load i32, i32* @MSGCODE_GET_PHYSICAL_ADDRESS, align 4
  %307 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %306, i32* %307, align 4
  %308 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @pulse8_send_and_wait(%struct.pulse8* %308, i32* %309, i32 1, i32 %311, i32 1)
  store i32 %312, i32* %12, align 4
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %305
  %316 = load i32, i32* %12, align 4
  store i32 %316, i32* %5, align 4
  br label %382

317:                                              ; preds = %305
  %318 = load i32*, i32** %10, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %320, 8
  %322 = load i32*, i32** %10, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %321, %324
  %326 = load i32*, i32** %9, align 8
  store i32 %325, i32* %326, align 4
  %327 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %328 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @cec_phys_addr_exp(i32 %331)
  %333 = call i32 (i32, i8*, ...) @dev_dbg(i32 %329, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %332)
  %334 = load i32, i32* @MSGCODE_GET_HDMI_VERSION, align 4
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %334, i32* %335, align 4
  %336 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @pulse8_send_and_wait(%struct.pulse8* %336, i32* %337, i32 1, i32 %339, i32 1)
  store i32 %340, i32* %12, align 4
  %341 = load i32, i32* %12, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %317
  %344 = load i32, i32* %12, align 4
  store i32 %344, i32* %5, align 4
  br label %382

345:                                              ; preds = %317
  %346 = load i32*, i32** %10, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %350 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %349, i32 0, i32 3
  store i32 %348, i32* %350, align 8
  %351 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %352 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %355 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = call i32 (i32, i8*, ...) @dev_dbg(i32 %353, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* @MSGCODE_GET_OSD_NAME, align 4
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %358, i32* %359, align 4
  %360 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %361 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %362 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @pulse8_send_and_wait(%struct.pulse8* %360, i32* %361, i32 1, i32 %363, i32 0)
  store i32 %364, i32* %12, align 4
  %365 = load i32, i32* %12, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %345
  %368 = load i32, i32* %12, align 4
  store i32 %368, i32* %5, align 4
  br label %382

369:                                              ; preds = %345
  %370 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %371 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = load i32*, i32** %10, align 8
  %374 = call i32 @strscpy(i32 %372, i32* %373, i32 4)
  %375 = load %struct.pulse8*, %struct.pulse8** %6, align 8
  %376 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %379 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i32, i8*, ...) @dev_dbg(i32 %377, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %380)
  store i32 0, i32* %5, align 4
  br label %382

382:                                              ; preds = %369, %367, %343, %315, %278, %149, %122, %67, %54, %30
  %383 = load i32, i32* %5, align 4
  ret i32 %383
}

declare dso_local i32 @pulse8_send_and_wait(%struct.pulse8*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @cec_phys_addr_exp(i32) #1

declare dso_local i32 @strscpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
