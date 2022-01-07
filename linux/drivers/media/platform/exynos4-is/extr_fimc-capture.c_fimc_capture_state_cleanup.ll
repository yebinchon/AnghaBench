; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_state_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_state_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, i32, %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { i32, i64, i32, i32 }
%struct.fimc_vid_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ST_CAPT_ISP_STREAM = common dso_local global i32 0, align 4
@ST_CAPT_RUN = common dso_local global i32 0, align 4
@ST_CAPT_SHUT = common dso_local global i32 0, align 4
@ST_CAPT_STREAM = common dso_local global i32 0, align 4
@ST_CAPT_SUSPENDED = common dso_local global i32 0, align 4
@ST_CAPT_PEND = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@set_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*, i32)* @fimc_capture_state_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_capture_state_cleanup(%struct.fimc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_vid_cap*, align 8
  %7 = alloca %struct.fimc_vid_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %10, i32 0, i32 2
  store %struct.fimc_vid_cap* %11, %struct.fimc_vid_cap** %6, align 8
  %12 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ST_CAPT_ISP_STREAM, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @ST_CAPT_RUN, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @ST_CAPT_SHUT, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @ST_CAPT_STREAM, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @ST_CAPT_ISP_STREAM, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %35 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @ST_CAPT_SUSPENDED, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %58

47:                                               ; preds = %2
  %48 = load i32, i32* @ST_CAPT_PEND, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @ST_CAPT_SUSPENDED, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %47, %40
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %64 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %63, i32 0, i32 3
  %65 = call i32 @list_empty(i32* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %59
  %69 = phi i1 [ false, %59 ], [ %67, %62 ]
  br i1 %69, label %70, label %78

70:                                               ; preds = %68
  %71 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %72 = call %struct.fimc_vid_buffer* @fimc_pending_queue_pop(%struct.fimc_vid_cap* %71)
  store %struct.fimc_vid_buffer* %72, %struct.fimc_vid_buffer** %7, align 8
  %73 = load %struct.fimc_vid_buffer*, %struct.fimc_vid_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.fimc_vid_buffer, %struct.fimc_vid_buffer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %77 = call i32 @vb2_buffer_done(i32* %75, i32 %76)
  br label %59

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %100, %78
  %80 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %81 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %80, i32 0, i32 2
  %82 = call i32 @list_empty(i32* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %87 = call %struct.fimc_vid_buffer* @fimc_active_queue_pop(%struct.fimc_vid_cap* %86)
  store %struct.fimc_vid_buffer* %87, %struct.fimc_vid_buffer** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %92 = load %struct.fimc_vid_buffer*, %struct.fimc_vid_buffer** %7, align 8
  %93 = call i32 @fimc_pending_queue_add(%struct.fimc_vid_cap* %91, %struct.fimc_vid_buffer* %92)
  br label %100

94:                                               ; preds = %85
  %95 = load %struct.fimc_vid_buffer*, %struct.fimc_vid_buffer** %7, align 8
  %96 = getelementptr inbounds %struct.fimc_vid_buffer, %struct.fimc_vid_buffer* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %99 = call i32 @vb2_buffer_done(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  br label %79

101:                                              ; preds = %79
  %102 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %103 = call i32 @fimc_hw_reset(%struct.fimc_dev* %102)
  %104 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %105 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %107 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %106, i32 0, i32 1
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %114 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %113, i32 0, i32 0
  %115 = load i32, i32* @set_stream, align 4
  %116 = call i32 @fimc_pipeline_call(i32* %114, i32 %115, i32 0)
  store i32 %116, i32* %3, align 4
  br label %118

117:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %112
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.fimc_vid_buffer* @fimc_pending_queue_pop(%struct.fimc_vid_cap*) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local %struct.fimc_vid_buffer* @fimc_active_queue_pop(%struct.fimc_vid_cap*) #1

declare dso_local i32 @fimc_pending_queue_add(%struct.fimc_vid_cap*, %struct.fimc_vid_buffer*) #1

declare dso_local i32 @fimc_hw_reset(%struct.fimc_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fimc_pipeline_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
