; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_isr_even_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_isr_even_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { i32 }
%struct.vpbe_layer = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpbe_display*, %struct.vpbe_layer*)* @vpbe_isr_even_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpbe_isr_even_field(%struct.vpbe_display* %0, %struct.vpbe_layer* %1) #0 {
  %3 = alloca %struct.vpbe_display*, align 8
  %4 = alloca %struct.vpbe_layer*, align 8
  store %struct.vpbe_display* %0, %struct.vpbe_display** %3, align 8
  store %struct.vpbe_layer* %1, %struct.vpbe_layer** %4, align 8
  %5 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %6 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %9 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp eq %struct.TYPE_5__* %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %33

13:                                               ; preds = %2
  %14 = call i32 (...) @ktime_get_ns()
  %15 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %16 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %14, i32* %20, align 4
  %21 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %22 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %27 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %25, i32 %26)
  %28 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %29 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %32 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %31, i32 0, i32 1
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
