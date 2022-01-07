; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu_ctx = type { %struct.jpu*, i32, i64, %struct.jpu_q_data, %struct.jpu_q_data, %struct.TYPE_5__ }
%struct.jpu = type { i32, i32, %struct.jpu_ctx* }
%struct.jpu_q_data = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8, i8 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.jpu_buffer = type { i8, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@JPU_JPEG_420 = common dso_local global i8 0, align 1
@JCMOD_REDU_420 = common dso_local global i32 0, align 4
@JIFECNT_INFT_420 = common dso_local global i32 0, align 4
@JCMOD_REDU_422 = common dso_local global i32 0, align 4
@JIFECNT_INFT_422 = common dso_local global i32 0, align 4
@JCMOD_DSP_ENC = common dso_local global i32 0, align 4
@JCMOD_PCTR = common dso_local global i32 0, align 4
@JCMOD_MSKIP_ENABLE = common dso_local global i32 0, align 4
@JCMOD = common dso_local global i32 0, align 4
@JIFECNT_SWAP_WB = common dso_local global i32 0, align 4
@JIFECNT = common dso_local global i32 0, align 4
@JIFDCNT_SWAP_WB = common dso_local global i32 0, align 4
@JIFDCNT = common dso_local global i32 0, align 4
@JINTE_TRANSF_COMPL = common dso_local global i32 0, align 4
@JINTE = common dso_local global i32 0, align 4
@JIFESYA1 = common dso_local global i32 0, align 4
@JIFESCA1 = common dso_local global i32 0, align 4
@JIFESMW = common dso_local global i32 0, align 4
@JCSZ_MASK = common dso_local global i32 0, align 4
@JCHSZU = common dso_local global i32 0, align 4
@JCHSZD = common dso_local global i32 0, align 4
@JCVSZU = common dso_local global i32 0, align 4
@JCVSZD = common dso_local global i32 0, align 4
@JIFESHSZ = common dso_local global i32 0, align 4
@JIFESVSZ = common dso_local global i32 0, align 4
@JPU_JPEG_HDR_SIZE = common dso_local global i64 0, align 8
@JIFEDA1 = common dso_local global i32 0, align 4
@JCQTN = common dso_local global i32 0, align 4
@JCHTN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"src and dst formats do not match.\0A\00", align 1
@JCMOD_DSP_DEC = common dso_local global i32 0, align 4
@JINTE_ERR = common dso_local global i32 0, align 4
@JIFDSA1 = common dso_local global i32 0, align 4
@JIFDDYA1 = common dso_local global i32 0, align 4
@JIFDDCA1 = common dso_local global i32 0, align 4
@JIFDDMW = common dso_local global i32 0, align 4
@JCCMD_JSRT = common dso_local global i32 0, align 4
@JCCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @jpu_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jpu_ctx*, align 8
  %4 = alloca %struct.jpu*, align 8
  %5 = alloca %struct.jpu_buffer*, align 8
  %6 = alloca %struct.jpu_q_data*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = bitcast i8* %23 to %struct.jpu_ctx*
  store %struct.jpu_ctx* %24, %struct.jpu_ctx** %3, align 8
  %25 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %25, i32 0, i32 0
  %27 = load %struct.jpu*, %struct.jpu** %26, align 8
  store %struct.jpu* %27, %struct.jpu** %4, align 8
  %28 = load %struct.jpu*, %struct.jpu** %4, align 8
  %29 = call i64 @jpu_wait_reset(%struct.jpu* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %33 = call i32 @jpu_cleanup(%struct.jpu_ctx* %32, i32 1)
  br label %353

34:                                               ; preds = %1
  %35 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %35, i32 0, i32 0
  %37 = load %struct.jpu*, %struct.jpu** %36, align 8
  %38 = getelementptr inbounds %struct.jpu, %struct.jpu* %37, i32 0, i32 0
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %42 = load %struct.jpu*, %struct.jpu** %4, align 8
  %43 = getelementptr inbounds %struct.jpu, %struct.jpu* %42, i32 0, i32 2
  store %struct.jpu_ctx* %41, %struct.jpu_ctx** %43, align 8
  %44 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %47)
  store %struct.vb2_v4l2_buffer* %48, %struct.vb2_v4l2_buffer** %7, align 8
  %49 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %52)
  store %struct.vb2_v4l2_buffer* %53, %struct.vb2_v4l2_buffer** %8, align 8
  %54 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %60 = call %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer* %59)
  store %struct.jpu_buffer* %60, %struct.jpu_buffer** %5, align 8
  %61 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %61, i32 0, i32 4
  store %struct.jpu_q_data* %62, %struct.jpu_q_data** %6, align 8
  br label %68

