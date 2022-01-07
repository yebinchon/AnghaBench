; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_dec_frame_buffer_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_dec_frame_buffer_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__*, i32, %struct.TYPE_5__, %struct.s5p_mfc_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.s5p_mfc_dev = type { i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Buf1: %p (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Total DPB COUNT: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Setting display delay to %d\0A\00", align 1
@S5P_FIMV_CODEC_H264_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_H264_MVC_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_HEVC_DEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Frame size: %d ch: %d mv: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Luma %d: %zx\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09Chroma %d: %zx\0A\00", align 1
@S5P_MFC_CODEC_H264_DEC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_H264_MVC_DEC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_HEVC_DEC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"\09Buf1: %zx, size: %d\0A\00", align 1
@S5P_FIMV_CODEC_VP9_DEC = common dso_local global i64 0, align 8
@DEC_VP9_STATIC_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"Buf1: %zx, buf_size1: %d (frames %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Not enough memory has been allocated.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cmd_host2risc = common dso_local global i32 0, align 4
@S5P_FIMV_CH_INIT_BUFS_V6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"After setting buffers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_dec_frame_buffer_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_dec_frame_buffer_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca %struct.s5p_mfc_regs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 12
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %14, align 8
  store %struct.s5p_mfc_dev* %15, %struct.s5p_mfc_dev** %8, align 8
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 1
  %18 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %17, align 8
  store %struct.s5p_mfc_regs* %18, %struct.s5p_mfc_regs** %9, align 8
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %10, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* %11, align 4
  %30 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %42, i32 0, i32 14
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @writel(i64 %41, i64 %44)
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %49, i32 0, i32 13
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @writel(i64 %48, i64 %51)
  %53 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @writel(i64 %55, i64 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @writel(i64 %60, i64 %63)
  %65 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %69 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @writel(i64 %67, i64 %70)
  %72 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %73 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %1
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @writel(i64 %78, i64 %81)
  %83 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @writel(i64 %85, i64 %88)
  br label %90

90:                                               ; preds = %75, %1
  %91 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %10, align 8
  %96 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @S5P_FIMV_CODEC_H264_DEC, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %90
  %109 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @S5P_FIMV_CODEC_H264_MVC_DEC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @S5P_FIMV_CODEC_HEVC_DEC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114, %108, %90
  %121 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %122 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %125 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @writel(i64 %123, i64 %126)
  %128 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %132 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @writel(i64 %130, i64 %133)
  br label %135

135:                                              ; preds = %120, %114
  %136 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %137 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %4, align 4
  %140 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %6, align 4
  %144 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %145 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %220, %135
  %153 = load i32, i32* %5, align 4
  %154 = zext i32 %153 to i64
  %155 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %156 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ult i64 %154, %157
  br i1 %158, label %159, label %223

159:                                              ; preds = %152
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %162 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %161, i32 0, i32 9
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %160, i64 %170)
  %172 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %173 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %172, i32 0, i32 9
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %183 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = mul i32 %185, 4
  %187 = zext i32 %186 to i64
  %188 = add nsw i64 %184, %187
  %189 = call i32 @writel(i64 %181, i64 %188)
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %192 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %191, i32 0, i32 9
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %190, i64 %200)
  %202 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %203 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %202, i32 0, i32 9
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %213 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = mul i32 %215, 4
  %217 = zext i32 %216 to i64
  %218 = add nsw i64 %214, %217
  %219 = call i32 @writel(i64 %211, i64 %218)
  br label %220

220:                                              ; preds = %159
  %221 = load i32, i32* %5, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %152

223:                                              ; preds = %152
  %224 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %225 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @S5P_MFC_CODEC_H264_DEC, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %241, label %229

229:                                              ; preds = %223
  %230 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %231 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @S5P_MFC_CODEC_H264_MVC_DEC, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %241, label %235

235:                                              ; preds = %229
  %236 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %237 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @S5P_MFC_CODEC_HEVC_DEC, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %285

241:                                              ; preds = %235, %229, %223
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %281, %241
  %243 = load i32, i32* %5, align 4
  %244 = zext i32 %243 to i64
  %245 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %246 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = icmp ult i64 %244, %247
  br i1 %248, label %249, label %284

249:                                              ; preds = %242
  %250 = load i64, i64* %10, align 8
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %12, align 4
  %252 = load i64, i64* %10, align 8
  %253 = call i64 @ALIGN(i64 %252, i32 16)
  store i64 %253, i64* %10, align 8
  %254 = load i64, i64* %10, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = sub i64 %254, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %11, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %11, align 4
  %262 = load i64, i64* %10, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %262, i32 %263)
  %265 = load i64, i64* %10, align 8
  %266 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %267 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = mul i32 %269, 4
  %271 = zext i32 %270 to i64
  %272 = add nsw i64 %268, %271
  %273 = call i32 @writel(i64 %265, i64 %272)
  %274 = load i32, i32* %7, align 4
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %10, align 8
  %277 = add i64 %276, %275
  store i64 %277, i64* %10, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %11, align 4
  %280 = sub i32 %279, %278
  store i32 %280, i32* %11, align 4
  br label %281

281:                                              ; preds = %249
  %282 = load i32, i32* %5, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %5, align 4
  br label %242

284:                                              ; preds = %242
  br label %285

285:                                              ; preds = %284, %235
  %286 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %287 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %286, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @S5P_FIMV_CODEC_VP9_DEC, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %310

291:                                              ; preds = %285
  %292 = load i64, i64* %10, align 8
  %293 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %294 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @writel(i64 %292, i64 %295)
  %297 = load i64, i64* @DEC_VP9_STATIC_BUFFER_SIZE, align 8
  %298 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %299 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @writel(i64 %297, i64 %300)
  %302 = load i64, i64* @DEC_VP9_STATIC_BUFFER_SIZE, align 8
  %303 = load i64, i64* %10, align 8
  %304 = add i64 %303, %302
  store i64 %304, i64* %10, align 8
  %305 = load i64, i64* @DEC_VP9_STATIC_BUFFER_SIZE, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = sub i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %11, align 4
  br label %310

310:                                              ; preds = %291, %285
  %311 = load i64, i64* %10, align 8
  %312 = load i32, i32* %11, align 4
  %313 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %314 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %311, i32 %312, i64 %315)
  %317 = load i32, i32* %11, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %321 = load i32, i32* @ENOMEM, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %2, align 4
  br label %339

323:                                              ; preds = %310
  %324 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %325 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %324, i32 0, i32 8
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  %328 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @writel(i64 %326, i64 %329)
  %331 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %332 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @cmd_host2risc, align 4
  %335 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %336 = load i32, i32* @S5P_FIMV_CH_INIT_BUFS_V6, align 4
  %337 = call i32 @s5p_mfc_hw_call(i32 %333, i32 %334, %struct.s5p_mfc_dev* %335, i32 %336, i32* null)
  %338 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %339

339:                                              ; preds = %323, %319
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
