; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_init_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_init_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.cx231xx_dmaqueue }
%struct.TYPE_3__ = type { i32 (%struct.cx231xx.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.cx231xx.0 = type opaque
%struct.urb = type { i32, i32, i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i32, i32*, i32, i64*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Setting Video mux to %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for usbtransfer\0A\00", align 1
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cx231xx_bulk_irq_callback = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"failed to clear USB bulk endpoint stall/halt condition (error=%i)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_init_bulk(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.cx231xx*, %struct.urb*)* %4) #0 {
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
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.cx231xx*, %struct.urb*)* %4, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %18 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store %struct.cx231xx_dmaqueue* %20, %struct.cx231xx_dmaqueue** %12, align 8
  %21 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %30

26:                                               ; preds = %5
  %27 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 2, %25 ], [ %29, %26 ]
  %32 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cx231xx_coredbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %39 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @video_mux(%struct.cx231xx* %38, i32 %41)
  %43 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %44 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %43)
  %45 = load i32 (%struct.cx231xx*, %struct.urb*)*, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %46 = bitcast i32 (%struct.cx231xx*, %struct.urb*)* %45 to i32 (%struct.cx231xx.0*, %struct.urb*)*
  %47 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 (%struct.cx231xx.0*, %struct.urb*)* %46, i32 (%struct.cx231xx.0*, %struct.urb*)** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 13
  store i64 0, i64* %57, align 8
  %58 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %59 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %58, i32 0, i32 12
  store i64 0, i64* %59, align 8
  %60 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %61 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %60, i32 0, i32 11
  store i64 0, i64* %61, align 8
  %62 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %63 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %65 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 2
  %70 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %71 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 1
  %76 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %77 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %79 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %81 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %83 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %85 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %87 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 0, i32* %89, align 4
  %90 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %91 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %95 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 1, i32* %97, align 4
  %98 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %99 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 186, i32* %101, align 4
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %112, %30
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %107 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %106, i32 0, i32 5
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %102

115:                                              ; preds = %102
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i8* @kcalloc(i32 %116, i32 8, i32 %117)
  %119 = bitcast i8* %118 to %struct.urb**
  %120 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  store %struct.urb** %119, %struct.urb*** %123, align 8
  %124 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %125 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load %struct.urb**, %struct.urb*** %127, align 8
  %129 = icmp ne %struct.urb** %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %115
  %131 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %387

137:                                              ; preds = %115
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i8* @kcalloc(i32 %138, i32 8, i32 %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %143 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  store i32* %141, i32** %145, align 8
  %146 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %147 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %165, label %152

152:                                              ; preds = %137
  %153 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %154 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @dev_err(i32 %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %157 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %158 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load %struct.urb**, %struct.urb*** %160, align 8
  %162 = call i32 @kfree(%struct.urb** %161)
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %387

165:                                              ; preds = %137
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %168 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  store i32 %166, i32* %170, align 4
  %171 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %172 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 5
  store i32* null, i32** %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %177 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %175, %180
  store i32 %181, i32* %14, align 4
  %182 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %183 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %165
  %187 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %188 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i32 129, i32* %189, align 8
  br label %194

190:                                              ; preds = %165
  %191 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %192 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i32 132, i32* %193, align 8
  br label %194

194:                                              ; preds = %190, %186
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %305, %194
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %198 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %196, %201
  br i1 %202, label %203, label %308

203:                                              ; preds = %195
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %204)
  store %struct.urb* %205, %struct.urb** %16, align 8
  %206 = load %struct.urb*, %struct.urb** %16, align 8
  %207 = icmp ne %struct.urb* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %210 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %209)
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %6, align 4
  br label %387

213:                                              ; preds = %203
  %214 = load %struct.urb*, %struct.urb** %16, align 8
  %215 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %216 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load %struct.urb**, %struct.urb*** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.urb*, %struct.urb** %219, i64 %221
  store %struct.urb* %214, %struct.urb** %222, align 8
  %223 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %224 = load %struct.urb*, %struct.urb** %16, align 8
  %225 = getelementptr inbounds %struct.urb, %struct.urb* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %227 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = load %struct.urb*, %struct.urb** %16, align 8
  %232 = getelementptr inbounds %struct.urb, %struct.urb* %231, i32 0, i32 1
  %233 = call i32 @usb_alloc_coherent(i32 %228, i32 %229, i32 %230, i32* %232)
  %234 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %235 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %233, i32* %241, align 4
  %242 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %243 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %267, label %252

