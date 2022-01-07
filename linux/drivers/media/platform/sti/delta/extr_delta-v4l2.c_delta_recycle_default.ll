; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_recycle_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_recycle_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32 }
%struct.delta_frame = type { i32 }

@DELTA_FRAME_DEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_recycle_default(%struct.delta_ctx* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %4, align 8
  %5 = load i32, i32* @DELTA_FRAME_DEC, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %8 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
