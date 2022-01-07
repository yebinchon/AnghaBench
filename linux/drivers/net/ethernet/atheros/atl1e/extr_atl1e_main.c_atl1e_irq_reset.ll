; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32 }

@REG_ISR = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_irq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_irq_reset(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %3 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %3, i32 0, i32 1
  %5 = call i32 @atomic_set(i32* %4, i32 0)
  %6 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* @REG_ISR, align 4
  %9 = call i32 @AT_WRITE_REG(i32* %7, i32 %8, i32 0)
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* @REG_IMR, align 4
  %13 = call i32 @AT_WRITE_REG(i32* %11, i32 %12, i32 0)
  %14 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %14, i32 0, i32 0
  %16 = call i32 @AT_WRITE_FLUSH(i32* %15)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @AT_WRITE_FLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
