; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { {}*, {}* }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"strange: '%s' #%d,%d doesn't want to attach a frontend.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no frontend was attached by '%s'\00", align 1
@dvb_usb_fe_wakeup = common dso_local global i32 0, align 4
@dvb_usb_fe_sleep = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Frontend %d registration failed.\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_adapter_frontend_init(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %212, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %215

13:                                               ; preds = %6
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.dvb_usb_adapter*)**
  %23 = load i32 (%struct.dvb_usb_adapter*)*, i32 (%struct.dvb_usb_adapter*)** %22, align 8
  %24 = icmp eq i32 (%struct.dvb_usb_adapter*)* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %13
  %26 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %227

38:                                               ; preds = %13
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.dvb_usb_adapter*)**
  %48 = load i32 (%struct.dvb_usb_adapter*)*, i32 (%struct.dvb_usb_adapter*)** %47, align 8
  %49 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %50 = call i32 %48(%struct.dvb_usb_adapter* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %38
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = icmp eq %struct.TYPE_15__* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %53, %38
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %66, %63
  store i32 0, i32* %2, align 4
  br label %227

76:                                               ; preds = %53
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store i32 %77, i32* %86, align 4
  %87 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %87, i32 0, i32 3
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  store i32 %97, i32* %104, align 4
  %105 = load i32, i32* @dvb_usb_fe_wakeup, align 4
  %106 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  store i32 %105, i32* %115, align 4
  %116 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %116, i32 0, i32 3
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %127, i32 0, i32 3
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  store i32 %126, i32* %133, align 8
  %134 = load i32, i32* @dvb_usb_fe_sleep, align 4
  %135 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %135, i32 0, i32 3
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i32 %134, i32* %144, align 4
  %145 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %145, i32 0, i32 0
  %147 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %147, i32 0, i32 3
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = call i64 @dvb_register_frontend(i32* %146, %struct.TYPE_15__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %76
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %160, i32 0, i32 3
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = call i32 @dvb_frontend_detach(%struct.TYPE_15__* %167)
  %169 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %169, i32 0, i32 3
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %175, align 8
  %176 = load i32, i32* %5, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %157
  %179 = load i32, i32* @ENODEV, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %227

181:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %227

182:                                              ; preds = %76
  %183 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %184 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = bitcast {}** %190 to i32 (%struct.dvb_usb_adapter*)**
  %192 = load i32 (%struct.dvb_usb_adapter*)*, i32 (%struct.dvb_usb_adapter*)** %191, align 8
  %193 = icmp ne i32 (%struct.dvb_usb_adapter*)* %192, null
  br i1 %193, label %194, label %207

194:                                              ; preds = %182
  %195 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = bitcast {}** %202 to i32 (%struct.dvb_usb_adapter*)**
  %204 = load i32 (%struct.dvb_usb_adapter*)*, i32 (%struct.dvb_usb_adapter*)** %203, align 8
  %205 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %206 = call i32 %204(%struct.dvb_usb_adapter* %205)
  br label %207

207:                                              ; preds = %194, %182
  %208 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %209 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %6

215:                                              ; preds = %6
  %216 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %216, i32 0, i32 0
  %218 = call i32 @dvb_create_media_graph(i32* %217, i32 1)
  store i32 %218, i32* %4, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %227

223:                                              ; preds = %215
  %224 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %225 = call i32 @dvb_usb_media_device_register(%struct.dvb_usb_adapter* %224)
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* %4, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %223, %221, %181, %178, %75, %25
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_15__*) #1

declare dso_local i32 @dvb_create_media_graph(i32*, i32) #1

declare dso_local i32 @dvb_usb_media_device_register(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
