; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_init_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_init_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, %struct.cx231xx_dmaqueue }
%struct.TYPE_6__ = type { i32 (%struct.cx231xx.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.cx231xx.0 = type opaque
%struct.urb = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i32, i32*, i32, i64*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CX231XX_NEED_ADD_PS_PACKAGE_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for usbtransfer\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cx231xx_isoc_irq_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_init_isoc(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.cx231xx*, %struct.urb*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.cx231xx*, %struct.urb*)*, align 8
  %12 = alloca %struct.cx231xx_dmaqueue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.urb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.cx231xx*, %struct.urb*)* %4, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %20 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store %struct.cx231xx_dmaqueue* %22, %struct.cx231xx_dmaqueue** %12, align 8
  %23 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %24 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kzalloc(i32 4096, i32 %25)
  %27 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %28 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %27, i32 0, i32 15
  store i32* %26, i32** %28, align 8
  %29 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %30 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %29, i32 0, i32 15
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %399

36:                                               ; preds = %5
  %37 = load i32 (%struct.cx231xx*, %struct.urb*)*, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %38 = bitcast i32 (%struct.cx231xx*, %struct.urb*)* %37 to i32 (%struct.cx231xx.0*, %struct.urb*)*
  %39 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 (%struct.cx231xx.0*, %struct.urb*)* %38, i32 (%struct.cx231xx.0*, %struct.urb*)** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  %48 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %49 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %48, i32 0, i32 14
  store i64 0, i64* %49, align 8
  %50 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %51 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %50, i32 0, i32 13
  store i64 0, i64* %51, align 8
  %52 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %53 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %52, i32 0, i32 12
  store i64 0, i64* %53, align 8
  %54 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %55 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 11
  store i64 0, i64* %57, align 8
  %58 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 2
  %62 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %63 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %65 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 1
  %68 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %69 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %71 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %70, i32 0, i32 10
  store i64 0, i64* %71, align 8
  %72 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %73 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %72, i32 0, i32 9
  store i64 0, i64* %73, align 8
  %74 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %75 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %74, i32 0, i32 8
  store i64 0, i64* %75, align 8
  %76 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %77 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %76, i32 0, i32 7
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @CX231XX_NEED_ADD_PS_PACKAGE_HEAD, align 4
  %79 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %80 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %82 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %86 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %90 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 1, i32* %92, align 4
  %93 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %94 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  store i32 186, i32* %96, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %107, %36
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 8
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %102 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %101, i32 0, i32 5
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %97

110:                                              ; preds = %97
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @kcalloc(i32 %111, i32 8, i32 %112)
  %114 = bitcast i8* %113 to %struct.urb**
  %115 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %116 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store %struct.urb** %114, %struct.urb*** %118, align 8
  %119 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %120 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load %struct.urb**, %struct.urb*** %122, align 8
  %124 = icmp ne %struct.urb** %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %110
  %126 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %127 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %399

132:                                              ; preds = %110
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i8* @kcalloc(i32 %133, i32 8, i32 %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %138 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  store i32* %136, i32** %140, align 8
  %141 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %142 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %132
  %148 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %149 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @dev_err(i32 %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %153 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load %struct.urb**, %struct.urb*** %155, align 8
  %157 = call i32 @kfree(%struct.urb** %156)
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %399

160:                                              ; preds = %132
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %163 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  store i32 %161, i32* %165, align 4
  %166 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %167 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  store i32* null, i32** %169, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %172 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %170, %175
  store i32 %176, i32* %14, align 4
  %177 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %178 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %185

181:                                              ; preds = %160
  %182 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %183 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 129, i32* %184, align 8
  br label %189

185:                                              ; preds = %160
  %186 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %187 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i32 132, i32* %188, align 8
  br label %189

189:                                              ; preds = %185, %181
  store i32 0, i32* %13, align 4
  br label %190

190:                                              ; preds = %342, %189
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %193 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %191, %196
  br i1 %197, label %198, label %345

198:                                              ; preds = %190
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = call %struct.urb* @usb_alloc_urb(i32 %199, i32 %200)
  store %struct.urb* %201, %struct.urb** %16, align 8
  %202 = load %struct.urb*, %struct.urb** %16, align 8
  %203 = icmp ne %struct.urb* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %198
  %205 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %206 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %205)
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %399

209:                                              ; preds = %198
  %210 = load %struct.urb*, %struct.urb** %16, align 8
  %211 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %212 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  %215 = load %struct.urb**, %struct.urb*** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.urb*, %struct.urb** %215, i64 %217
  store %struct.urb* %210, %struct.urb** %218, align 8
  %219 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %220 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* @GFP_KERNEL, align 4
  %224 = load %struct.urb*, %struct.urb** %16, align 8
  %225 = getelementptr inbounds %struct.urb, %struct.urb* %224, i32 0, i32 3
  %226 = call i32 @usb_alloc_coherent(i32 %221, i32 %222, i32 %223, i32* %225)
  %227 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %228 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %226, i32* %234, align 4
  %235 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %236 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %260, label %245

245:                                              ; preds = %209
  %246 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %247 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i64 (...) @in_interrupt()
  %252 = icmp ne i64 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %255 = call i32 (i32, i8*, ...) @dev_err(i32 %248, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %249, i32 %250, i8* %254)
  %256 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %257 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %256)
  %258 = load i32, i32* @ENOMEM, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %6, align 4
  br label %399

260:                                              ; preds = %209
  %261 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %262 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %14, align 4
  %271 = call i32 @memset(i32 %269, i32 0, i32 %270)
  %272 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %273 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %276 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @usb_rcvisocpipe(i32 %274, i32 %278)
  store i32 %279, i32* %15, align 4
  %280 = load %struct.urb*, %struct.urb** %16, align 8
  %281 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %282 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %15, align 4
  %285 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %286 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 4
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* @cx231xx_isoc_irq_callback, align 4
  %296 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %297 = call i32 @usb_fill_int_urb(%struct.urb* %280, i32 %283, i32 %284, i32 %293, i32 %294, i32 %295, %struct.cx231xx_dmaqueue* %296, i32 1)
  %298 = load i32, i32* %8, align 4
  %299 = load %struct.urb*, %struct.urb** %16, align 8
  %300 = getelementptr inbounds %struct.urb, %struct.urb* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load i32, i32* @URB_ISO_ASAP, align 4
  %302 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.urb*, %struct.urb** %16, align 8
  %305 = getelementptr inbounds %struct.urb, %struct.urb* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %306

306:                                              ; preds = %338, %260
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %8, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %341

310:                                              ; preds = %306
  %311 = load i32, i32* %18, align 4
  %312 = load %struct.urb*, %struct.urb** %16, align 8
  %313 = getelementptr inbounds %struct.urb, %struct.urb* %312, i32 0, i32 2
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  store i32 %311, i32* %318, align 4
  %319 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %320 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.urb*, %struct.urb** %16, align 8
  %325 = getelementptr inbounds %struct.urb, %struct.urb* %324, i32 0, i32 2
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  store i32 %323, i32* %330, align 4
  %331 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %332 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %18, align 4
  br label %338

338:                                              ; preds = %310
  %339 = load i32, i32* %17, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %17, align 4
  br label %306

341:                                              ; preds = %306
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %13, align 4
  br label %190

345:                                              ; preds = %190
  %346 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %347 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %346, i32 0, i32 4
  %348 = call i32 @init_waitqueue_head(i32* %347)
  store i32 0, i32* %13, align 4
  br label %349

349:                                              ; preds = %382, %345
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %352 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = icmp slt i32 %350, %355
  br i1 %356, label %357, label %385

357:                                              ; preds = %349
  %358 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %359 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 3
  %362 = load %struct.urb**, %struct.urb*** %361, align 8
  %363 = load i32, i32* %13, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.urb*, %struct.urb** %362, i64 %364
  %366 = load %struct.urb*, %struct.urb** %365, align 8
  %367 = load i32, i32* @GFP_ATOMIC, align 4
  %368 = call i32 @usb_submit_urb(%struct.urb* %366, i32 %367)
  store i32 %368, i32* %19, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %381

371:                                              ; preds = %357
  %372 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %373 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %19, align 4
  %377 = call i32 (i32, i8*, ...) @dev_err(i32 %374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %375, i32 %376)
  %378 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %379 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %378)
  %380 = load i32, i32* %19, align 4
  store i32 %380, i32* %6, align 4
  br label %399

381:                                              ; preds = %357
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %13, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %13, align 4
  br label %349

385:                                              ; preds = %349
  %386 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %387 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %392 = load i32, i32* @Raw_Video, align 4
  %393 = call i32 @cx231xx_capture_start(%struct.cx231xx* %391, i32 1, i32 %392)
  br label %398

394:                                              ; preds = %385
  %395 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %396 = load i32, i32* @TS1_serial_mode, align 4
  %397 = call i32 @cx231xx_capture_start(%struct.cx231xx* %395, i32 1, i32 %396)
  br label %398

398:                                              ; preds = %394, %390
  store i32 0, i32* %6, align 4
  br label %399

399:                                              ; preds = %398, %371, %245, %204, %147, %125, %33
  %400 = load i32, i32* %6, align 4
  ret i32 %400
}

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.cx231xx_dmaqueue*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
