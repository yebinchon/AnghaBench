; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_handler_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_handler_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl_handler*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %3, align 8
  %5 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %6 = icmp eq %struct.v4l2_ctrl_handler* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mutex_lock(i32 %11)
  %13 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %14 = call i32 @__v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mutex_unlock(i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %8, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
