; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, i32, i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.camif_buffer = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@S3C6410_CAMIF_IP_REV = common dso_local global i32 0, align 4
@S3C244X_CAMIF_IP_REV = common dso_local global i32 0, align 4
@CISTATUS_OVF_MASK = common dso_local global i32 0, align 4
@ST_VP_ABORTING = common dso_local global i32 0, align 4
@ST_VP_OFF = common dso_local global i32 0, align 4
@ST_VP_LASTIRQ = common dso_local global i32 0, align 4
@ST_VP_RUNNING = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@ST_VP_PENDING = common dso_local global i32 0, align 4
@ST_VP_CONFIG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_camif_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca %struct.camif_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.camif_buffer*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.camif_vp*
  store %struct.camif_vp* %12, %struct.camif_vp** %5, align 8
  %13 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %14 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %13, i32 0, i32 5
  %15 = load %struct.camif_dev*, %struct.camif_dev** %14, align 8
  store %struct.camif_dev* %15, %struct.camif_dev** %6, align 8
  %16 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %17 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %22 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @S3C6410_CAMIF_IP_REV, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %29 = call i32 @camif_hw_clear_pending_irq(%struct.camif_vp* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %32 = call i32 @camif_hw_get_status(%struct.camif_vp* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @S3C244X_CAMIF_IP_REV, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CISTATUS_OVF_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %43 = call i32 @camif_hw_clear_fifo_overflow(%struct.camif_vp* %42)
  br label %238

44:                                               ; preds = %36, %30
  %45 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %46 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ST_VP_ABORTING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %101

51:                                               ; preds = %44
  %52 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %53 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ST_VP_OFF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load i32, i32* @ST_VP_OFF, align 4
  %60 = load i32, i32* @ST_VP_ABORTING, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ST_VP_LASTIRQ, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %66 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %70 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %69, i32 0, i32 4
  %71 = call i32 @wake_up(i32* %70)
  br label %238

72:                                               ; preds = %51
  %73 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %74 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ST_VP_LASTIRQ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %81 = call i32 @camif_hw_disable_capture(%struct.camif_vp* %80)
  %82 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %83 = call i32 @camif_hw_enable_scaler(%struct.camif_vp* %82, i32 0)
  %84 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %85 = call i32 @camif_hw_set_lastirq(%struct.camif_vp* %84, i32 0)
  %86 = load i32, i32* @ST_VP_OFF, align 4
  %87 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %88 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %99

91:                                               ; preds = %72
  %92 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %93 = call i32 @camif_hw_set_lastirq(%struct.camif_vp* %92, i32 1)
  %94 = load i32, i32* @ST_VP_LASTIRQ, align 4
  %95 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %96 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %91, %79
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %44
  %102 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %103 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %102, i32 0, i32 3
  %104 = call i32 @list_empty(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %170, label %106

106:                                              ; preds = %101
  %107 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %108 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ST_VP_RUNNING, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %170

113:                                              ; preds = %106
  %114 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %115 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %114, i32 0, i32 2
  %116 = call i32 @list_empty(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %170, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @CISTATUS_FRAMECNT(i32 %119)
  %121 = add nsw i32 %120, 2
  %122 = and i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call %struct.camif_buffer* @camif_active_queue_peek(%struct.camif_vp* %123, i32 %124)
  store %struct.camif_buffer* %125, %struct.camif_buffer** %10, align 8
  %126 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %127 = icmp eq %struct.camif_buffer* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i32 @WARN_ON(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %169, label %131

131:                                              ; preds = %118
  %132 = call i32 (...) @ktime_get_ns()
  %133 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %134 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  %137 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %138 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = sext i32 %139 to i64
  %142 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %143 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %146 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %149 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %147, i32 %148)
  %150 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %151 = call %struct.camif_buffer* @camif_pending_queue_pop(%struct.camif_vp* %150)
  store %struct.camif_buffer* %151, %struct.camif_buffer** %10, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %154 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %156 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %157 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %156, i32 0, i32 1
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @camif_hw_set_output_addr(%struct.camif_vp* %155, i32* %157, i32 %158)
  %160 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %161 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %162 = getelementptr inbounds %struct.camif_buffer, %struct.camif_buffer* %161, i32 0, i32 1
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 2
  %165 = call i32 @camif_hw_set_output_addr(%struct.camif_vp* %160, i32* %162, i32 %164)
  %166 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %167 = load %struct.camif_buffer*, %struct.camif_buffer** %10, align 8
  %168 = call i32 @camif_active_queue_add(%struct.camif_vp* %166, %struct.camif_buffer* %167)
  br label %169

169:                                              ; preds = %131, %118
  br label %191

170:                                              ; preds = %113, %106, %101
  %171 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %172 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ST_VP_ABORTING, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %170
  %178 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %179 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ST_VP_PENDING, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load i32, i32* @ST_VP_RUNNING, align 4
  %186 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %187 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %177, %170
  br label %191

191:                                              ; preds = %190, %169
  %192 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %193 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ST_VP_CONFIG, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %237

198:                                              ; preds = %191
  %199 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %200 = call i32 @camif_prepare_dma_offset(%struct.camif_vp* %199)
  %201 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %202 = call i32 @camif_hw_set_camera_crop(%struct.camif_dev* %201)
  %203 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %204 = call i32 @camif_hw_set_scaler(%struct.camif_vp* %203)
  %205 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %206 = call i32 @camif_hw_set_flip(%struct.camif_vp* %205)
  %207 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %208 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %209 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @camif_hw_set_test_pattern(%struct.camif_dev* %207, i32 %210)
  %212 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %213 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %212, i32 0, i32 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %198
  %219 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %220 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %221 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %224 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %227 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @camif_hw_set_effect(%struct.camif_dev* %219, i32 %222, i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %218, %198
  %231 = load i32, i32* @ST_VP_CONFIG, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %234 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = and i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %230, %191
  br label %238

238:                                              ; preds = %237, %58, %41
  %239 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  %240 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %239, i32 0, i32 0
  %241 = call i32 @spin_unlock(i32* %240)
  %242 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %242
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @camif_hw_clear_pending_irq(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_get_status(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_clear_fifo_overflow(%struct.camif_vp*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @camif_hw_disable_capture(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_enable_scaler(%struct.camif_vp*, i32) #1

declare dso_local i32 @camif_hw_set_lastirq(%struct.camif_vp*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @CISTATUS_FRAMECNT(i32) #1

declare dso_local %struct.camif_buffer* @camif_active_queue_peek(%struct.camif_vp*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.camif_buffer* @camif_pending_queue_pop(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_output_addr(%struct.camif_vp*, i32*, i32) #1

declare dso_local i32 @camif_active_queue_add(%struct.camif_vp*, %struct.camif_buffer*) #1

declare dso_local i32 @camif_prepare_dma_offset(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_camera_crop(%struct.camif_dev*) #1

declare dso_local i32 @camif_hw_set_scaler(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_flip(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_test_pattern(%struct.camif_dev*, i32) #1

declare dso_local i32 @camif_hw_set_effect(%struct.camif_dev*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
