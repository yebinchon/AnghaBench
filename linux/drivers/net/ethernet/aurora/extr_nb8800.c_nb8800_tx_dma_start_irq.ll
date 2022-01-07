; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_tx_dma_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_tx_dma_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nb8800_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nb8800_tx_dma_start_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_tx_dma_start_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.nb8800_priv* %5, %struct.nb8800_priv** %3, align 8
  %6 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %7 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @__nb8800_tx_dma_start(%struct.net_device* %9)
  %11 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock(i32* %12)
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__nb8800_tx_dma_start(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
