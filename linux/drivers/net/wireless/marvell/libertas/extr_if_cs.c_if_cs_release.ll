; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.if_cs_card* }
%struct.if_cs_card = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @if_cs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_cs_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.if_cs_card*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.if_cs_card*, %struct.if_cs_card** %5, align 8
  store %struct.if_cs_card* %6, %struct.if_cs_card** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.if_cs_card* %10)
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %13 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %12)
  %14 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %15 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %20 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ioport_unmap(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.if_cs_card*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @ioport_unmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
