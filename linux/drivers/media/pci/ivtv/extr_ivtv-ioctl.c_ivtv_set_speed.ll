; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@CX2341X_DEC_STEP_VIDEO = common dso_local global i32 0, align 4
@CX2341X_DEC_PAUSE_PLAYBACK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CX2341X_DEC_SET_PLAYBACK_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Setting Speed to 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_set_speed(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ true, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @wait, align 4
  %24 = call i32 @DEFINE_WAIT(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1000, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %241

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %53 = load i32, i32* @CX2341X_DEC_STEP_VIDEO, align 4
  %54 = call i32 @ivtv_vapi(%struct.ivtv* %52, i32 %53, i32 1, i32 0)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %57 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %241

58:                                               ; preds = %41, %38
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -1000, i32 1000
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 1000
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, -1000
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ true, %66 ], [ %71, %69 ]
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 -2147483648, i32 0
  %76 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %75, i32* %76, align 16
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 1000
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, -1500
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi i1 [ true, %72 ], [ %81, %79 ]
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1073741824, i32 0
  %86 = getelementptr inbounds i32, i32* %14, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 16
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 3, i32 7
  %97 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %99 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @v4l2_ctrl_g_ctrl(i32 %101)
  %103 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 1500
  br i1 %105, label %109, label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 500
  br i1 %108, label %109, label %113

109:                                              ; preds = %106, %82
  %110 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %111 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  br label %114

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi i32 [ %112, %109 ], [ 0, %113 ]
  %116 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %115, i32* %116, align 16
  %117 = getelementptr inbounds i32, i32* %14, i64 5
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %14, i64 6
  store i32 0, i32* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 1500
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, -1500
  br i1 %123, label %124, label %128

124:                                              ; preds = %121, %114
  %125 = getelementptr inbounds i32, i32* %14, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = or i32 %126, 1
  store i32 %127, i32* %125, align 16
  br label %165

128:                                              ; preds = %121
  %129 = load i32, i32* %5, align 4
  %130 = icmp eq i32 %129, 2000
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, -2000
  br i1 %133, label %134, label %138

134:                                              ; preds = %131, %128
  %135 = getelementptr inbounds i32, i32* %14, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = or i32 %136, 2
  store i32 %137, i32* %135, align 16
  br label %164

138:                                              ; preds = %131
  %139 = load i32, i32* %5, align 4
  %140 = icmp sgt i32 %139, -1000
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = sdiv i32 -1000, %145
  %147 = getelementptr inbounds i32, i32* %14, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 16
  br label %163

150:                                              ; preds = %141, %138
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 1000
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %5, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* %5, align 4
  %158 = sdiv i32 1000, %157
  %159 = getelementptr inbounds i32, i32* %14, i64 0
  %160 = load i32, i32* %159, align 16
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 16
  br label %162

162:                                              ; preds = %156, %153, %150
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %134
  br label %165

165:                                              ; preds = %164, %124
  %166 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %167 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %166, i32 0, i32 5
  %168 = call i64 @atomic_read(i32* %167)
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %226

170:                                              ; preds = %165
  store i32 0, i32* %10, align 4
  %171 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %172 = load i32, i32* @CX2341X_DEC_PAUSE_PLAYBACK, align 4
  %173 = call i32 @ivtv_vapi(%struct.ivtv* %171, i32 %172, i32 1, i32 0)
  %174 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %175 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %174, i32 0, i32 2
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %178 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %177, i32 0, i32 3
  %179 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %180 = call i32 @prepare_to_wait(i32* %178, i32* @wait, i32 %179)
  br label %181

181:                                              ; preds = %193, %170
  %182 = load i32, i32* @IVTV_F_I_DMA, align 4
  %183 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %184 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %183, i32 0, i32 4
  %185 = call i64 @test_bit(i32 %182, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = load i32, i32* @current, align 4
  %189 = call i32 @signal_pending(i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %195

193:                                              ; preds = %187
  store i32 0, i32* %10, align 4
  %194 = call i32 (...) @schedule()
  br label %181

195:                                              ; preds = %192, %181
  %196 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %197 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %196, i32 0, i32 3
  %198 = call i32 @finish_wait(i32* %197, i32* @wait)
  %199 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %200 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %199, i32 0, i32 2
  %201 = call i32 @mutex_lock(i32* %200)
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = load i32, i32* @EINTR, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %241

207:                                              ; preds = %195
  %208 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %209 = load i32, i32* @CX2341X_DEC_SET_PLAYBACK_SPEED, align 4
  %210 = call i32 @ivtv_api(%struct.ivtv* %208, i32 %209, i32 7, i32* %14)
  %211 = getelementptr inbounds i32, i32* %14, i64 0
  %212 = load i32, i32* %211, align 16
  %213 = getelementptr inbounds i32, i32* %14, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds i32, i32* %14, i64 2
  %216 = load i32, i32* %215, align 8
  %217 = getelementptr inbounds i32, i32* %14, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds i32, i32* %14, i64 4
  %220 = load i32, i32* %219, align 16
  %221 = getelementptr inbounds i32, i32* %14, i64 5
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds i32, i32* %14, i64 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %212, i32 %214, i32 %216, i32 %218, i32 %220, i32 %222, i32 %224)
  br label %226

226:                                              ; preds = %207, %165
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32, i32* %5, align 4
  %231 = icmp slt i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 -1, i32 1
  store i32 %233, i32* %5, align 4
  %234 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %235 = load i32, i32* @CX2341X_DEC_STEP_VIDEO, align 4
  %236 = call i32 @ivtv_vapi(%struct.ivtv* %234, i32 %235, i32 1, i32 0)
  br label %237

237:                                              ; preds = %229, %226
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %240 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %241

241:                                              ; preds = %237, %204, %51, %37
  %242 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEFINE_WAIT(i32) #2

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @signal_pending(i32) #2

declare dso_local i32 @schedule(...) #2

declare dso_local i32 @finish_wait(i32*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ivtv_api(%struct.ivtv*, i32, i32, i32*) #2

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
