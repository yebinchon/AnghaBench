; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif = type { i64, %struct.rcar_drif_hwbuf*, %struct.rcar_drif_sdr* }
%struct.rcar_drif_hwbuf = type { i32, i32 }
%struct.rcar_drif_sdr = type { i64, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rcar_drif_frame_buf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@RCAR_DRIF_MAX_CHANNEL = common dso_local global i32 0, align 4
@RCAR_DRIF_NUM_HWBUFS = common dso_local global i64 0, align 8
@RCAR_DRIF_BUF_DONE = common dso_local global i32 0, align 4
@RCAR_DRIF_BUF_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ch%u: prod %u\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rcar_drif_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_drif_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rcar_drif*, align 8
  %4 = alloca %struct.rcar_drif_sdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rcar_drif_frame_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.rcar_drif*
  store %struct.rcar_drif* %14, %struct.rcar_drif** %3, align 8
  %15 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %15, i32 0, i32 2
  %17 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %16, align 8
  store %struct.rcar_drif_sdr* %17, %struct.rcar_drif_sdr** %4, align 8
  %18 = load i32, i32* @RCAR_DRIF_MAX_CHANNEL, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca %struct.rcar_drif_hwbuf*, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %23 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %22, i32 0, i32 4
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %26 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %25, i32 0, i32 5
  %27 = call i32 @vb2_is_streaming(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %31 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %30, i32 0, i32 4
  %32 = call i32 @spin_unlock(i32* %31)
  store i32 1, i32* %12, align 4
  br label %210

33:                                               ; preds = %1
  %34 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %35 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RCAR_DRIF_NUM_HWBUFS, align 8
  %38 = urem i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @rcar_drif_channel_complete(%struct.rcar_drif* %39, i64 %40)
  %42 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %43 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RCAR_DRIF_MAX_CHANNEL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %33
  %48 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %49 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %54 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %55 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call %struct.rcar_drif_hwbuf* @to_rcar_drif_buf_pair(%struct.rcar_drif_sdr* %53, i64 %56, i64 %57)
  br label %65

59:                                               ; preds = %47
  %60 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %61 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %60, i32 0, i32 1
  %62 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %62, i64 %63
  br label %65

65:                                               ; preds = %59, %52
  %66 = phi %struct.rcar_drif_hwbuf* [ %58, %52 ], [ %64, %59 ]
  %67 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %21, i64 0
  store %struct.rcar_drif_hwbuf* %66, %struct.rcar_drif_hwbuf** %67, align 16
  %68 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %69 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %74 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %73, i32 0, i32 1
  %75 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %75, i64 %76
  br label %85

78:                                               ; preds = %65
  %79 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %80 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %81 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call %struct.rcar_drif_hwbuf* @to_rcar_drif_buf_pair(%struct.rcar_drif_sdr* %79, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = phi %struct.rcar_drif_hwbuf* [ %77, %72 ], [ %84, %78 ]
  %87 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %21, i64 1
  store %struct.rcar_drif_hwbuf* %86, %struct.rcar_drif_hwbuf** %87, align 8
  %88 = call i32 @rcar_drif_bufs_done(%struct.rcar_drif_hwbuf** %21)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %92 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %91, i32 0, i32 4
  %93 = call i32 @spin_unlock(i32* %92)
  store i32 1, i32* %12, align 4
  br label %210

94:                                               ; preds = %85
  %95 = load i32, i32* @RCAR_DRIF_BUF_DONE, align 4
  %96 = call i32 @rcar_drif_bufs_clear(%struct.rcar_drif_hwbuf** %21, i32 %95)
  %97 = call i64 @rcar_drif_bufs_overflow(%struct.rcar_drif_hwbuf** %21)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  store i32 1, i32* %8, align 4
  %100 = load i32, i32* @RCAR_DRIF_BUF_OVERFLOW, align 4
  %101 = call i32 @rcar_drif_bufs_clear(%struct.rcar_drif_hwbuf** %21, i32 %100)
  br label %102

102:                                              ; preds = %99, %94
  br label %126

103:                                              ; preds = %33
  %104 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %105 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %104, i32 0, i32 1
  %106 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %106, i64 %107
  %109 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %21, i64 0
  store %struct.rcar_drif_hwbuf* %108, %struct.rcar_drif_hwbuf** %109, align 16
  %110 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %21, i64 0
  %111 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %110, align 16
  %112 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RCAR_DRIF_BUF_OVERFLOW, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %103
  store i32 1, i32* %8, align 4
  %118 = load i32, i32* @RCAR_DRIF_BUF_OVERFLOW, align 4
  %119 = xor i32 %118, -1
  %120 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %21, i64 0
  %121 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %120, align 16
  %122 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %119
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %117, %103
  br label %126

126:                                              ; preds = %125, %102
  %127 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %128 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  store i64 %129, i64* %10, align 8
  %131 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %132 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %131, i32 0, i32 4
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %135 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %136 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @rdrif_dbg(%struct.rcar_drif_sdr* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %137, i64 %138)
  %140 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %141 = call %struct.rcar_drif_frame_buf* @rcar_drif_get_fbuf(%struct.rcar_drif_sdr* %140)
  store %struct.rcar_drif_frame_buf* %141, %struct.rcar_drif_frame_buf** %7, align 8
  %142 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %143 = icmp ne %struct.rcar_drif_frame_buf* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %126
  store i32 1, i32* %12, align 4
  br label %210

145:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %172, %145
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @RCAR_DRIF_MAX_CHANNEL, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %146
  %151 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %152 = getelementptr inbounds %struct.rcar_drif_frame_buf, %struct.rcar_drif_frame_buf* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = call i64 @vb2_plane_vaddr(%struct.TYPE_8__* %153, i32 0)
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %157 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = mul i32 %155, %158
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %154, %160
  %162 = load i32, i32* %11, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %21, i64 %163
  %165 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %164, align 8
  %166 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %169 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @memcpy(i64 %161, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %150
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %146

175:                                              ; preds = %146
  %176 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %177 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %178 = getelementptr inbounds %struct.rcar_drif_frame_buf, %struct.rcar_drif_frame_buf* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 4
  %180 = load i64, i64* %10, align 8
  %181 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %182 = getelementptr inbounds %struct.rcar_drif_frame_buf, %struct.rcar_drif_frame_buf* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i64 %180, i64* %183, align 8
  %184 = call i32 (...) @ktime_get_ns()
  %185 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %186 = getelementptr inbounds %struct.rcar_drif_frame_buf, %struct.rcar_drif_frame_buf* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i32 %184, i32* %188, align 8
  %189 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %190 = getelementptr inbounds %struct.rcar_drif_frame_buf, %struct.rcar_drif_frame_buf* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %193 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %192, i32 0, i32 3
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @vb2_set_plane_payload(%struct.TYPE_8__* %191, i32 0, i32 %196)
  %198 = load %struct.rcar_drif_frame_buf*, %struct.rcar_drif_frame_buf** %7, align 8
  %199 = getelementptr inbounds %struct.rcar_drif_frame_buf, %struct.rcar_drif_frame_buf* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %175
  %204 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %207

205:                                              ; preds = %175
  %206 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = call i32 @vb2_buffer_done(%struct.TYPE_8__* %200, i32 %208)
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %207, %144, %90, %29
  %211 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %12, align 4
  switch i32 %212, label %214 [
    i32 0, label %213
    i32 1, label %213
  ]

213:                                              ; preds = %210, %210
  ret void

214:                                              ; preds = %210
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @vb2_is_streaming(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @rcar_drif_channel_complete(%struct.rcar_drif*, i64) #2

declare dso_local %struct.rcar_drif_hwbuf* @to_rcar_drif_buf_pair(%struct.rcar_drif_sdr*, i64, i64) #2

declare dso_local i32 @rcar_drif_bufs_done(%struct.rcar_drif_hwbuf**) #2

declare dso_local i32 @rcar_drif_bufs_clear(%struct.rcar_drif_hwbuf**, i32) #2

declare dso_local i64 @rcar_drif_bufs_overflow(%struct.rcar_drif_hwbuf**) #2

declare dso_local i32 @rdrif_dbg(%struct.rcar_drif_sdr*, i8*, i64, i64) #2

declare dso_local %struct.rcar_drif_frame_buf* @rcar_drif_get_fbuf(%struct.rcar_drif_sdr*) #2

declare dso_local i32 @memcpy(i64, i32, i32) #2

declare dso_local i64 @vb2_plane_vaddr(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @ktime_get_ns(...) #2

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_8__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
