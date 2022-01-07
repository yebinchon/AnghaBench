; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_process_ir_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_process_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mceusb_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ir_raw_event = type { i32, i32, i32 }

@MCE_PULSE_BIT = common dso_local global i32 0, align 4
@MCE_PULSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nonsensical irdata %02x with duration 0\00", align 1
@MCE_TIME_UNIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Storing %s %u ns (%02x)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@MCE_CMD_PORT_IR = common dso_local global i32 0, align 4
@MCE_PORT_MASK = common dso_local global i32 0, align 4
@MCE_COMMAND_IRDATA = common dso_local global i32 0, align 4
@MCE_PACKET_LENGTH_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"processed IR data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, i32)* @mceusb_process_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mceusb_process_ir_data(%struct.mceusb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %260

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %245, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %248

26:                                               ; preds = %22
  %27 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %231 [
    i32 128, label %30
    i32 129, label %61
    i32 131, label %153
    i32 130, label %158
  ]

30:                                               ; preds = %26
  %31 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mceusb_cmd_datasize(i32 %33, i32 %40)
  %42 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %45 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i32 @mceusb_dev_printdata(%struct.mceusb_dev* %44, i32* %47, i32 %48, i32 %50, i32 %54, i32 0)
  %56 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mceusb_handle_command(%struct.mceusb_dev* %56, i32 %57)
  %59 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %59, i32 0, i32 0
  store i32 131, i32* %60, align 8
  br label %231

61:                                               ; preds = %26
  %62 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MCE_PULSE_BIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MCE_PULSE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @unlikely(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %61
  %96 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %100 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %231

107:                                              ; preds = %61
  %108 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %119 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %111, %107
  %123 = load i32, i32* @MCE_TIME_UNIT, align 4
  %124 = call i32 @US_TO_NS(i32 %123)
  %125 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %129 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %136 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @dev_dbg(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %135, i32 %137, i32 %144)
  %146 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %146, i32 0, i32 5
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_5__* %148, %struct.ir_raw_event* %5)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %122
  store i32 1, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %122
  br label %231

153:                                              ; preds = %26
  %154 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 4
  br label %231

158:                                              ; preds = %26
  %159 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %160 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %167 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @MCE_CMD_PORT_IR, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %158
  %174 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %175 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MCE_PORT_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @MCE_COMMAND_IRDATA, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %173, %158
  %182 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %183 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %182, i32 0, i32 0
  store i32 128, i32* %183, align 8
  br label %245

184:                                              ; preds = %173
  %185 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %186 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MCE_PACKET_LENGTH_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %191 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %193 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %194 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %199 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  %202 = call i32 @mceusb_dev_printdata(%struct.mceusb_dev* %192, i32* %195, i32 %196, i32 %197, i32 %201, i32 0)
  %203 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %204 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %184
  %208 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %209 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %208, i32 0, i32 0
  store i32 129, i32* %209, align 8
  br label %230

210:                                              ; preds = %184
  %211 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %8, i32 0, i32 0
  store i32 0, i32* %211, align 4
  %212 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %8, i32 0, i32 1
  %213 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %214 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %213, i32 0, i32 5
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %212, align 4
  %218 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %8, i32 0, i32 2
  store i32 1, i32* %218, align 4
  %219 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %220 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %219, i32 0, i32 5
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_5__* %221, %struct.ir_raw_event* %8)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  store i32 1, i32* %6, align 4
  br label %225

225:                                              ; preds = %224, %210
  %226 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %227 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %226, i32 0, i32 4
  store i32 0, i32* %227, align 8
  %228 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %229 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %228, i32 0, i32 7
  store i32 0, i32* %229, align 4
  br label %230

230:                                              ; preds = %225, %207
  br label %231

231:                                              ; preds = %26, %230, %153, %152, %95, %30
  %232 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %233 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 130
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %238 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %243 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %242, i32 0, i32 0
  store i32 130, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %236, %231
  br label %245

245:                                              ; preds = %244, %181
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %22

248:                                              ; preds = %22
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %253 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i32, i8*, ...) @dev_dbg(i32 %254, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %256 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %257 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %256, i32 0, i32 5
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = call i32 @ir_raw_event_handle(%struct.TYPE_5__* %258)
  br label %260

260:                                              ; preds = %20, %251, %248
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mceusb_cmd_datasize(i32, i32) #2

declare dso_local i32 @mceusb_dev_printdata(%struct.mceusb_dev*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @mceusb_handle_command(%struct.mceusb_dev*, i32) #2

declare dso_local i32 @unlikely(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.TYPE_5__*, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
