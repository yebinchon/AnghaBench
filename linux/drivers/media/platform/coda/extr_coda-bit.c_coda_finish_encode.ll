; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_finish_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_finish_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__, i64*, i32, %struct.coda_dev* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.coda_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i64, i32, i32 }

@CODA_CMD_ENC_PIC_BB_START = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"frame size = %u\0A\00", align 1
@CODA_RET_ENC_PIC_SLICE_NUM = common dso_local global i32 0, align 4
@CODA_RET_ENC_PIC_FLAG = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@CODA_RET_ENC_PIC_TYPE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"job finished: encoded %c frame (%d)%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" (last)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_finish_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_finish_encode(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.coda_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %8 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %8, i32 0, i32 6
  %10 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  store %struct.coda_dev* %10, %struct.coda_dev** %5, align 8
  %11 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %17)
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %3, align 8
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %22)
  store %struct.vb2_v4l2_buffer* %23, %struct.vb2_v4l2_buffer** %4, align 8
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %26 = call i32 @trace_coda_enc_pic_done(%struct.coda_ctx* %24, %struct.vb2_v4l2_buffer* %25)
  %27 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %28 = load i32, i32* @CODA_CMD_ENC_PIC_BB_START, align 4
  %29 = call i64 @coda_read(%struct.coda_dev* %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %31 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CODA_REG_BIT_WR_PTR(i32 %33)
  %35 = call i64 @coda_read(%struct.coda_dev* %30, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %1
  %41 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %42 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %40, %1
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 2
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %53, i32 0, i32 4
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %52, %57
  %59 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %59, i32 0, i32 4
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %64, %69
  %71 = call i32 @vb2_set_plane_payload(i32* %49, i32 0, i64 %70)
  br label %79

72:                                               ; preds = %40
  %73 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %73, i32 0, i32 2
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub nsw i64 %75, %76
  %78 = call i32 @vb2_set_plane_payload(i32* %74, i32 0, i64 %77)
  br label %79

79:                                               ; preds = %72, %47
  %80 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %87 = load i32, i32* @CODA_RET_ENC_PIC_SLICE_NUM, align 4
  %88 = call i64 @coda_read(%struct.coda_dev* %86, i32 %87)
  %89 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %90 = load i32, i32* @CODA_RET_ENC_PIC_FLAG, align 4
  %91 = call i64 @coda_read(%struct.coda_dev* %89, i32 %90)
  %92 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %93 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %99 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %103 = load i32, i32* @CODA_RET_ENC_PIC_TYPE, align 4
  %104 = call i64 @coda_read(%struct.coda_dev* %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %79
  %107 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %108 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %109 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %118

112:                                              ; preds = %79
  %113 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %114 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %115 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %120 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %125 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %129 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %130 = call i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer* %128, %struct.vb2_v4l2_buffer* %129, i32 0)
  %131 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %132 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %133 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %131, i32 %132)
  %134 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %135 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %137)
  store %struct.vb2_v4l2_buffer* %138, %struct.vb2_v4l2_buffer** %4, align 8
  %139 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %140 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %141 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %142 = call i32 @coda_m2m_buf_done(%struct.coda_ctx* %139, %struct.vb2_v4l2_buffer* %140, i32 %141)
  %143 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %144 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %143, i32 0, i32 2
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %147 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, -1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %151 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %118
  %155 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %156 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %158, 1
  %160 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %161 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %154, %118
  %163 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %164 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %165 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @coda_frame_type_char(i32 %166)
  %168 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %169 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %172 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %179 = call i32 (i32, %struct.coda_ctx*, i8*, i32, ...) @coda_dbg(i32 1, %struct.coda_ctx* %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %167, i64 %170, i8* %178)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @trace_coda_enc_pic_done(%struct.coda_ctx*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i32 @CODA_REG_BIT_WR_PTR(i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i64) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, i32, ...) #1

declare dso_local i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @coda_m2m_buf_done(%struct.coda_ctx*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @coda_frame_type_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
