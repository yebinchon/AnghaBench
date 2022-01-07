; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_cx231xx_init_vbi_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_cx231xx_init_vbi_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, %struct.cx231xx_dmaqueue }
%struct.TYPE_3__ = type { i32 (%struct.cx231xx.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.cx231xx.0 = type opaque
%struct.urb = type { i64 }
%struct.cx231xx_dmaqueue = type { i32, i32, i32, i64*, i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"called cx231xx_vbi_isoc\0A\00", align 1
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@PAL_VBI_LINES = common dso_local global i32 0, align 4
@NTSC_VBI_LINES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for usbtransfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cx231xx_irq_vbi_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@Vbi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_init_vbi_isoc(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.cx231xx*, %struct.urb*)* %4) #0 {
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
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store %struct.cx231xx_dmaqueue* %20, %struct.cx231xx_dmaqueue** %12, align 8
  %21 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %26 = call i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx* %25)
  %27 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @usb_rcvbulkpipe(i32 %32, i32 %36)
  %38 = call i32 @usb_clear_halt(i32 %29, i32 %37)
  %39 = load i32 (%struct.cx231xx*, %struct.urb*)*, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %40 = bitcast i32 (%struct.cx231xx*, %struct.urb*)* %39 to i32 (%struct.cx231xx.0*, %struct.urb*)*
  %41 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 (%struct.cx231xx.0*, %struct.urb*)* %40, i32 (%struct.cx231xx.0*, %struct.urb*)** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %51 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %53 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %55 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 1
  %62 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %63 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %65 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @V4L2_STD_625_50, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %5
  %71 = load i32, i32* @PAL_VBI_LINES, align 4
  br label %74

72:                                               ; preds = %5
  %73 = load i32, i32* @NTSC_VBI_LINES, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %77 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %79 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %90, %74
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %85 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %80

93:                                               ; preds = %80
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @kcalloc(i32 %94, i32 8, i32 %95)
  %97 = bitcast i8* %96 to %struct.urb**
  %98 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store %struct.urb** %97, %struct.urb*** %101, align 8
  %102 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load %struct.urb**, %struct.urb*** %105, align 8
  %107 = icmp ne %struct.urb** %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %93
  %109 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %110 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %300

115:                                              ; preds = %93
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i8* @kcalloc(i32 %116, i32 8, i32 %117)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  store i32* %119, i32** %123, align 8
  %124 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %125 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %143, label %130

130:                                              ; preds = %115
  %131 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %136 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load %struct.urb**, %struct.urb*** %138, align 8
  %140 = call i32 @kfree(%struct.urb** %139)
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %300

143:                                              ; preds = %115
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %146 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  store i32 %144, i32* %148, align 4
  %149 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %150 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %155 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %153, %158
  store i32 %159, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %253, %143
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %163 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %161, %166
  br i1 %167, label %168, label %256

168:                                              ; preds = %160
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %169)
  store %struct.urb* %170, %struct.urb** %16, align 8
  %171 = load %struct.urb*, %struct.urb** %16, align 8
  %172 = icmp ne %struct.urb* %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %175 = call i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx* %174)
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %300

178:                                              ; preds = %168
  %179 = load %struct.urb*, %struct.urb** %16, align 8
  %180 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %181 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  %184 = load %struct.urb**, %struct.urb*** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.urb*, %struct.urb** %184, i64 %186
  store %struct.urb* %179, %struct.urb** %187, align 8
  %188 = load %struct.urb*, %struct.urb** %16, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @GFP_KERNEL, align 4
  %192 = call i32 @kzalloc(i32 %190, i32 %191)
  %193 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %194 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %192, i32* %200, align 4
  %201 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %202 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %178
  %212 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %213 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i64 (...) @in_interrupt()
  %218 = icmp ne i64 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %221 = call i32 (i32, i8*, ...) @dev_err(i32 %214, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %215, i32 %216, i8* %220)
  %222 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %223 = call i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx* %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %6, align 4
  br label %300

226:                                              ; preds = %178
  %227 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %228 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %231 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @usb_rcvbulkpipe(i32 %229, i32 %233)
  store i32 %234, i32* %15, align 4
  %235 = load %struct.urb*, %struct.urb** %16, align 8
  %236 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %237 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %241 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* @cx231xx_irq_vbi_callback, align 4
  %251 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %252 = call i32 @usb_fill_bulk_urb(%struct.urb* %235, i32 %238, i32 %239, i32 %248, i32 %249, i32 %250, %struct.cx231xx_dmaqueue* %251)
  br label %253

253:                                              ; preds = %226
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %13, align 4
  br label %160

256:                                              ; preds = %160
  %257 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %258 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %257, i32 0, i32 2
  %259 = call i32 @init_waitqueue_head(i32* %258)
  store i32 0, i32* %13, align 4
  br label %260

260:                                              ; preds = %293, %256
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %263 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %261, %266
  br i1 %267, label %268, label %296

268:                                              ; preds = %260
  %269 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %270 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 3
  %273 = load %struct.urb**, %struct.urb*** %272, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.urb*, %struct.urb** %273, i64 %275
  %277 = load %struct.urb*, %struct.urb** %276, align 8
  %278 = load i32, i32* @GFP_ATOMIC, align 4
  %279 = call i32 @usb_submit_urb(%struct.urb* %277, i32 %278)
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %268
  %283 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %284 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* %17, align 4
  %288 = call i32 (i32, i8*, ...) @dev_err(i32 %285, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %286, i32 %287)
  %289 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %290 = call i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx* %289)
  %291 = load i32, i32* %17, align 4
  store i32 %291, i32* %6, align 4
  br label %300

292:                                              ; preds = %268
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %13, align 4
  br label %260

296:                                              ; preds = %260
  %297 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %298 = load i32, i32* @Vbi, align 4
  %299 = call i32 @cx231xx_capture_start(%struct.cx231xx* %297, i32 1, i32 %298)
  store i32 0, i32* %6, align 4
  br label %300

300:                                              ; preds = %296, %282, %211, %173, %130, %108
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
