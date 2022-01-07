; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_free_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_free_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1_adapter = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1_adapter*)* @pt1_free_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_free_adapter(%struct.pt1_adapter* %0) #0 {
  %2 = alloca %struct.pt1_adapter*, align 8
  store %struct.pt1_adapter* %0, %struct.pt1_adapter** %2, align 8
  %3 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %6, align 8
  %8 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 %7(%struct.TYPE_3__* %10)
  %12 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %12, i32 0, i32 3
  %14 = call i32 @dvb_dmxdev_release(i32* %13)
  %15 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %15, i32 0, i32 2
  %17 = call i32 @dvb_dmx_release(%struct.TYPE_4__* %16)
  %18 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %18, i32 0, i32 1
  %20 = call i32 @dvb_unregister_adapter(i32* %19)
  %21 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @free_page(i64 %23)
  %25 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  %26 = call i32 @kfree(%struct.pt1_adapter* %25)
  ret void
}

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_4__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.pt1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
