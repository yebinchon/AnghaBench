; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_epu_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_epu_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32* }
%struct.cx18_in_work_order = type { i32, %struct.cx18_mdl_ack*, %struct.cx18_mailbox }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.cx18_mailbox = type { i32*, i32 }
%struct.cx18_stream = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.cx18_mdl = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"Got DMA done notification for unknown/inactive handle %d, %s mailbox seq no %d\0A\00", align 1
@CX18_F_EWO_MB_STALE_UPON_RECEIPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"Fell behind! Ignoring stale mailbox with  inconsistent data. Lost MDL for mailbox seq no %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"DMA DONE for %s (MDL %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Could not find MDL %d for stream %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s recv bytesused = %d\0A\00", align 1
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epu_dma_done(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_in_work_order*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx18_mailbox*, align 8
  %9 = alloca %struct.cx18_mdl_ack*, align 8
  %10 = alloca %struct.cx18_stream*, align 8
  %11 = alloca %struct.cx18_mdl*, align 8
  %12 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %4, align 8
  %13 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %14 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %13, i32 0, i32 2
  store %struct.cx18_mailbox* %14, %struct.cx18_mailbox** %8, align 8
  %15 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %8, align 8
  %16 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.cx18*, %struct.cx18** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.cx18_stream* @cx18_handle_to_stream(%struct.cx18* %20, i32 %21)
  store %struct.cx18_stream* %22, %struct.cx18_stream** %10, align 8
  %23 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %24 = icmp eq %struct.cx18_stream* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %28 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CX18_F_EWO_MB_STALE_UPON_RECEIPT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %8, align 8
  %36 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i32, ...) @CX18_WARN(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %34, i32 %37)
  br label %205

39:                                               ; preds = %2
  %40 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %8, align 8
  %41 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %46 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %45, i32 0, i32 1
  %47 = load %struct.cx18_mdl_ack*, %struct.cx18_mdl_ack** %46, align 8
  store %struct.cx18_mdl_ack* %47, %struct.cx18_mdl_ack** %9, align 8
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %186, %39
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %191

52:                                               ; preds = %48
  %53 = load %struct.cx18_mdl_ack*, %struct.cx18_mdl_ack** %9, align 8
  %54 = getelementptr inbounds %struct.cx18_mdl_ack, %struct.cx18_mdl_ack* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %57 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CX18_F_EWO_MB_STALE_UPON_RECEIPT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %65 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %71 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %74 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = icmp slt i32 %69, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %68, %62
  %79 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %8, align 8
  %80 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i32, ...) @CX18_WARN(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %191

83:                                               ; preds = %68, %52
  %84 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.cx18_mdl_ack*, %struct.cx18_mdl_ack** %9, align 8
  %87 = getelementptr inbounds %struct.cx18_mdl_ack, %struct.cx18_mdl_ack* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.cx18_mdl* @cx18_queue_get_mdl(%struct.cx18_stream* %84, i32 %85, i32 %88)
  store %struct.cx18_mdl* %89, %struct.cx18_mdl** %11, align 8
  %90 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %91 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @CX18_DEBUG_HI_DMA(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %96 = icmp eq %struct.cx18_mdl* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %83
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %100 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @CX18_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %101)
  br label %186

103:                                              ; preds = %83
  %104 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %105 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %108 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CX18_DEBUG_HI_DMA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %112 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CX18_ENC_STREAM_TYPE_TS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %103
  %117 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %118 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %119 = call i32 @cx18_mdl_send_to_dvb(%struct.cx18_stream* %117, %struct.cx18_mdl* %118)
  %120 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %121 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %122 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %123 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %122, i32 0, i32 6
  %124 = call i32 @cx18_enqueue(%struct.cx18_stream* %120, %struct.cx18_mdl* %121, i32* %123)
  br label %185

125:                                              ; preds = %103
  %126 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %127 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %125
  %132 = load %struct.cx18*, %struct.cx18** %3, align 8
  %133 = getelementptr inbounds %struct.cx18, %struct.cx18* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.cx18*, %struct.cx18** %3, align 8
  %138 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %139 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %140 = call i32 @cx18_mdl_send_to_alsa(%struct.cx18* %137, %struct.cx18_stream* %138, %struct.cx18_mdl* %139)
  %141 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %142 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %143 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %144 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %143, i32 0, i32 6
  %145 = call i32 @cx18_enqueue(%struct.cx18_stream* %141, %struct.cx18_mdl* %142, i32* %144)
  br label %152

146:                                              ; preds = %131
  %147 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %148 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %149 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %150 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %149, i32 0, i32 5
  %151 = call i32 @cx18_enqueue(%struct.cx18_stream* %147, %struct.cx18_mdl* %148, i32* %150)
  br label %152

152:                                              ; preds = %146, %136
  br label %184

153:                                              ; preds = %125
  %154 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %155 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %161 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %162 = call i32 @cx18_mdl_send_to_videobuf(%struct.cx18_stream* %160, %struct.cx18_mdl* %161)
  %163 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %164 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %165 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %166 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %165, i32 0, i32 6
  %167 = call i32 @cx18_enqueue(%struct.cx18_stream* %163, %struct.cx18_mdl* %164, i32* %166)
  br label %183

168:                                              ; preds = %153
  %169 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %170 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %171 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %172 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %171, i32 0, i32 5
  %173 = call i32 @cx18_enqueue(%struct.cx18_stream* %169, %struct.cx18_mdl* %170, i32* %172)
  %174 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %175 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %168
  %180 = load %struct.cx18*, %struct.cx18** %3, align 8
  %181 = call i32 @cx18_stream_rotate_idx_mdls(%struct.cx18* %180)
  br label %182

182:                                              ; preds = %179, %168
  br label %183

183:                                              ; preds = %182, %159
  br label %184

184:                                              ; preds = %183, %152
  br label %185

185:                                              ; preds = %184, %116
  br label %186

186:                                              ; preds = %185, %97
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  %189 = load %struct.cx18_mdl_ack*, %struct.cx18_mdl_ack** %9, align 8
  %190 = getelementptr inbounds %struct.cx18_mdl_ack, %struct.cx18_mdl_ack* %189, i32 1
  store %struct.cx18_mdl_ack* %190, %struct.cx18_mdl_ack** %9, align 8
  br label %48

191:                                              ; preds = %78, %48
  %192 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %193 = call i32 @cx18_stream_load_fw_queue(%struct.cx18_stream* %192)
  %194 = load %struct.cx18*, %struct.cx18** %3, align 8
  %195 = getelementptr inbounds %struct.cx18, %struct.cx18* %194, i32 0, i32 0
  %196 = call i32 @wake_up(i32* %195)
  %197 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %198 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %205

201:                                              ; preds = %191
  %202 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %203 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %202, i32 0, i32 4
  %204 = call i32 @wake_up(i32* %203)
  br label %205

205:                                              ; preds = %25, %201, %191
  ret void
}

declare dso_local %struct.cx18_stream* @cx18_handle_to_stream(%struct.cx18*, i32) #1

declare dso_local i32 @CX18_WARN(i8*, i32, ...) #1

declare dso_local %struct.cx18_mdl* @cx18_queue_get_mdl(%struct.cx18_stream*, i32, i32) #1

declare dso_local i32 @CX18_DEBUG_HI_DMA(i8*, i32, i32) #1

declare dso_local i32 @cx18_mdl_send_to_dvb(%struct.cx18_stream*, %struct.cx18_mdl*) #1

declare dso_local i32 @cx18_enqueue(%struct.cx18_stream*, %struct.cx18_mdl*, i32*) #1

declare dso_local i32 @cx18_mdl_send_to_alsa(%struct.cx18*, %struct.cx18_stream*, %struct.cx18_mdl*) #1

declare dso_local i32 @cx18_mdl_send_to_videobuf(%struct.cx18_stream*, %struct.cx18_mdl*) #1

declare dso_local i32 @cx18_stream_rotate_idx_mdls(%struct.cx18*) #1

declare dso_local i32 @cx18_stream_load_fw_queue(%struct.cx18_stream*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
