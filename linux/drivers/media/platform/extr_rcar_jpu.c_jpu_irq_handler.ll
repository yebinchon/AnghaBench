; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu = type { i32, i32, i32*, i32 }
%struct.jpu_ctx = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@JINTS = common dso_local global i32 0, align 4
@JINTS_TRANSF_COMPL = common dso_local global i32 0, align 4
@JINTS_PROCESS_COMPL = common dso_local global i32 0, align 4
@JINTS_ERR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@JINTS_MASK = common dso_local global i32 0, align 4
@JCCMD_JEND = common dso_local global i32 0, align 4
@JCCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no active context for m2m\0A\00", align 1
@JCDTCU = common dso_local global i32 0, align 4
@JCDTCM = common dso_local global i32 0, align 4
@JCDTCD = common dso_local global i32 0, align 4
@JPU_JPEG_HDR_SIZE = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_TIMECODE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_BFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@JCDERR = common dso_local global i32 0, align 4
@JCDERR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"processing error: %#X: %s\0A\00", align 1
@error_to_text = common dso_local global i32* null, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@JCCMD_SRST = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jpu_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jpu*, align 8
  %7 = alloca %struct.jpu_ctx*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.jpu*
  store %struct.jpu* %14, %struct.jpu** %6, align 8
  %15 = load %struct.jpu*, %struct.jpu** %6, align 8
  %16 = load i32, i32* @JINTS, align 4
  %17 = call i32 @jpu_read(%struct.jpu* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @JINTS_TRANSF_COMPL, align 4
  %19 = load i32, i32* @JINTS_PROCESS_COMPL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @JINTS_ERR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %214

28:                                               ; preds = %2
  %29 = load %struct.jpu*, %struct.jpu** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @JINTS_MASK, align 4
  %32 = and i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @JINTS, align 4
  %35 = call i32 @jpu_write(%struct.jpu* %29, i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @JINTS_ERR, align 4
  %38 = load i32, i32* @JINTS_PROCESS_COMPL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.jpu*, %struct.jpu** %6, align 8
  %44 = load i32, i32* @JCCMD_JEND, align 4
  %45 = load i32, i32* @JCCMD, align 4
  %46 = call i32 @jpu_write(%struct.jpu* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.jpu*, %struct.jpu** %6, align 8
  %49 = getelementptr inbounds %struct.jpu, %struct.jpu* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @JINTS_PROCESS_COMPL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @JINTS_TRANSF_COMPL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %209

61:                                               ; preds = %55, %47
  %62 = load %struct.jpu*, %struct.jpu** %6, align 8
  %63 = getelementptr inbounds %struct.jpu, %struct.jpu* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.jpu_ctx* @v4l2_m2m_get_curr_priv(i32 %64)
  store %struct.jpu_ctx* %65, %struct.jpu_ctx** %7, align 8
  %66 = load %struct.jpu_ctx*, %struct.jpu_ctx** %7, align 8
  %67 = icmp ne %struct.jpu_ctx* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.jpu*, %struct.jpu** %6, align 8
  %70 = getelementptr inbounds %struct.jpu, %struct.jpu* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %209

73:                                               ; preds = %61
  %74 = load %struct.jpu_ctx*, %struct.jpu_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %77)
  store %struct.vb2_v4l2_buffer* %78, %struct.vb2_v4l2_buffer** %8, align 8
  %79 = load %struct.jpu_ctx*, %struct.jpu_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %82)
  store %struct.vb2_v4l2_buffer* %83, %struct.vb2_v4l2_buffer** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @JINTS_TRANSF_COMPL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %161

88:                                               ; preds = %73
  %89 = load %struct.jpu_ctx*, %struct.jpu_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.jpu*, %struct.jpu** %6, align 8
  %95 = load i32, i32* @JCDTCU, align 4
  %96 = call i32 @jpu_read(%struct.jpu* %94, i32 %95)
  %97 = shl i32 %96, 16
  %98 = load %struct.jpu*, %struct.jpu** %6, align 8
  %99 = load i32, i32* @JCDTCM, align 4
  %100 = call i32 @jpu_read(%struct.jpu* %98, i32 %99)
  %101 = shl i32 %100, 8
  %102 = or i32 %97, %101
  %103 = load %struct.jpu*, %struct.jpu** %6, align 8
  %104 = load i32, i32* @JCDTCD, align 4
  %105 = call i32 @jpu_read(%struct.jpu* %103, i32 %104)
  %106 = or i32 %102, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %11, align 8
  %108 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %109 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %108, i32 0, i32 2
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @JPU_JPEG_HDR_SIZE, align 8
  %112 = add i64 %110, %111
  %113 = call i32 @vb2_set_plane_payload(%struct.TYPE_4__* %109, i32 0, i64 %112)
  br label %114

114:                                              ; preds = %93, %88
  %115 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %116 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %119 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %121 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %125 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %128 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %114
  %134 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %135 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %138 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %114
  %140 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %141 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %144 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %142, %151
  %153 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %154 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %156 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %157 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %155, i32 %156)
  %158 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %159 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %160 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %158, i32 %159)
  br label %190

161:                                              ; preds = %73
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @JINTS_ERR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %161
  %167 = load %struct.jpu*, %struct.jpu** %6, align 8
  %168 = load i32, i32* @JCDERR, align 4
  %169 = call i32 @jpu_read(%struct.jpu* %167, i32 %168)
  %170 = load i32, i32* @JCDERR_MASK, align 4
  %171 = and i32 %169, %170
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %12, align 1
  %173 = load %struct.jpu*, %struct.jpu** %6, align 8
  %174 = getelementptr inbounds %struct.jpu, %struct.jpu* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i8, i8* %12, align 1
  %177 = load i32*, i32** @error_to_text, align 8
  %178 = load i8, i8* %12, align 1
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_dbg(i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %176, i32 %181)
  %183 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %184 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %185 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %183, i32 %184)
  %186 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %187 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %188 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %186, i32 %187)
  br label %189

189:                                              ; preds = %166, %161
  br label %190

190:                                              ; preds = %189, %139
  %191 = load %struct.jpu*, %struct.jpu** %6, align 8
  %192 = getelementptr inbounds %struct.jpu, %struct.jpu* %191, i32 0, i32 2
  store i32* null, i32** %192, align 8
  %193 = load %struct.jpu*, %struct.jpu** %6, align 8
  %194 = load i32, i32* @JCCMD_SRST, align 4
  %195 = load i32, i32* @JCCMD, align 4
  %196 = call i32 @jpu_write(%struct.jpu* %193, i32 %194, i32 %195)
  %197 = load %struct.jpu*, %struct.jpu** %6, align 8
  %198 = getelementptr inbounds %struct.jpu, %struct.jpu* %197, i32 0, i32 0
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load %struct.jpu*, %struct.jpu** %6, align 8
  %201 = getelementptr inbounds %struct.jpu, %struct.jpu* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.jpu_ctx*, %struct.jpu_ctx** %7, align 8
  %204 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @v4l2_m2m_job_finish(i32 %202, i32 %206)
  %208 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %208, i32* %3, align 4
  br label %214

209:                                              ; preds = %68, %60
  %210 = load %struct.jpu*, %struct.jpu** %6, align 8
  %211 = getelementptr inbounds %struct.jpu, %struct.jpu* %210, i32 0, i32 0
  %212 = call i32 @spin_unlock(i32* %211)
  %213 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %209, %190, %26
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @jpu_read(%struct.jpu*, i32) #1

declare dso_local i32 @jpu_write(%struct.jpu*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.jpu_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
