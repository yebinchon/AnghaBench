; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_adapter*)* @atl2_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_irq_disable(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %3 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %3, i32 0, i32 1
  %5 = load i32, i32* @REG_IMR, align 4
  %6 = call i32 @ATL2_WRITE_REG(i32* %4, i32 %5, i32 0)
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %7, i32 0, i32 1
  %9 = call i32 @ATL2_WRITE_FLUSH(i32* %8)
  %10 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @synchronize_irq(i32 %14)
  ret void
}

declare dso_local i32 @ATL2_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @ATL2_WRITE_FLUSH(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
