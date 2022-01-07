; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_encode_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_encode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32, i32, i64, i32, %struct.TYPE_6__, %struct.ivtv* }
%struct.TYPE_6__ = type { i32* }
%struct.ivtv = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i64, i8*, i8*, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Start encoder stream %s\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DMA_BLOCK_SIZE = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_VERT_CROP_LINE = common dso_local global i32 0, align 4
@CX2341X_ENC_MISC = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_PLACEHOLDER = common dso_local global i32 0, align 4
@IVTV_HW_SAA7115 = common dso_local global i32 0, align 4
@IVTV_HW_SAA717X = common dso_local global i32 0, align 4
@IVTV_HW_SAA7114 = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_NUM_VSYNC_LINES = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_PGM_INDEX_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PGM Index at 0x%08x with %d elements\0A\00", align 1
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@IVTV_F_I_DIG_RST = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_EVENT_NOTIFICATION = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_VIM_RST = common dso_local global i32 0, align 4
@IVTV_IRQ_MASK_CAPTURE = common dso_local global i32 0, align 4
@IVTV_F_I_EOS = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@CX2341X_ENC_INITIALIZE_INPUT = common dso_local global i32 0, align 4
@CX2341X_ENC_START_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error starting capture!\0A\00", align 1
@IVTV_IRQ_ENC_VBI_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %3, align 8
  %12 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i32 0, i32 6
  %18 = load %struct.ivtv*, %struct.ivtv** %17, align 8
  store %struct.ivtv* %18, %struct.ivtv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %20 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %301

27:                                               ; preds = %1
  %28 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %29 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %35 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %84 [
    i32 131, label %37
    i32 128, label %63
    i32 130, label %71
    i32 129, label %72
  ]

37:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %38 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %45 = call i32 @ivtv_passthrough_mode(%struct.ivtv* %44, i32 0)
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 17
  store i32 0, i32* %48, align 8
  %49 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 18
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @jiffies, align 4
  %52 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 16
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @v4l2_ctrl_g_ctrl(i32 %57)
  %59 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %62 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %61, i32 0, i32 15
  store i32 0, i32* %62, align 8
  br label %87

63:                                               ; preds = %27
  %64 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 2, i32* %7, align 4
  store i32 11, i32* %8, align 4
  br label %87

70:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %87

71:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %87

72:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %73 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 13
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %77 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %76, i32 0, i32 13
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 13
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memset(i32 %82, i32 0, i32 4)
  br label %87

84:                                               ; preds = %27
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %301

87:                                               ; preds = %72, %71, %70, %69, %46
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %90 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %92 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %94 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %95 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %94, i32 0, i32 2
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  %97 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %98 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %97, i32 0, i32 2
  %99 = call i64 @atomic_read(i32* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %210

101:                                              ; preds = %87
  %102 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %103 = load i32, i32* @CX2341X_ENC_SET_DMA_BLOCK_SIZE, align 4
  %104 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %102, i32 %103, i32 2, i32 1, i32 1)
  %105 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %106 = load i32, i32* @CX2341X_ENC_SET_VERT_CROP_LINE, align 4
  %107 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %105, i32 %106, i32 1, i32 0)
  %108 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %109 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %110 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %111 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %108, i32 %109, i32 2, i32 3, i32 %115)
  %117 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %118 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %119 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %117, i32 %118, i32 2, i32 8, i32 0)
  %120 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %121 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %122 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %120, i32 %121, i32 2, i32 4, i32 1)
  %123 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %124 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %125 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %123, i32 %124, i32 1, i32 12)
  %126 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %127 = load i32, i32* @CX2341X_ENC_SET_PLACEHOLDER, align 4
  %128 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %126, i32 %127, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %129 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %130 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %129, i32 0, i32 12
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IVTV_HW_SAA7115, align 4
  %135 = load i32, i32* @IVTV_HW_SAA717X, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %101
  store i32 241, i32* %11, align 4
  br label %152

140:                                              ; preds = %101
  %141 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %142 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %141, i32 0, i32 12
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IVTV_HW_SAA7114, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  store i32 239, i32* %11, align 4
  br label %151

150:                                              ; preds = %140
  store i32 320, i32* %11, align 4
  br label %151

151:                                              ; preds = %150, %149
  br label %152

152:                                              ; preds = %151, %139
  %153 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %154 = load i32, i32* @CX2341X_ENC_SET_NUM_VSYNC_LINES, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %153, i32 %154, i32 2, i32 %155, i32 %156)
  %158 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %159 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %152
  %165 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %166 = call i32 @ivtv_vbi_setup(%struct.ivtv* %165)
  br label %167

