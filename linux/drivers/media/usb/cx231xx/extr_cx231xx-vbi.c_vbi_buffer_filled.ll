; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_vbi_buffer_filled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_vbi_buffer_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.cx231xx_dmaqueue = type { i32 }
%struct.cx231xx_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx231xx*, %struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer*)* @vbi_buffer_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_buffer_filled(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_buffer* %2) #0 {
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.cx231xx_dmaqueue*, align 8
  %6 = alloca %struct.cx231xx_buffer*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %5, align 8
  store %struct.cx231xx_buffer* %2, %struct.cx231xx_buffer** %6, align 8
  %7 = load i32, i32* @VIDEOBUF_DONE, align 4
  %8 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 4
  %11 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 (...) @ktime_get_ns()
  %17 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @wake_up(i32* %30)
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
