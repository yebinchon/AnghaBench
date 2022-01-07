; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }
%struct.file = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.vpe_dev = type { i32, i32, i32 }
%struct.vpe_q_data = type { i32, i32, i32, i32*, i32*, i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.vpe_ctx = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.vpe_q_data*, %struct.v4l2_ctrl_handler, %struct.vpe_dev* }

@.str = private unnamed_addr constant [10 x i8] c"vpe_open\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@VPE_DESC_LIST_SIZE = common dso_local global i32 0, align 4
@VPDMA_LIST_TYPE_NORMAL = common dso_local global i32 0, align 4
@SC_COEF_SRAM_SIZE = common dso_local global i32 0, align 4
@vpe_bufs_per_job = common dso_local global i32 0, align 4
@Q_DATA_SRC = common dso_local global i64 0, align 8
@vpe_formats = common dso_local global %struct.TYPE_9__* null, align 8
@VPE_LUMA = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@Q_DATA_DST = common dso_local global i64 0, align 8
@queue_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"first instance created\0A\00", align 1
@VPE_DEF_BUFS_PER_JOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"created instance %p, m2m_ctx: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vpe_dev*, align 8
  %5 = alloca %struct.vpe_q_data*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca %struct.vpe_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.vpe_dev* @video_drvdata(%struct.file* %9)
  store %struct.vpe_dev* %10, %struct.vpe_dev** %4, align 8
  %11 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %12 = call i32 (%struct.vpe_dev*, i8*, ...) @vpe_dbg(%struct.vpe_dev* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vpe_ctx* @kzalloc(i32 72, i32 %13)
  store %struct.vpe_ctx* %14, %struct.vpe_ctx** %7, align 8
  %15 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %16 = icmp ne %struct.vpe_ctx* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %268

20:                                               ; preds = %1
  %21 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %22 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %22, i32 0, i32 9
  store %struct.vpe_dev* %21, %struct.vpe_dev** %23, align 8
  %24 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %25 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %24, i32 0, i32 0
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %264

31:                                               ; preds = %20
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* @VPE_DESC_LIST_SIZE, align 4
  %35 = load i32, i32* @VPDMA_LIST_TYPE_NORMAL, align 4
  %36 = call i32 @vpdma_create_desc_list(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %260

40:                                               ; preds = %31
  %41 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %41, i32 0, i32 2
  %43 = call i32 @vpdma_alloc_desc_buf(i32* %42, i32 4)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %256

47:                                               ; preds = %40
  %48 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* @SC_COEF_SRAM_SIZE, align 4
  %51 = call i32 @vpdma_alloc_desc_buf(i32* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %252

55:                                               ; preds = %47
  %56 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %56, i32 0, i32 4
  %58 = load i32, i32* @SC_COEF_SRAM_SIZE, align 4
  %59 = call i32 @vpdma_alloc_desc_buf(i32* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %248

63:                                               ; preds = %55
  %64 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %65 = call i32 @init_adb_hdrs(%struct.vpe_ctx* %64)
  %66 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %66, i32 0, i32 5
  %68 = load %struct.file*, %struct.file** %3, align 8
  %69 = call i32 @video_devdata(%struct.file* %68)
  %70 = call i32 @v4l2_fh_init(%struct.TYPE_10__* %67, i32 %69)
  %71 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %71, i32 0, i32 5
  %73 = load %struct.file*, %struct.file** %3, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %74, align 8
  %75 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %75, i32 0, i32 8
  store %struct.v4l2_ctrl_handler* %76, %struct.v4l2_ctrl_handler** %6, align 8
  %77 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %78 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %77, i32 1)
  %79 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %80 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %79, i32* @vpe_bufs_per_job, i32* null)
  %81 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %63
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %8, align 4
  br label %239

89:                                               ; preds = %63
  %90 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %91 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %90, %struct.v4l2_ctrl_handler** %93, align 8
  %94 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %95 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %94)
  %96 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %96, i32 0, i32 7
  %98 = load %struct.vpe_q_data*, %struct.vpe_q_data** %97, align 8
  %99 = load i64, i64* @Q_DATA_SRC, align 8
  %100 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %98, i64 %99
  store %struct.vpe_q_data* %100, %struct.vpe_q_data** %5, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vpe_formats, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 2
  %103 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %104 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %103, i32 0, i32 9
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %104, align 8
  %105 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %106 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %105, i32 0, i32 0
  store i32 1920, i32* %106, align 8
  %107 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %108 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %107, i32 0, i32 1
  store i32 1080, i32* %108, align 4
  %109 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %110 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %112 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %115 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %114, i32 0, i32 9
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %117, align 8
  %119 = load i64, i64* @VPE_LUMA, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %118, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %113, %123
  %125 = ashr i32 %124, 3
  %126 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %127 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @VPE_LUMA, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %132 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @VPE_LUMA, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %138 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %142 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @VPE_LUMA, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %147 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %148 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %150 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %151 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 8
  %152 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %153 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %156 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %159 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %162 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %165 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %168 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %171 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %170, i32 0, i32 5
  store i64 0, i64* %171, align 8
  %172 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %173 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %172, i32 0, i32 7
  %174 = load %struct.vpe_q_data*, %struct.vpe_q_data** %173, align 8
  %175 = load i64, i64* @Q_DATA_DST, align 8
  %176 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %174, i64 %175
  %177 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %178 = bitcast %struct.vpe_q_data* %176 to i8*
  %179 = bitcast %struct.vpe_q_data* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 80, i1 false)
  %180 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %181 = call i32 @set_dei_shadow_registers(%struct.vpe_ctx* %180)
  %182 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %183 = call i32 @set_src_registers(%struct.vpe_ctx* %182)
  %184 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %185 = call i32 @set_dst_registers(%struct.vpe_ctx* %184)
  %186 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %187 = call i32 @set_srcdst_params(%struct.vpe_ctx* %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %89
  br label %239

191:                                              ; preds = %89
  %192 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %193 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %196 = call i32 @v4l2_m2m_ctx_init(i32 %194, %struct.vpe_ctx* %195, i32* @queue_init)
  %197 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %198 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 8
  %200 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %201 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @IS_ERR(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %191
  %207 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %208 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @PTR_ERR(i32 %210)
  store i32 %211, i32* %8, align 4
  br label %239

212:                                              ; preds = %191
  %213 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %214 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %213, i32 0, i32 5
  %215 = call i32 @v4l2_fh_add(%struct.TYPE_10__* %214)
  %216 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %217 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %216, i32 0, i32 1
  %218 = call i32 @atomic_inc_return(i32* %217)
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %222 = call i32 (%struct.vpe_dev*, i8*, ...) @vpe_dbg(%struct.vpe_dev* %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %212
  %224 = load i32, i32* @VPE_DEF_BUFS_PER_JOB, align 4
  %225 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %226 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 8
  %227 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %228 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %230 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %231 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %232 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (%struct.vpe_dev*, i8*, ...) @vpe_dbg(%struct.vpe_dev* %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.vpe_ctx* %230, i32 %234)
  %236 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %237 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %236, i32 0, i32 0
  %238 = call i32 @mutex_unlock(i32* %237)
  store i32 0, i32* %2, align 4
  br label %268

239:                                              ; preds = %206, %190, %85
  %240 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %241 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %240)
  %242 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %243 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %242, i32 0, i32 5
  %244 = call i32 @v4l2_fh_exit(%struct.TYPE_10__* %243)
  %245 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %246 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %245, i32 0, i32 4
  %247 = call i32 @vpdma_free_desc_buf(i32* %246)
  br label %248

248:                                              ; preds = %239, %62
  %249 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %250 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %249, i32 0, i32 3
  %251 = call i32 @vpdma_free_desc_buf(i32* %250)
  br label %252

252:                                              ; preds = %248, %54
  %253 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %254 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %253, i32 0, i32 2
  %255 = call i32 @vpdma_free_desc_buf(i32* %254)
  br label %256

256:                                              ; preds = %252, %46
  %257 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %258 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %257, i32 0, i32 1
  %259 = call i32 @vpdma_free_desc_list(i32* %258)
  br label %260

260:                                              ; preds = %256, %39
  %261 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %262 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %261, i32 0, i32 0
  %263 = call i32 @mutex_unlock(i32* %262)
  br label %264

264:                                              ; preds = %260, %28
  %265 = load %struct.vpe_ctx*, %struct.vpe_ctx** %7, align 8
  %266 = call i32 @kfree(%struct.vpe_ctx* %265)
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %264, %223, %17
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local %struct.vpe_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vpe_dbg(%struct.vpe_dev*, i8*, ...) #1

declare dso_local %struct.vpe_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vpdma_create_desc_list(i32*, i32, i32) #1

declare dso_local i32 @vpdma_alloc_desc_buf(i32*, i32) #1

declare dso_local i32 @init_adb_hdrs(%struct.vpe_ctx*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_dei_shadow_registers(%struct.vpe_ctx*) #1

declare dso_local i32 @set_src_registers(%struct.vpe_ctx*) #1

declare dso_local i32 @set_dst_registers(%struct.vpe_ctx*) #1

declare dso_local i32 @set_srcdst_params(%struct.vpe_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.vpe_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_10__*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_10__*) #1

declare dso_local i32 @vpdma_free_desc_buf(i32*) #1

declare dso_local i32 @vpdma_free_desc_list(i32*) #1

declare dso_local i32 @kfree(%struct.vpe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