252:                                              ; preds = %213
  %253 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %254 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %13, align 4
  %258 = call i64 (...) @in_interrupt()
  %259 = icmp ne i64 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %262 = call i32 (i32, i8*, ...) @dev_err(i32 %255, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %256, i32 %257, i8* %261)
  %263 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %264 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %263)
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %6, align 4
  br label %387

267:                                              ; preds = %213
  %268 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %269 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @memset(i32 %276, i32 0, i32 %277)
  %279 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %280 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %283 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @usb_rcvbulkpipe(i32 %281, i32 %285)
  store i32 %286, i32* %15, align 4
  %287 = load %struct.urb*, %struct.urb** %16, align 8
  %288 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %289 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %293 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 4
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* @cx231xx_bulk_irq_callback, align 4
  %303 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %304 = call i32 @usb_fill_bulk_urb(%struct.urb* %287, i32 %290, i32 %291, i32 %300, i32 %301, i32 %302, %struct.cx231xx_dmaqueue* %303)
  br label %305

305:                                              ; preds = %267
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %195

308:                                              ; preds = %195
  %309 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %310 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %313 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 3
  %316 = load %struct.urb**, %struct.urb*** %315, align 8
  %317 = getelementptr inbounds %struct.urb*, %struct.urb** %316, i64 0
  %318 = load %struct.urb*, %struct.urb** %317, align 8
  %319 = getelementptr inbounds %struct.urb, %struct.urb* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @usb_clear_halt(i32 %311, i32 %320)
  store i32 %321, i32* %17, align 4
  %322 = load i32, i32* %17, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %308
  %325 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %326 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* %17, align 4
  %329 = call i32 (i32, i8*, ...) @dev_err(i32 %327, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %328)
  %330 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %331 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %330)
  %332 = load i32, i32* %17, align 4
  store i32 %332, i32* %6, align 4
  br label %387

333:                                              ; preds = %308
  %334 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %335 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %334, i32 0, i32 4
  %336 = call i32 @init_waitqueue_head(i32* %335)
  store i32 0, i32* %13, align 4
  br label %337

337:                                              ; preds = %370, %333
  %338 = load i32, i32* %13, align 4
  %339 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %340 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = icmp slt i32 %338, %343
  br i1 %344, label %345, label %373

345:                                              ; preds = %337
  %346 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %347 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %346, i32 0, i32 5
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 3
  %350 = load %struct.urb**, %struct.urb*** %349, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.urb*, %struct.urb** %350, i64 %352
  %354 = load %struct.urb*, %struct.urb** %353, align 8
  %355 = load i32, i32* @GFP_ATOMIC, align 4
  %356 = call i32 @usb_submit_urb(%struct.urb* %354, i32 %355)
  store i32 %356, i32* %17, align 4
  %357 = load i32, i32* %17, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %369

359:                                              ; preds = %345
  %360 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %361 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %13, align 4
  %364 = load i32, i32* %17, align 4
  %365 = call i32 (i32, i8*, ...) @dev_err(i32 %362, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %363, i32 %364)
  %366 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %367 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %366)
  %368 = load i32, i32* %17, align 4
  store i32 %368, i32* %6, align 4
  br label %387

369:                                              ; preds = %345
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %13, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %13, align 4
  br label %337

373:                                              ; preds = %337
  %374 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %375 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %373
  %379 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %380 = load i32, i32* @Raw_Video, align 4
  %381 = call i32 @cx231xx_capture_start(%struct.cx231xx* %379, i32 1, i32 %380)
  br label %386

382:                                              ; preds = %373
  %383 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %384 = load i32, i32* @TS1_serial_mode, align 4
  %385 = call i32 @cx231xx_capture_start(%struct.cx231xx* %383, i32 1, i32 %384)
  br label %386

386:                                              ; preds = %382, %378
  store i32 0, i32* %6, align 4
  br label %387

387:                                              ; preds = %386, %359, %324, %252, %208, %152, %130
  %388 = load i32, i32* %6, align 4
  ret i32 %388
}

declare dso_local i32 @cx231xx_coredbg(i8*, i32) #1

declare dso_local i32 @video_mux(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