63:                                               ; preds = %34
  %64 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %65 = call %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer* %64)
  store %struct.jpu_buffer* %65, %struct.jpu_buffer** %5, align 8
  %66 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %66, i32 0, i32 3
  store %struct.jpu_q_data* %67, %struct.jpu_q_data** %6, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %70 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  %73 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %74 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %78 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %85 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %12, align 1
  %89 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %90 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %13, align 1
  %94 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %254

98:                                               ; preds = %68
  %99 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %100 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %99, i32 0, i32 0
  %101 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %100, i32 0)
  store i64 %101, i64* %17, align 8
  %102 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %103 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %102, i32 0, i32 0
  %104 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %103, i32 0)
  store i64 %104, i64* %15, align 8
  %105 = load i8, i8* %12, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %110 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %109, i32 0, i32 0
  %111 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %110, i32 1)
  store i64 %111, i64* %16, align 8
  br label %119

112:                                              ; preds = %98
  %113 = load i64, i64* %15, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = mul i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = add i64 %113, %117
  store i64 %118, i64* %16, align 8
  br label %119

119:                                              ; preds = %112, %108
  %120 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.jpu_buffer*, %struct.jpu_buffer** %5, align 8
  %124 = getelementptr inbounds %struct.jpu_buffer, %struct.jpu_buffer* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i8, i8* %13, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @JPU_JPEG_420, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load i32, i32* @JCMOD_REDU_420, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* @JIFECNT_INFT_420, align 4
  store i32 %132, i32* %19, align 4
  br label %136

