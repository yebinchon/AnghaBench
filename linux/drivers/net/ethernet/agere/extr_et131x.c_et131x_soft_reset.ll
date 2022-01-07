; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ET_MAC_CFG1_SOFT_RESET = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SIM_RESET = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RESET_RXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RESET_TXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RESET_RXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RESET_TXFUNC = common dso_local global i32 0, align 4
@ET_RESET_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_soft_reset(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %4 = load i32, i32* @ET_MAC_CFG1_SOFT_RESET, align 4
  %5 = load i32, i32* @ET_MAC_CFG1_SIM_RESET, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @ET_MAC_CFG1_RESET_RXMC, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ET_MAC_CFG1_RESET_TXMC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ET_MAC_CFG1_RESET_RXFUNC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ET_MAC_CFG1_RESET_TXFUNC, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @writel(i32 %15, i32* %20)
  %22 = load i32, i32* @ET_RESET_ALL, align 4
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @writel(i32 %23, i32* %28)
  %30 = load i32, i32* @ET_MAC_CFG1_RESET_RXMC, align 4
  %31 = load i32, i32* @ET_MAC_CFG1_RESET_TXMC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ET_MAC_CFG1_RESET_RXFUNC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ET_MAC_CFG1_RESET_TXFUNC, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @writel(i32 %37, i32* %42)
  %44 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @writel(i32 0, i32* %48)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
