; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_print_topo_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_print_topo_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [150 x i8] c"Possible mis-configuration of the Ethernet port detected, please use the Intel(R) Ethernet Port Configuration Tool application to address the issue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*)* @ice_print_topo_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_print_topo_conflict(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %3 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %4 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %15 [
    i32 128, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netdev_info(i32 %13, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0))
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