133:                                              ; preds = %119
  %134 = load i32, i32* @JCMOD_REDU_422, align 4
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* @JIFECNT_INFT_422, align 4
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.jpu*, %struct.jpu** %4, align 8
  %138 = load i32, i32* @JCMOD_DSP_ENC, align 4
  %139 = load i32, i32* @JCMOD_PCTR, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %18, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @JCMOD_MSKIP_ENABLE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @JCMOD, align 4
  %146 = call i32 @jpu_write(%struct.jpu* %137, i32 %144, i32 %145)
  %147 = load %struct.jpu*, %struct.jpu** %4, align 8
  %148 = load i32, i32* @JIFECNT_SWAP_WB, align 4
  %149 = load i32, i32* %19, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @JIFECNT, align 4
  %152 = call i32 @jpu_write(%struct.jpu* %147, i32 %150, i32 %151)
  %153 = load %struct.jpu*, %struct.jpu** %4, align 8
  %154 = load i32, i32* @JIFDCNT_SWAP_WB, align 4
  %155 = load i32, i32* @JIFDCNT, align 4
  %156 = call i32 @jpu_write(%struct.jpu* %153, i32 %154, i32 %155)
  %157 = load %struct.jpu*, %struct.jpu** %4, align 8
  %158 = load i32, i32* @JINTE_TRANSF_COMPL, align 4
  %159 = load i32, i32* @JINTE, align 4
  %160 = call i32 @jpu_write(%struct.jpu* %157, i32 %158, i32 %159)
  %161 = load %struct.jpu*, %struct.jpu** %4, align 8
  %162 = load i64, i64* %15, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* @JIFESYA1, align 4
  %165 = call i32 @jpu_write(%struct.jpu* %161, i32 %163, i32 %164)
  %166 = load %struct.jpu*, %struct.jpu** %4, align 8
  %167 = load i64, i64* %16, align 8
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* @JIFESCA1, align 4
  %170 = call i32 @jpu_write(%struct.jpu* %166, i32 %168, i32 %169)
  %171 = load %struct.jpu*, %struct.jpu** %4, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @JIFESMW, align 4
  %174 = call i32 @jpu_write(%struct.jpu* %171, i32 %172, i32 %173)
  %175 = load %struct.jpu*, %struct.jpu** %4, align 8
  %176 = load i32, i32* %9, align 4
  %177 = lshr i32 %176, 8
  %178 = load i32, i32* @JCSZ_MASK, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @JCHSZU, align 4
  %181 = call i32 @jpu_write(%struct.jpu* %175, i32 %179, i32 %180)
  %182 = load %struct.jpu*, %struct.jpu** %4, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @JCSZ_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @JCHSZD, align 4
  %187 = call i32 @jpu_write(%struct.jpu* %182, i32 %185, i32 %186)
  %188 = load %struct.jpu*, %struct.jpu** %4, align 8
  %189 = load i32, i32* %10, align 4
  %190 = lshr i32 %189, 8
  %191 = load i32, i32* @JCSZ_MASK, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* @JCVSZU, align 4
  %194 = call i32 @jpu_write(%struct.jpu* %188, i32 %192, i32 %193)
  %195 = load %struct.jpu*, %struct.jpu** %4, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @JCSZ_MASK, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* @JCVSZD, align 4
  %200 = call i32 @jpu_write(%struct.jpu* %195, i32 %198, i32 %199)
  %201 = load %struct.jpu*, %struct.jpu** %4, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @JIFESHSZ, align 4
  %204 = call i32 @jpu_write(%struct.jpu* %201, i32 %202, i32 %203)
  %205 = load %struct.jpu*, %struct.jpu** %4, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @JIFESVSZ, align 4
  %208 = call i32 @jpu_write(%struct.jpu* %205, i32 %206, i32 %207)
  %209 = load %struct.jpu*, %struct.jpu** %4, align 8
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* @JPU_JPEG_HDR_SIZE, align 8
  %212 = add i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = load i32, i32* @JIFEDA1, align 4
  %215 = call i32 @jpu_write(%struct.jpu* %209, i32 %213, i32 %214)
  %216 = load %struct.jpu*, %struct.jpu** %4, align 8
  %217 = call i32 @JCQTN_SHIFT(i32 1)
  %218 = shl i32 0, %217
  %219 = call i32 @JCQTN_SHIFT(i32 2)
  %220 = shl i32 1, %219
  %221 = or i32 %218, %220
  %222 = call i32 @JCQTN_SHIFT(i32 3)
  %223 = shl i32 1, %222
  %224 = or i32 %221, %223
  %225 = load i32, i32* @JCQTN, align 4
  %226 = call i32 @jpu_write(%struct.jpu* %216, i32 %224, i32 %225)
  %227 = load %struct.jpu*, %struct.jpu** %4, align 8
  %228 = call i32 @JCHTN_AC_SHIFT(i32 1)
  %229 = shl i32 0, %228
  %230 = call i32 @JCHTN_DC_SHIFT(i32 1)
  %231 = shl i32 0, %230
  %232 = or i32 %229, %231
  %233 = call i32 @JCHTN_AC_SHIFT(i32 2)
  %234 = shl i32 1, %233
  %235 = or i32 %232, %234
  %236 = call i32 @JCHTN_DC_SHIFT(i32 2)
  %237 = shl i32 1, %236
  %238 = or i32 %235, %237
  %239 = call i32 @JCHTN_AC_SHIFT(i32 3)
  %240 = shl i32 1, %239
  %241 = or i32 %238, %240
  %242 = call i32 @JCHTN_DC_SHIFT(i32 3)
  %243 = shl i32 1, %242
  %244 = or i32 %241, %243
  %245 = load i32, i32* @JCHTN, align 4
  %246 = call i32 @jpu_write(%struct.jpu* %227, i32 %244, i32 %245)
  %247 = load %struct.jpu*, %struct.jpu** %4, align 8
  %248 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %249 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @jpu_set_qtbl(%struct.jpu* %247, i32 %250)
  %252 = load %struct.jpu*, %struct.jpu** %4, align 8
  %253 = call i32 @jpu_set_htbl(%struct.jpu* %252)
  br label %342

254:                                              ; preds = %68
  %255 = load %struct.jpu_buffer*, %struct.jpu_buffer** %5, align 8
  %256 = getelementptr inbounds %struct.jpu_buffer, %struct.jpu_buffer* %255, i32 0, i32 0
  %257 = load i8, i8* %256, align 4
  %258 = zext i8 %257 to i32
  %259 = load i8, i8* %13, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %258, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %254
  %263 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %264 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %263, i32 0, i32 0
  %265 = load %struct.jpu*, %struct.jpu** %264, align 8
  %266 = getelementptr inbounds %struct.jpu, %struct.jpu* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @dev_err(i32 %267, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %269 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %270 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %269, i32 0, i32 0
  %271 = load %struct.jpu*, %struct.jpu** %270, align 8
  %272 = getelementptr inbounds %struct.jpu, %struct.jpu* %271, i32 0, i32 0
  %273 = load i64, i64* %14, align 8
  %274 = call i32 @spin_unlock_irqrestore(i32* %272, i64 %273)
  %275 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %276 = call i32 @jpu_cleanup(%struct.jpu_ctx* %275, i32 0)
  br label %353

277:                                              ; preds = %254
  %278 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %279 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %278, i32 0, i32 0
  %280 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %279, i32 0)
  store i64 %280, i64* %20, align 8
  %281 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %282 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %281, i32 0, i32 0
  %283 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %282, i32 0)
  store i64 %283, i64* %21, align 8
  %284 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %285 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %284, i32 0, i32 0
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp sgt i32 %289, 1
  br i1 %290, label %291, label %295

