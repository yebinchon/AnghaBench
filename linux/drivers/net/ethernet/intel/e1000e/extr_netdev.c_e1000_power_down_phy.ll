; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_power_down_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_power_down_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_power_down_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_power_down_phy(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %3 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %7, align 8
  %9 = icmp ne i32 (%struct.TYPE_6__*)* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %15, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  %19 = call i32 %16(%struct.TYPE_6__* %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
