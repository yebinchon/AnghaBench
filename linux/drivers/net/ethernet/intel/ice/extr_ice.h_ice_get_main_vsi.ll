; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice.h_ice_get_main_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice.h_ice_get_main_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32 }
%struct.ice_pf = type { %struct.ice_vsi** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_vsi* (%struct.ice_pf*)* @ice_get_main_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %4 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %5 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %4, i32 0, i32 0
  %6 = load %struct.ice_vsi**, %struct.ice_vsi*** %5, align 8
  %7 = icmp ne %struct.ice_vsi** %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 0
  %11 = load %struct.ice_vsi**, %struct.ice_vsi*** %10, align 8
  %12 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %11, i64 0
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  store %struct.ice_vsi* %13, %struct.ice_vsi** %2, align 8
  br label %15

14:                                               ; preds = %1
  store %struct.ice_vsi* null, %struct.ice_vsi** %2, align 8
  br label %15

15:                                               ; preds = %14, %8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  ret %struct.ice_vsi* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
