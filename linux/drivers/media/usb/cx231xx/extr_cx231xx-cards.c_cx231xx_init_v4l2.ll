; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_init_v4l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_init_v4l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_18__, %struct.TYPE_13__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32*, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.usb_device = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.usb_interface** }
%struct.usb_interface = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_22__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Video PCB interface #%d doesn't exist\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"video EndPoint Addr 0x%x, Alternate settings: %i\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Alternate setting %i, max size= %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"VBI PCB interface #%d doesn't exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"VBI EndPoint Addr 0x%x, Alternate settings: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Sliced CC PCB interface #%d doesn't exist\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"sliced CC EndPoint Addr 0x%x, Alternate settings: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.usb_device*, %struct.usb_interface*, i32)* @cx231xx_init_v4l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_init_v4l2(%struct.cx231xx* %0, %struct.usb_device* %1, %struct.usb_interface* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %6, align 8
  store %struct.usb_device* %1, %struct.usb_device** %7, align 8
  store %struct.usb_interface* %2, %struct.usb_interface** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %526

38:                                               ; preds = %4
  %39 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load %struct.usb_interface**, %struct.usb_interface*** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %43, i64 %45
  %47 = load %struct.usb_interface*, %struct.usb_interface** %46, align 8
  store %struct.usb_interface* %47, %struct.usb_interface** %10, align 8
  %48 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %38
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %526

