; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, i32, i32, i32, i32 }
%struct.flite_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ST_SENSOR_STREAM = common dso_local global i32 0, align 4
@ST_FLITE_RUN = common dso_local global i32 0, align 4
@ST_FLITE_OFF = common dso_local global i32 0, align 4
@ST_FLITE_STREAM = common dso_local global i32 0, align 4
@ST_FLITE_SUSPENDED = common dso_local global i32 0, align 4
@ST_FLITE_PENDING = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@set_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_lite*, i32)* @fimc_lite_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_reinit(%struct.fimc_lite* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_lite*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flite_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %9, i32 0, i32 2
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ST_SENSOR_STREAM, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @ST_FLITE_RUN, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @ST_FLITE_OFF, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @ST_FLITE_STREAM, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @ST_SENSOR_STREAM, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %32 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @ST_FLITE_SUSPENDED, align 4
  %39 = shl i32 1, %38
  %40 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %41 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %55

44:                                               ; preds = %2
  %45 = load i32, i32* @ST_FLITE_PENDING, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* @ST_FLITE_SUSPENDED, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %52 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44, %37
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %61 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %60, i32 0, i32 4
  %62 = call i32 @list_empty(i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %75

67:                                               ; preds = %65
  %68 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %69 = call %struct.flite_buffer* @fimc_lite_pending_queue_pop(%struct.fimc_lite* %68)
  store %struct.flite_buffer* %69, %struct.flite_buffer** %6, align 8
  %70 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %74 = call i32 @vb2_buffer_done(i32* %72, i32 %73)
  br label %56

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %97, %75
  %77 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %78 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %77, i32 0, i32 3
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %84 = call %struct.flite_buffer* @fimc_lite_active_queue_pop(%struct.fimc_lite* %83)
  store %struct.flite_buffer* %84, %struct.flite_buffer** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %89 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %90 = call i32 @fimc_lite_pending_queue_add(%struct.fimc_lite* %88, %struct.flite_buffer* %89)
  br label %97

91:                                               ; preds = %82
  %92 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %93 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %96 = call i32 @vb2_buffer_done(i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %87
  br label %76

98:                                               ; preds = %76
  %99 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %100 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %99, i32 0, i32 2
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %104 = call i32 @flite_hw_reset(%struct.fimc_lite* %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %113

108:                                              ; preds = %98
  %109 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %110 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %109, i32 0, i32 1
  %111 = load i32, i32* @set_stream, align 4
  %112 = call i32 @fimc_pipeline_call(i32* %110, i32 %111, i32 0)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %107
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.flite_buffer* @fimc_lite_pending_queue_pop(%struct.fimc_lite*) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local %struct.flite_buffer* @fimc_lite_active_queue_pop(%struct.fimc_lite*) #1

declare dso_local i32 @fimc_lite_pending_queue_add(%struct.fimc_lite*, %struct.flite_buffer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flite_hw_reset(%struct.fimc_lite*) #1

declare dso_local i32 @fimc_pipeline_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
