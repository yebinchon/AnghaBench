; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.usbtv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@usbtv_audio_stop.setup = internal constant [3 x [2 x %struct.TYPE_6__]] [[2 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 765, i32 0 }, %struct.TYPE_6__ zeroinitializer], [2 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 768, i32 16 }, %struct.TYPE_6__ zeroinitializer], [2 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 770, i32 16 }, %struct.TYPE_6__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtv*)* @usbtv_audio_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_audio_stop(%struct.usbtv* %0) #0 {
  %2 = alloca %struct.usbtv*, align 8
  store %struct.usbtv* %0, %struct.usbtv** %2, align 8
  %3 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %4 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %3, i32 0, i32 0
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %9 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = call i32 @usb_kill_urb(%struct.TYPE_7__* %10)
  %12 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %13 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %19 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 @usb_free_urb(%struct.TYPE_7__* %20)
  %22 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %23 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %22, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %23, align 8
  br label %24

24:                                               ; preds = %7, %1
  %25 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_6__** bitcast ([3 x [2 x %struct.TYPE_6__]]* @usbtv_audio_stop.setup to %struct.TYPE_6__**))
  %27 = call i32 @usbtv_set_regs(%struct.usbtv* %25, %struct.TYPE_6__** bitcast ([3 x [2 x %struct.TYPE_6__]]* @usbtv_audio_stop.setup to %struct.TYPE_6__**), i32 %26)
  ret i32 0
}

declare dso_local i32 @usb_kill_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @usbtv_set_regs(%struct.usbtv*, %struct.TYPE_6__**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