167:                                              ; preds = %164, %152
  %168 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %169 = load i32, i32* @CX2341X_ENC_SET_PGM_INDEX_INFO, align 4
  %170 = call i32 @ivtv_vapi_result(%struct.ivtv* %168, i8** %15, i32 %169, i32 2, i32 7, i32 400)
  %171 = getelementptr inbounds i8*, i8** %15, i64 0
  %172 = load i8*, i8** %171, align 16
  %173 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %174 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %173, i32 0, i32 9
  store i8* %172, i8** %174, align 8
  %175 = getelementptr inbounds i8*, i8** %15, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %178 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %177, i32 0, i32 8
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %180 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %179, i32 0, i32 11
  store i64 0, i64* %180, align 8
  %181 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %182 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %181, i32 0, i32 10
  store i64 0, i64* %182, align 8
  %183 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %184 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %183, i32 0, i32 9
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %187 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %186, i32 0, i32 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %185, i8* %188)
  %190 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %191 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %190, i32 0, i32 5
  %192 = call i32 @cx2341x_handler_setup(%struct.TYPE_9__* %191)
  %193 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %194 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %195 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %194, i32 0, i32 6
  %196 = call i64 @test_bit(i32 %193, i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %167
  %199 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %200 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %201 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %202 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @v4l2_ctrl_g_ctrl(i32 %204)
  %206 = shl i32 %205, 8
  %207 = or i32 1, %206
  %208 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %199, i32 %200, i32 1, i32 %207)
  br label %209

209:                                              ; preds = %198, %167
  br label %210

210:                                              ; preds = %209, %87
  %211 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %212 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %210
  %216 = load i32, i32* @IVTV_F_I_DIG_RST, align 4
  %217 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %218 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %217, i32 0, i32 6
  %219 = call i32 @test_and_set_bit(i32 %216, i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %215
  %222 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %223 = load i32, i32* @CX2341X_ENC_SET_EVENT_NOTIFICATION, align 4
  %224 = load i32, i32* @IVTV_IRQ_ENC_VIM_RST, align 4
  %225 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %222, i32 %223, i32 4, i32 0, i32 1, i32 %224, i32 -1)
  %226 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %227 = load i32, i32* @IVTV_IRQ_ENC_VIM_RST, align 4
  %228 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %226, i32 %227)
  br label %229

229:                                              ; preds = %221, %215, %210
  %230 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %231 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %230, i32 0, i32 2
  %232 = call i64 @atomic_read(i32* %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %267

234:                                              ; preds = %229
  %235 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %236 = load i32, i32* @IVTV_IRQ_MASK_CAPTURE, align 4
  %237 = call i32 @ivtv_set_irq_mask(%struct.ivtv* %235, i32 %236)
  %238 = load i32, i32* @IVTV_F_I_EOS, align 4
  %239 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %240 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %239, i32 0, i32 6
  %241 = call i32 @clear_bit(i32 %238, i32* %240)
  %242 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %243 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %242, i32 0, i32 5
  %244 = call i32 @cx2341x_handler_set_busy(%struct.TYPE_9__* %243, i32 1)
  %245 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %246 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @audio, align 4
  %249 = load i32, i32* @s_stream, align 4
  %250 = call i32 @v4l2_subdev_call(i32 %247, i32 %248, i32 %249, i32 1)
  %251 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %252 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @video, align 4
  %255 = load i32, i32* @s_stream, align 4
  %256 = call i32 @v4l2_subdev_call(i32 %253, i32 %254, i32 %255, i32 0)
  %257 = call i32 @ivtv_msleep_timeout(i32 300, i32 0)
  %258 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %259 = load i32, i32* @CX2341X_ENC_INITIALIZE_INPUT, align 4
  %260 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %258, i32 %259, i32 0)
  %261 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %262 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @video, align 4
  %265 = load i32, i32* @s_stream, align 4
  %266 = call i32 @v4l2_subdev_call(i32 %263, i32 %264, i32 %265, i32 1)
  br label %267

267:                                              ; preds = %234, %229
  %268 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %269 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* %8, align 4
  %272 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %268, i32 %269, i32 2, i32 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %267
  %275 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %276 = load i32, i32* @EINVAL, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %301

278:                                              ; preds = %267
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %283 = call i32 @ivtv_passthrough_mode(%struct.ivtv* %282, i32 1)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %286 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 129
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %291 = load i32, i32* @IVTV_IRQ_ENC_VBI_CAP, align 4
  %292 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %290, i32 %291)
  br label %297

293:                                              ; preds = %284
  %294 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %295 = load i32, i32* @IVTV_IRQ_MASK_CAPTURE, align 4
  %296 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %294, i32 %295)
  br label %297

297:                                              ; preds = %293, %289
  %298 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %299 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %298, i32 0, i32 2
  %300 = call i32 @atomic_inc(i32* %299)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %301

301:                                              ; preds = %297, %274, %84, %24
  %302 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %302)
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i8*, ...) #2

declare dso_local i32 @ivtv_passthrough_mode(%struct.ivtv*, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @ivtv_vapi(%struct.ivtv*, i32, i32, ...) #2

declare dso_local i32 @ivtv_vbi_setup(%struct.ivtv*) #2

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i8**, i32, i32, i32, i32) #2

declare dso_local i32 @cx2341x_handler_setup(%struct.TYPE_9__*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @test_and_set_bit(i32, i32*) #2

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #2

declare dso_local i32 @ivtv_set_irq_mask(%struct.ivtv*, i32) #2

declare dso_local i32 @cx2341x_handler_set_busy(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #2

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #2

declare dso_local i32 @atomic_inc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