291:                                              ; preds = %277
  %292 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %293 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %292, i32 0, i32 0
  %294 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %293, i32 1)
  store i64 %294, i64* %22, align 8
  br label %302

295:                                              ; preds = %277
  %296 = load i64, i64* %21, align 8
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* %10, align 4
  %299 = mul i32 %297, %298
  %300 = zext i32 %299 to i64
  %301 = add i64 %296, %300
  store i64 %301, i64* %22, align 8
  br label %302

302:                                              ; preds = %295, %291
  %303 = load %struct.jpu*, %struct.jpu** %4, align 8
  %304 = load i32, i32* @JCMOD_DSP_DEC, align 4
  %305 = load i32, i32* @JCMOD_PCTR, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @JCMOD, align 4
  %308 = call i32 @jpu_write(%struct.jpu* %303, i32 %306, i32 %307)
  %309 = load %struct.jpu*, %struct.jpu** %4, align 8
  %310 = load i32, i32* @JIFECNT_SWAP_WB, align 4
  %311 = load i32, i32* @JIFECNT, align 4
  %312 = call i32 @jpu_write(%struct.jpu* %309, i32 %310, i32 %311)
  %313 = load %struct.jpu*, %struct.jpu** %4, align 8
  %314 = load i32, i32* @JIFDCNT_SWAP_WB, align 4
  %315 = load i32, i32* @JIFDCNT, align 4
  %316 = call i32 @jpu_write(%struct.jpu* %313, i32 %314, i32 %315)
  %317 = load %struct.jpu*, %struct.jpu** %4, align 8
  %318 = load i32, i32* @JINTE_TRANSF_COMPL, align 4
  %319 = load i32, i32* @JINTE_ERR, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @JINTE, align 4
  %322 = call i32 @jpu_write(%struct.jpu* %317, i32 %320, i32 %321)
  %323 = load %struct.jpu*, %struct.jpu** %4, align 8
  %324 = load i64, i64* %20, align 8
  %325 = trunc i64 %324 to i32
  %326 = load i32, i32* @JIFDSA1, align 4
  %327 = call i32 @jpu_write(%struct.jpu* %323, i32 %325, i32 %326)
  %328 = load %struct.jpu*, %struct.jpu** %4, align 8
  %329 = load i64, i64* %21, align 8
  %330 = trunc i64 %329 to i32
  %331 = load i32, i32* @JIFDDYA1, align 4
  %332 = call i32 @jpu_write(%struct.jpu* %328, i32 %330, i32 %331)
  %333 = load %struct.jpu*, %struct.jpu** %4, align 8
  %334 = load i64, i64* %22, align 8
  %335 = trunc i64 %334 to i32
  %336 = load i32, i32* @JIFDDCA1, align 4
  %337 = call i32 @jpu_write(%struct.jpu* %333, i32 %335, i32 %336)
  %338 = load %struct.jpu*, %struct.jpu** %4, align 8
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @JIFDDMW, align 4
  %341 = call i32 @jpu_write(%struct.jpu* %338, i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %302, %136
  %343 = load %struct.jpu*, %struct.jpu** %4, align 8
  %344 = load i32, i32* @JCCMD_JSRT, align 4
  %345 = load i32, i32* @JCCMD, align 4
  %346 = call i32 @jpu_write(%struct.jpu* %343, i32 %344, i32 %345)
  %347 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %348 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %347, i32 0, i32 0
  %349 = load %struct.jpu*, %struct.jpu** %348, align 8
  %350 = getelementptr inbounds %struct.jpu, %struct.jpu* %349, i32 0, i32 0
  %351 = load i64, i64* %14, align 8
  %352 = call i32 @spin_unlock_irqrestore(i32* %350, i64 %351)
  br label %353

353:                                              ; preds = %342, %262, %31
  ret void
}

declare dso_local i64 @jpu_wait_reset(%struct.jpu*) #1

declare dso_local i32 @jpu_cleanup(%struct.jpu_ctx*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @jpu_write(%struct.jpu*, i32, i32) #1

declare dso_local i32 @JCQTN_SHIFT(i32) #1

declare dso_local i32 @JCHTN_AC_SHIFT(i32) #1

declare dso_local i32 @JCHTN_DC_SHIFT(i32) #1

declare dso_local i32 @jpu_set_qtbl(%struct.jpu*, i32) #1

declare dso_local i32 @jpu_set_htbl(%struct.jpu*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
