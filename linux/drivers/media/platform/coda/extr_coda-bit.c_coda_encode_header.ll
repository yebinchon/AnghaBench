; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_encode_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, %struct.TYPE_3__*, %struct.coda_dev* }
%struct.TYPE_3__ = type { i64 }
%struct.coda_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }
%struct.coda_q_data = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }

@CODA_960 = common dso_local global i64 0, align 8
@CODA_CMD_ENC_HEADER_BB_START = common dso_local global i32 0, align 4
@CODA_CMD_ENC_HEADER_BB_SIZE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@CODA_HEADER_H264_SPS = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_HEADER_FRAME_CROP_H = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_HEADER_FRAME_CROP_V = common dso_local global i32 0, align 4
@CODA9_HEADER_FRAME_CROP = common dso_local global i32 0, align 4
@CODA_CMD_ENC_HEADER_CODE = common dso_local global i32 0, align 4
@CODA_COMMAND_ENCODE_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CODA_COMMAND_ENCODE_HEADER timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.vb2_v4l2_buffer*, i32, i32*, i32*)* @coda_encode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_encode_header(%struct.coda_ctx* %0, %struct.vb2_v4l2_buffer* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.coda_ctx*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vb2_buffer*, align 8
  %13 = alloca %struct.coda_dev*, align 8
  %14 = alloca %struct.coda_q_data*, align 8
  %15 = alloca %struct.v4l2_rect*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %7, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %22 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %21, i32 0, i32 0
  store %struct.vb2_buffer* %22, %struct.vb2_buffer** %12, align 8
  %23 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %23, i32 0, i32 2
  %25 = load %struct.coda_dev*, %struct.coda_dev** %24, align 8
  store %struct.coda_dev* %25, %struct.coda_dev** %13, align 8
  %26 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %27 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CODA_960, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %12, align 8
  %35 = call i64 @vb2_plane_vaddr(%struct.vb2_buffer* %34, i32 0)
  %36 = call i32 @memset(i64 %35, i32 0, i32 64)
  br label %37

37:                                               ; preds = %33, %5
  %38 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %12, align 8
  %40 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %39, i32 0)
  %41 = load i32, i32* @CODA_CMD_ENC_HEADER_BB_START, align 4
  %42 = call i32 @coda_write(%struct.coda_dev* %38, i32 %40, i32 %41)
  %43 = load %struct.vb2_buffer*, %struct.vb2_buffer** %12, align 8
  %44 = call i64 @vb2_plane_size(%struct.vb2_buffer* %43, i32 0)
  store i64 %44, i64* %16, align 8
  %45 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %46 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CODA_960, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i64, i64* %16, align 8
  %54 = udiv i64 %53, 1024
  store i64 %54, i64* %16, align 8
  br label %55

55:                                               ; preds = %52, %37
  %56 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %57 = load i64, i64* %16, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @CODA_CMD_ENC_HEADER_BB_SIZE, align 4
  %60 = call i32 @coda_write(%struct.coda_dev* %56, i32 %58, i32 %59)
  %61 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %62 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CODA_960, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %126

68:                                               ; preds = %55
  %69 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @CODA_HEADER_H264_SPS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %76
  %81 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %82 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %83 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %81, i32 %82)
  store %struct.coda_q_data* %83, %struct.coda_q_data** %14, align 8
  %84 = load %struct.coda_q_data*, %struct.coda_q_data** %14, align 8
  %85 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %84, i32 0, i32 0
  store %struct.v4l2_rect* %85, %struct.v4l2_rect** %15, align 8
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = srem i32 %88, 16
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %80
  %92 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %93 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = srem i32 %94, 16
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %91, %80
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @round_up(i32 %100, i32 16)
  %102 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  store i32 %105, i32* %19, align 4
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @round_up(i32 %108, i32 16)
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %20, align 4
  %114 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @CODA9_CMD_ENC_HEADER_FRAME_CROP_H, align 4
  %117 = call i32 @coda_write(%struct.coda_dev* %114, i32 %115, i32 %116)
  %118 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @CODA9_CMD_ENC_HEADER_FRAME_CROP_V, align 4
  %121 = call i32 @coda_write(%struct.coda_dev* %118, i32 %119, i32 %120)
  %122 = load i32, i32* @CODA9_HEADER_FRAME_CROP, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %97, %91
  br label %126

126:                                              ; preds = %125, %76, %68, %55
  %127 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @CODA_CMD_ENC_HEADER_CODE, align 4
  %130 = call i32 @coda_write(%struct.coda_dev* %127, i32 %128, i32 %129)
  %131 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %132 = load i32, i32* @CODA_COMMAND_ENCODE_HEADER, align 4
  %133 = call i32 @coda_command_sync(%struct.coda_ctx* %131, i32 %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %138 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %137, i32 0, i32 1
  %139 = call i32 @v4l2_err(i32* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %140 = load i32, i32* %17, align 4
  store i32 %140, i32* %6, align 4
  br label %191

141:                                              ; preds = %126
  %142 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %143 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CODA_960, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %141
  store i32 63, i32* %18, align 4
  br label %150

150:                                              ; preds = %165, %149
  %151 = load i32, i32* %18, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load %struct.vb2_buffer*, %struct.vb2_buffer** %12, align 8
  %155 = call i64 @vb2_plane_vaddr(%struct.vb2_buffer* %154, i32 0)
  %156 = inttoptr i64 %155 to i8*
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %168

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %18, align 4
  br label %150

168:                                              ; preds = %163, %150
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, 1
  %171 = load i32*, i32** %11, align 8
  store i32 %170, i32* %171, align 4
  br label %184

172:                                              ; preds = %141
  %173 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %174 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %175 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @CODA_REG_BIT_WR_PTR(i32 %176)
  %178 = call i32 @coda_read(%struct.coda_dev* %173, i32 %177)
  %179 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  %180 = load i32, i32* @CODA_CMD_ENC_HEADER_BB_START, align 4
  %181 = call i32 @coda_read(%struct.coda_dev* %179, i32 %180)
  %182 = sub nsw i32 %178, %181
  %183 = load i32*, i32** %11, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %172, %168
  %185 = load i32*, i32** %10, align 8
  %186 = load %struct.vb2_buffer*, %struct.vb2_buffer** %12, align 8
  %187 = call i64 @vb2_plane_vaddr(%struct.vb2_buffer* %186, i32 0)
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @memcpy(i32* %185, i64 %187, i32 %189)
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %184, %136
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @coda_command_sync(%struct.coda_ctx*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i32 @CODA_REG_BIT_WR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
