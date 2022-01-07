; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_del_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subscribed_event = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subscribed_event*)* @v4l2_ctrl_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_ctrl_del_event(%struct.v4l2_subscribed_event* %0) #0 {
  %2 = alloca %struct.v4l2_subscribed_event*, align 8
  %3 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_subscribed_event* %0, %struct.v4l2_subscribed_event** %2, align 8
  %4 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %8, i32 %11)
  store %struct.v4l2_ctrl* %12, %struct.v4l2_ctrl** %3, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = icmp eq %struct.v4l2_ctrl* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %17)
  %19 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %22)
  br label %24

24:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
