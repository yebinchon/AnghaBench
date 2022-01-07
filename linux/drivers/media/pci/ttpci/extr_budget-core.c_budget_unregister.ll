; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_budget_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_budget_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { %struct.dvb_demux, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget*)* @budget_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @budget_unregister(%struct.budget* %0) #0 {
  %2 = alloca %struct.budget*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  store %struct.budget* %0, %struct.budget** %2, align 8
  %4 = load %struct.budget*, %struct.budget** %2, align 8
  %5 = getelementptr inbounds %struct.budget, %struct.budget* %4, i32 0, i32 0
  store %struct.dvb_demux* %5, %struct.dvb_demux** %3, align 8
  %6 = load %struct.budget*, %struct.budget** %2, align 8
  %7 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %6)
  %8 = load %struct.budget*, %struct.budget** %2, align 8
  %9 = getelementptr inbounds %struct.budget, %struct.budget* %8, i32 0, i32 4
  %10 = call i32 @dvb_net_release(i32* %9)
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %13, align 8
  %15 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %15, i32 0, i32 0
  %17 = call i32 %14(%struct.TYPE_4__* %16)
  %18 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %20, align 8
  %22 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %22, i32 0, i32 0
  %24 = load %struct.budget*, %struct.budget** %2, align 8
  %25 = getelementptr inbounds %struct.budget, %struct.budget* %24, i32 0, i32 3
  %26 = call i32 %21(%struct.TYPE_4__* %23, i32* %25)
  %27 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %29, align 8
  %31 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %31, i32 0, i32 0
  %33 = load %struct.budget*, %struct.budget** %2, align 8
  %34 = getelementptr inbounds %struct.budget, %struct.budget* %33, i32 0, i32 2
  %35 = call i32 %30(%struct.TYPE_4__* %32, i32* %34)
  %36 = load %struct.budget*, %struct.budget** %2, align 8
  %37 = getelementptr inbounds %struct.budget, %struct.budget* %36, i32 0, i32 1
  %38 = call i32 @dvb_dmxdev_release(i32* %37)
  %39 = load %struct.budget*, %struct.budget** %2, align 8
  %40 = getelementptr inbounds %struct.budget, %struct.budget* %39, i32 0, i32 0
  %41 = call i32 @dvb_dmx_release(%struct.dvb_demux* %40)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