61:                                               ; preds = %38
  %62 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %63 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %78 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %91 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_info(i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %96 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %95, i32 0, i32 0
  %97 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %98 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @devm_kmalloc_array(i32* %96, i32 32, i32 %100, i32 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %105 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  store i32* %103, i32** %106, align 8
  %107 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %61
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %526

115:                                              ; preds = %61
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %182, %115
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %119 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %185

123:                                              ; preds = %116
  %124 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %125 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %526

139:                                              ; preds = %123
  %140 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %141 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le16_to_cpu(i32 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, 2047
  %157 = load i32, i32* %13, align 4
  %158 = and i32 %157, 6144
  %159 = ashr i32 %158, 11
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %156, %160
  %162 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %163 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %161, i32* %168, align 4
  %169 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %170 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %174 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_dbg(i32 %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %180)
  br label %182

182:                                              ; preds = %139
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %116

185:                                              ; preds = %116
  %186 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %187 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %197 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %195, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %185
  %201 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %202 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @dev_err(i32 %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @ENODEV, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %5, align 4
  br label %526

208:                                              ; preds = %185
  %209 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 1
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load %struct.usb_interface**, %struct.usb_interface*** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %213, i64 %215
  %217 = load %struct.usb_interface*, %struct.usb_interface** %216, align 8
  store %struct.usb_interface* %217, %struct.usb_interface** %10, align 8
  %218 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %219 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %218, i32 0, i32 1
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  %227 = icmp slt i32 %224, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %208
  %229 = load i32, i32* @ENODEV, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %5, align 4
  br label %526

231:                                              ; preds = %208
  %232 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %233 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %232, i32 0, i32 1
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %245 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  store i32 %243, i32* %246, align 8
  %247 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %248 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %251 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  %253 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %254 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %257 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %261 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @dev_info(i32 %255, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %259, i32 %263)
  %265 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %266 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %265, i32 0, i32 0
  %267 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %268 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i8* @devm_kmalloc_array(i32* %266, i32 32, i32 %270, i32 %271)
  %273 = bitcast i8* %272 to i32*
  %274 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %275 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  store i32* %273, i32** %276, align 8
  %277 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %278 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %231
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %5, align 4
  br label %526

285:                                              ; preds = %231
  store i32 0, i32* %11, align 4
  br label %286

286:                                              ; preds = %352, %285
  %287 = load i32, i32* %11, align 4
  %288 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %289 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %287, %291
  br i1 %292, label %293, label %355

293:                                              ; preds = %286
  %294 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %295 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %294, i32 0, i32 1
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  %305 = icmp slt i32 %302, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %293
  %307 = load i32, i32* @ENODEV, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %5, align 4
  br label %526

309:                                              ; preds = %293
  %310 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %311 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %310, i32 0, i32 1
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %311, align 8
  %313 = load i32, i32* %11, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @le16_to_cpu(i32 %323)
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* %14, align 4
  %326 = and i32 %325, 2047
  %327 = load i32, i32* %14, align 4
  %328 = and i32 %327, 6144
  %329 = ashr i32 %328, 11
  %330 = add nsw i32 %329, 1
  %331 = mul nsw i32 %326, %330
  %332 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %333 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %11, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  store i32 %331, i32* %338, align 4
  %339 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %340 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %11, align 4
  %343 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %344 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %343, i32 0, i32 4
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @dev_dbg(i32 %341, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %342, i32 %350)
  br label %352

352:                                              ; preds = %309
  %353 = load i32, i32* %11, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %11, align 4
  br label %286

355:                                              ; preds = %286
  %356 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %357 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i64 0
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %12, align 4
  %365 = load i32, i32* %12, align 4
  %366 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %367 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp sge i32 %365, %368
  br i1 %369, label %370, label %378

370:                                              ; preds = %355
  %371 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %372 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %12, align 4
  %375 = call i32 @dev_err(i32 %373, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %374)
  %376 = load i32, i32* @ENODEV, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %5, align 4
  br label %526

378:                                              ; preds = %355
  %379 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %380 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %379, i32 0, i32 1
  %381 = load %struct.TYPE_19__*, %struct.TYPE_19__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  %383 = load %struct.usb_interface**, %struct.usb_interface*** %382, align 8
  %384 = load i32, i32* %12, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %383, i64 %385
  %387 = load %struct.usb_interface*, %struct.usb_interface** %386, align 8
  store %struct.usb_interface* %387, %struct.usb_interface** %10, align 8
  %388 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %389 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %388, i32 0, i32 1
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i64 0
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %395, 1
  %397 = icmp slt i32 %394, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %378
  %399 = load i32, i32* @ENODEV, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %5, align 4
  br label %526

401:                                              ; preds = %378
  %402 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %403 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %402, i32 0, i32 1
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i64 0
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %415 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 2
  store i32 %413, i32* %416, align 8
  %417 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %418 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %421 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 0
  store i32 %419, i32* %422, align 8
  %423 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %424 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %427 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %431 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @dev_info(i32 %425, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %429, i32 %433)
  %435 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %436 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %435, i32 0, i32 0
  %437 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %438 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @GFP_KERNEL, align 4
  %442 = call i8* @devm_kmalloc_array(i32* %436, i32 32, i32 %440, i32 %441)
  %443 = bitcast i8* %442 to i32*
  %444 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %445 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 1
  store i32* %443, i32** %446, align 8
  %447 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %448 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = icmp eq i32* %450, null
  br i1 %451, label %452, label %455

452:                                              ; preds = %401
  %453 = load i32, i32* @ENOMEM, align 4
  %454 = sub nsw i32 0, %453
  store i32 %454, i32* %5, align 4
  br label %526

455:                                              ; preds = %401
  store i32 0, i32* %11, align 4
  br label %456

456:                                              ; preds = %522, %455
  %457 = load i32, i32* %11, align 4
  %458 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %459 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp slt i32 %457, %461
  br i1 %462, label %463, label %525

463:                                              ; preds = %456
  %464 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %465 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %464, i32 0, i32 1
  %466 = load %struct.TYPE_12__*, %struct.TYPE_12__** %465, align 8
  %467 = load i32, i32* %11, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* %9, align 4
  %474 = add nsw i32 %473, 1
  %475 = icmp slt i32 %472, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %463
  %477 = load i32, i32* @ENODEV, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %5, align 4
  br label %526

479:                                              ; preds = %463
  %480 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %481 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %480, i32 0, i32 1
  %482 = load %struct.TYPE_12__*, %struct.TYPE_12__** %481, align 8
  %483 = load i32, i32* %11, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 0
  %487 = load %struct.TYPE_22__*, %struct.TYPE_22__** %486, align 8
  %488 = load i32, i32* %9, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @le16_to_cpu(i32 %493)
  store i32 %494, i32* %15, align 4
  %495 = load i32, i32* %15, align 4
  %496 = and i32 %495, 2047
  %497 = load i32, i32* %15, align 4
  %498 = and i32 %497, 6144
  %499 = ashr i32 %498, 11
  %500 = add nsw i32 %499, 1
  %501 = mul nsw i32 %496, %500
  %502 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %503 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %11, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  store i32 %501, i32* %508, align 4
  %509 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %510 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* %11, align 4
  %513 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %514 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %514, i32 0, i32 1
  %516 = load i32*, i32** %515, align 8
  %517 = load i32, i32* %11, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @dev_dbg(i32 %511, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %512, i32 %520)
  br label %522

522:                                              ; preds = %479
  %523 = load i32, i32* %11, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %11, align 4
  br label %456

525:                                              ; preds = %456
  store i32 0, i32* %5, align 4
  br label %526

526:                                              ; preds = %525, %476, %452, %398, %370, %306, %282, %228, %200, %136, %112, %58, %30
  %527 = load i32, i32* %5, align 4
  ret i32 %527
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i8* @devm_kmalloc_array(i32*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
