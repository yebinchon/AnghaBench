; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_isr_reg_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_isr_reg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.vfe_output }
%struct.vfe_output = type { i32, i32**, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.vfe_device*, i32)* }

@VFE_OUTPUT_STOPPING = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VFE_OUTPUT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32)* @vfe_isr_reg_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_isr_reg_update(%struct.vfe_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfe_output*, align 8
  %6 = alloca i64, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %8 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %14, align 8
  %16 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %15(%struct.vfe_device* %16, i32 %17)
  %19 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %20 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %struct.vfe_output* %25, %struct.vfe_output** %5, align 8
  %26 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %27 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %32 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %34 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %33, i32 0, i32 3
  %35 = call i32 @complete(i32* %34)
  %36 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %37 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %151

40:                                               ; preds = %2
  %41 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %42 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VFE_OUTPUT_STOPPING, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %146

46:                                               ; preds = %40
  %47 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %48 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %53 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %58 = call i32 @vb2_buffer_done(i32* %56, i32 %57)
  %59 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %60 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %59, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %60, align 8
  br label %61

61:                                               ; preds = %51, %46
  %62 = load i32, i32* @VFE_OUTPUT_IDLE, align 4
  %63 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %64 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %66 = call i8* @vfe_buf_get_pending(%struct.vfe_output* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %69 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  store i32* %67, i32** %71, align 8
  %72 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %73 = call i8* @vfe_buf_get_pending(%struct.vfe_output* %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %76 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* %74, i32** %78, align 8
  %79 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %80 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %106, label %85

85:                                               ; preds = %61
  %86 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %87 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %94 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %99 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  store i32* %97, i32** %101, align 8
  %102 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %103 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %92, %85, %61
  %107 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %108 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %115 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %114, i32 0, i32 0
  store i32 128, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %118 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %125 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %124, i32 0, i32 0
  store i32 129, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %116
  %127 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %128 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %138 [
    i32 128, label %130
    i32 129, label %134
  ]

130:                                              ; preds = %126
  %131 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %132 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %133 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %131, %struct.vfe_output* %132, i32 2)
  br label %142

134:                                              ; preds = %126
  %135 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %136 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %137 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %135, %struct.vfe_output* %136, i32 3)
  br label %142

138:                                              ; preds = %126
  %139 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %140 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %141 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %139, %struct.vfe_output* %140, i32 0)
  br label %142

142:                                              ; preds = %138, %134, %130
  %143 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %144 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %145 = call i32 @vfe_output_init_addrs(%struct.vfe_device* %143, %struct.vfe_output* %144, i32 1)
  br label %146

146:                                              ; preds = %142, %40
  %147 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %148 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %147, i32 0, i32 0
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  br label %151

151:                                              ; preds = %146, %30
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i8* @vfe_buf_get_pending(%struct.vfe_output*) #1

declare dso_local i32 @vfe_output_frame_drop(%struct.vfe_device*, %struct.vfe_output*, i32) #1

declare dso_local i32 @vfe_output_init_addrs(%struct.vfe_device*, %struct.vfe_output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
