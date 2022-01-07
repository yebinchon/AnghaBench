; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_ref = type { %struct.v4l2_ctrl* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl_handler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ctrl_ref*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.v4l2_ctrl_ref* @find_ref_lock(%struct.v4l2_ctrl_handler* %6, i32 %7)
  store %struct.v4l2_ctrl_ref* %8, %struct.v4l2_ctrl_ref** %5, align 8
  %9 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %5, align 8
  %10 = icmp ne %struct.v4l2_ctrl_ref* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %12, i32 0, i32 0
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.v4l2_ctrl* [ %14, %11 ], [ null, %15 ]
  ret %struct.v4l2_ctrl* %17
}

declare dso_local %struct.v4l2_ctrl_ref* @find_ref_lock(%struct.v4l2_ctrl_handler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
