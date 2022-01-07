; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*)* @e100_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_down(%struct.nic* %0) #0 {
  %2 = alloca %struct.nic*, align 8
  store %struct.nic* %0, %struct.nic** %2, align 8
  %3 = load %struct.nic*, %struct.nic** %2, align 8
  %4 = getelementptr inbounds %struct.nic, %struct.nic* %3, i32 0, i32 3
  %5 = call i32 @napi_disable(i32* %4)
  %6 = load %struct.nic*, %struct.nic** %2, align 8
  %7 = getelementptr inbounds %struct.nic, %struct.nic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @netif_stop_queue(i32 %8)
  %10 = load %struct.nic*, %struct.nic** %2, align 8
  %11 = call i32 @e100_hw_reset(%struct.nic* %10)
  %12 = load %struct.nic*, %struct.nic** %2, align 8
  %13 = getelementptr inbounds %struct.nic, %struct.nic* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nic*, %struct.nic** %2, align 8
  %18 = getelementptr inbounds %struct.nic, %struct.nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @free_irq(i32 %16, i32 %19)
  %21 = load %struct.nic*, %struct.nic** %2, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 1
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.nic*, %struct.nic** %2, align 8
  %25 = getelementptr inbounds %struct.nic, %struct.nic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netif_carrier_off(i32 %26)
  %28 = load %struct.nic*, %struct.nic** %2, align 8
  %29 = call i32 @e100_clean_cbs(%struct.nic* %28)
  %30 = load %struct.nic*, %struct.nic** %2, align 8
  %31 = call i32 @e100_rx_clean_list(%struct.nic* %30)
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @e100_hw_reset(%struct.nic*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @e100_clean_cbs(%struct.nic*) #1

declare dso_local i32 @e100_rx_clean_list(%struct.nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
