; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.pcan_pccard*, i32 }
%struct.pcan_pccard = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @pcan_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_free(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcan_pccard*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  store %struct.pcan_pccard* %6, %struct.pcan_pccard** %3, align 8
  %7 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %8 = icmp ne %struct.pcan_pccard* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.pcan_pccard* %14)
  %16 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %17 = call i32 @pcan_stop_led_timer(%struct.pcan_pccard* %16)
  %18 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %19 = call i32 @pcan_free_channels(%struct.pcan_pccard* %18)
  %20 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %21 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ioport_unmap(i32 %22)
  %24 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %25 = call i32 @kfree(%struct.pcan_pccard* %24)
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 0
  store %struct.pcan_pccard* null, %struct.pcan_pccard** %27, align 8
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.pcan_pccard*) #1

declare dso_local i32 @pcan_stop_led_timer(%struct.pcan_pccard*) #1

declare dso_local i32 @pcan_free_channels(%struct.pcan_pccard*) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @kfree(%struct.pcan_pccard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
