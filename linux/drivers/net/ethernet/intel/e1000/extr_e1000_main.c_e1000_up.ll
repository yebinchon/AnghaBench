; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@E1000_ICS_LSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_up(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %4 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %4, i32 0, i32 3
  store %struct.e1000_hw* %5, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = call i32 @e1000_configure(%struct.e1000_adapter* %6)
  %8 = load i32, i32* @__E1000_DOWN, align 4
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 1
  %14 = call i32 @napi_enable(i32* %13)
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %15)
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_wake_queue(i32 %19)
  %21 = load i32, i32* @ICS, align 4
  %22 = load i32, i32* @E1000_ICS_LSC, align 4
  %23 = call i32 @ew32(i32 %21, i32 %22)
  ret i32 0
}

declare dso_local i32 @e1000_configure(%struct.e1000_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
