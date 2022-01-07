; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_init_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_init_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { %struct.TYPE_4__, i32, i32, %struct.au0828_dmaqueue }
%struct.TYPE_4__ = type { i32 (%struct.au0828_dev.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.au0828_dev.0 = type opaque
%struct.urb = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.au0828_dmaqueue = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"au0828: called au0828_prepare_isoc\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot allocate memory for usb transfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@au0828_irq_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*, i32, i32, i32, i32 (%struct.au0828_dev*, %struct.urb*)*)* @au0828_init_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_init_isoc(%struct.au0828_dev* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.au0828_dev*, %struct.urb*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.au0828_dev*, %struct.urb*)*, align 8
  %12 = alloca %struct.au0828_dmaqueue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.urb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.au0828_dev*, %struct.urb*)* %4, i32 (%struct.au0828_dev*, %struct.urb*)** %11, align 8
  %20 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %21 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %20, i32 0, i32 3
  store %struct.au0828_dmaqueue* %21, %struct.au0828_dmaqueue** %12, align 8
  %22 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32 (%struct.au0828_dev*, %struct.urb*)*, i32 (%struct.au0828_dev*, %struct.urb*)** %11, align 8
  %24 = bitcast i32 (%struct.au0828_dev*, %struct.urb*)* %23 to i32 (%struct.au0828_dev.0*, %struct.urb*)*
  %25 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %26 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 (%struct.au0828_dev.0*, %struct.urb*)* %24, i32 (%struct.au0828_dev.0*, %struct.urb*)** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %30 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kcalloc(i32 %32, i32 8, i32 %33)
  %35 = bitcast i8* %34 to %struct.urb**
  %36 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %37 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store %struct.urb** %35, %struct.urb*** %38, align 8
  %39 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %40 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = icmp ne %struct.urb** %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %5
  %45 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %260

48:                                               ; preds = %5
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kcalloc(i32 %49, i32 8, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %54 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32* %52, i32** %55, align 8
  %56 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %57 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %48
  %62 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %64 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = call i32 @kfree(%struct.urb** %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %260

70:                                               ; preds = %48
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %73 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %76 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %80 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %78, %82
  store i32 %83, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %224, %70
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %87 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %227

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.urb* @usb_alloc_urb(i32 %92, i32 %93)
  store %struct.urb* %94, %struct.urb** %16, align 8
  %95 = load %struct.urb*, %struct.urb** %16, align 8
  %96 = icmp ne %struct.urb* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %99 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %260

102:                                              ; preds = %91
  %103 = load %struct.urb*, %struct.urb** %16, align 8
  %104 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %105 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load %struct.urb**, %struct.urb*** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.urb*, %struct.urb** %107, i64 %109
  store %struct.urb* %103, %struct.urb** %110, align 8
  %111 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %112 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = load %struct.urb*, %struct.urb** %16, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 3
  %118 = call i32 @usb_alloc_coherent(i32 %113, i32 %114, i32 %115, i32* %117)
  %119 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %120 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %118, i32* %125, align 4
  %126 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %127 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %102
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i64 (...) @in_interrupt()
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %142 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %137, i8* %141)
  %143 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %144 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %260

147:                                              ; preds = %102
  %148 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %149 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @memset(i32 %155, i32 0, i32 %156)
  %158 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %159 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %162 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @usb_rcvisocpipe(i32 %160, i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load %struct.urb*, %struct.urb** %16, align 8
  %166 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %167 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %171 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @au0828_irq_callback, align 4
  %180 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %12, align 8
  %181 = call i32 @usb_fill_int_urb(%struct.urb* %165, i32 %168, i32 %169, i32 %177, i32 %178, i32 %179, %struct.au0828_dmaqueue* %180, i32 1)
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.urb*, %struct.urb** %16, align 8
  %184 = getelementptr inbounds %struct.urb, %struct.urb* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @URB_ISO_ASAP, align 4
  %186 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.urb*, %struct.urb** %16, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %190

190:                                              ; preds = %220, %147
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %223

194:                                              ; preds = %190
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.urb*, %struct.urb** %16, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 2
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 %195, i32* %202, align 4
  %203 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %204 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.urb*, %struct.urb** %16, align 8
  %208 = getelementptr inbounds %struct.urb, %struct.urb* %207, i32 0, i32 2
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i32 %206, i32* %213, align 4
  %214 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %215 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %194
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %17, align 4
  br label %190

223:                                              ; preds = %190
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %84

227:                                              ; preds = %84
  store i32 0, i32* %13, align 4
  br label %228

228:                                              ; preds = %256, %227
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %231 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %235, label %259

235:                                              ; preds = %228
  %236 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %237 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 3
  %239 = load %struct.urb**, %struct.urb*** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.urb*, %struct.urb** %239, i64 %241
  %243 = load %struct.urb*, %struct.urb** %242, align 8
  %244 = load i32, i32* @GFP_ATOMIC, align 4
  %245 = call i32 @usb_submit_urb(%struct.urb* %243, i32 %244)
  store i32 %245, i32* %19, align 4
  %246 = load i32, i32* %19, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %235
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %19, align 4
  %251 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %253 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %252)
  %254 = load i32, i32* %19, align 4
  store i32 %254, i32* %6, align 4
  br label %260

255:                                              ; preds = %235
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %228

259:                                              ; preds = %228
  store i32 0, i32* %6, align 4
  br label %260

260:                                              ; preds = %259, %248, %135, %97, %61, %44
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @au0828_isocdbg(i8*, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @au0828_uninit_isoc(%struct.au0828_dev*) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @printk(i8*, i32, i32, i8*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.au0828_dmaqueue*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
