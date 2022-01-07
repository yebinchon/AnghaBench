; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_prepare_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_prepare_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32, %struct.TYPE_9__, %struct.TYPE_6__, i32, %struct.urb**, i32*, %struct.tm6000_dmaqueue }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.urb**, %struct.urb** }
%struct.urb = type { i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.tm6000_dmaqueue = type { i32 }

@TM6000_NUM_URB_BUF = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@TM6000_MAX_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_DEBUG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Allocating %d x %d packets (%d bytes) of %d bytes each to handle %u size\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for urb buffers\0A\00", align 1
@tm6000_irq_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*)* @tm6000_prepare_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_prepare_isoc(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca %struct.tm6000_dmaqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  %13 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %14 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %13, i32 0, i32 6
  store %struct.tm6000_dmaqueue* %14, %struct.tm6000_dmaqueue** %4, align 8
  %15 = load i32, i32* @TM6000_NUM_URB_BUF, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %17 = call i32 @tm6000_uninit_isoc(%struct.tm6000_core* %16)
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %19 = call i32 @tm6000_ir_int_stop(%struct.tm6000_core* %18)
  %20 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %21 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %24 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %28 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_set_interface(i32 %22, i32 %26, i32 %30)
  %32 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %33 = call i32 @tm6000_ir_int_start(%struct.tm6000_core* %32)
  %34 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %35 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %38 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @usb_rcvisocpipe(i32 %36, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %48 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @usb_pipeout(i32 %51)
  %53 = call i32 @usb_maxpacket(i32 %49, i32 %50, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %56 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %1
  %61 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %62 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %1
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %68 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @TM6000_MAX_ISO_PACKETS, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %76 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %79 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kmalloc_array(i32 %81, i32 8, i32 %82)
  %84 = bitcast i8* %83 to %struct.urb**
  %85 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %86 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  store %struct.urb** %84, %struct.urb*** %87, align 8
  %88 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %89 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load %struct.urb**, %struct.urb*** %90, align 8
  %92 = icmp ne %struct.urb** %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %65
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %266

96:                                               ; preds = %65
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kmalloc_array(i32 %97, i32 8, i32 %98)
  %100 = bitcast i8* %99 to %struct.urb**
  %101 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %102 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store %struct.urb** %100, %struct.urb*** %103, align 8
  %104 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %105 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load %struct.urb**, %struct.urb*** %106, align 8
  %108 = icmp ne %struct.urb** %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %96
  %110 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %111 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load %struct.urb**, %struct.urb*** %112, align 8
  %114 = call i32 @kfree(%struct.urb** %113)
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %266

117:                                              ; preds = %96
  %118 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %119 = load i32, i32* @V4L2_DEBUG_QUEUE, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %124 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @dprintk(%struct.tm6000_core* %118, i32 %119, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i32 %126, i32 %127)
  %129 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %130 = call i64 @tm6000_alloc_urb_buffers(%struct.tm6000_core* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %117
  %133 = call i32 @tm6000_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %135 = call i32 @tm6000_free_urb_buffers(%struct.tm6000_core* %134)
  %136 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %137 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load %struct.urb**, %struct.urb*** %138, align 8
  %140 = call i32 @kfree(%struct.urb** %139)
  %141 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %142 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load %struct.urb**, %struct.urb*** %143, align 8
  %145 = call i32 @kfree(%struct.urb** %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %266

148:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %262, %148
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %152 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %265

156:                                              ; preds = %149
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call %struct.urb* @usb_alloc_urb(i32 %157, i32 %158)
  store %struct.urb* %159, %struct.urb** %12, align 8
  %160 = load %struct.urb*, %struct.urb** %12, align 8
  %161 = icmp ne %struct.urb* %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %156
  %163 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %164 = call i32 @tm6000_uninit_isoc(%struct.tm6000_core* %163)
  %165 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %166 = call i32 @tm6000_free_urb_buffers(%struct.tm6000_core* %165)
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %266

169:                                              ; preds = %156
  %170 = load %struct.urb*, %struct.urb** %12, align 8
  %171 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %172 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load %struct.urb**, %struct.urb*** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.urb*, %struct.urb** %174, i64 %176
  store %struct.urb* %170, %struct.urb** %177, align 8
  %178 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %179 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %178, i32 0, i32 5
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.urb*, %struct.urb** %12, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %188 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %187, i32 0, i32 4
  %189 = load %struct.urb**, %struct.urb*** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.urb*, %struct.urb** %189, i64 %191
  %193 = load %struct.urb*, %struct.urb** %192, align 8
  %194 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %195 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load %struct.urb**, %struct.urb*** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.urb*, %struct.urb** %197, i64 %199
  store %struct.urb* %193, %struct.urb** %200, align 8
  %201 = load %struct.urb*, %struct.urb** %12, align 8
  %202 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %203 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %207 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load %struct.urb**, %struct.urb*** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.urb*, %struct.urb** %209, i64 %211
  %213 = load %struct.urb*, %struct.urb** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @tm6000_irq_callback, align 4
  %216 = load %struct.tm6000_dmaqueue*, %struct.tm6000_dmaqueue** %4, align 8
  %217 = call i32 @usb_fill_bulk_urb(%struct.urb* %201, i32 %204, i32 %205, %struct.urb* %213, i32 %214, i32 %215, %struct.tm6000_dmaqueue* %216)
  %218 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %219 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.urb*, %struct.urb** %12, align 8
  %226 = getelementptr inbounds %struct.urb, %struct.urb* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.urb*, %struct.urb** %12, align 8
  %229 = getelementptr inbounds %struct.urb, %struct.urb* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @URB_ISO_ASAP, align 4
  %231 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.urb*, %struct.urb** %12, align 8
  %234 = getelementptr inbounds %struct.urb, %struct.urb* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %258, %169
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %261

239:                                              ; preds = %235
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %6, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load %struct.urb*, %struct.urb** %12, align 8
  %244 = getelementptr inbounds %struct.urb, %struct.urb* %243, i32 0, i32 2
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  store i32 %242, i32* %249, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load %struct.urb*, %struct.urb** %12, align 8
  %252 = getelementptr inbounds %struct.urb, %struct.urb* %251, i32 0, i32 2
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  store i32 %250, i32* %257, align 4
  br label %258

258:                                              ; preds = %239
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %6, align 4
  br label %235

261:                                              ; preds = %235
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %149

265:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %265, %162, %132, %109, %93
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @tm6000_uninit_isoc(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_ir_int_stop(%struct.tm6000_core*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @tm6000_ir_int_start(%struct.tm6000_core*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @dprintk(%struct.tm6000_core*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @tm6000_alloc_urb_buffers(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_err(i8*) #1

declare dso_local i32 @tm6000_free_urb_buffers(%struct.tm6000_core*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, %struct.urb*, i32, i32, %struct.tm6000_dmaqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
