; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, i32, i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"INT_EN reg : 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*)* @pch_gbe_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_irq_disable(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.pch_gbe_hw*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %4 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %4, i32 0, i32 3
  store %struct.pch_gbe_hw* %5, %struct.pch_gbe_hw** %3, align 8
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 2
  %8 = call i32 @atomic_inc(i32* %7)
  %9 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @iowrite32(i32 0, i32* %12)
  %14 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @ioread32(i32* %17)
  %19 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @synchronize_irq(i32 %21)
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %27 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @ioread32(i32* %29)
  %31 = call i32 @netdev_dbg(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
