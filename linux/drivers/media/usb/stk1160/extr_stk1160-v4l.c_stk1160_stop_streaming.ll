; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@keep_buffers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"streaming stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*)* @stk1160_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_stop_streaming(%struct.stk1160* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk1160*, align 8
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  %4 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %5 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %4, i32 0, i32 0
  %6 = call i64 @mutex_lock_interruptible(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ERESTARTSYS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %13 = call i32 @stk1160_cancel_isoc(%struct.stk1160* %12)
  %14 = load i32, i32* @keep_buffers, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %18 = call i32 @stk1160_free_isoc(%struct.stk1160* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %21 = call i32 @stk1160_stop_hw(%struct.stk1160* %20)
  %22 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %23 = call i32 @stk1160_clear_queue(%struct.stk1160* %22)
  %24 = call i32 @stk1160_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %26 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @stk1160_cancel_isoc(%struct.stk1160*) #1

declare dso_local i32 @stk1160_free_isoc(%struct.stk1160*) #1

declare dso_local i32 @stk1160_stop_hw(%struct.stk1160*) #1

declare dso_local i32 @stk1160_clear_queue(%struct.stk1160*) #1

declare dso_local i32 @stk1160_dbg(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
