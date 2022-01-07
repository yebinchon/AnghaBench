; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_unregister_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_unregister_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stdemux = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stdemux*)* @unregister_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_dvb(%struct.stdemux* %0) #0 {
  %2 = alloca %struct.stdemux*, align 8
  store %struct.stdemux* %0, %struct.stdemux** %2, align 8
  %3 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %4 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %6, align 8
  %8 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %9 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %12 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %11, i32 0, i32 3
  %13 = call i32 %7(%struct.TYPE_4__* %10, i32* %12)
  %14 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %15 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %17, align 8
  %19 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %20 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %23 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %22, i32 0, i32 2
  %24 = call i32 %18(%struct.TYPE_4__* %21, i32* %23)
  %25 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %26 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %25, i32 0, i32 1
  %27 = call i32 @dvb_dmxdev_release(i32* %26)
  %28 = load %struct.stdemux*, %struct.stdemux** %2, align 8
  %29 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %28, i32 0, i32 0
  %30 = call i32 @dvb_dmx_release(%struct.TYPE_5__* %29)
  ret void
}

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
