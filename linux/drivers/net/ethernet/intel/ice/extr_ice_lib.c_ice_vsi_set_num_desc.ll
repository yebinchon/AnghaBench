; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_set_num_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_set_num_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ICE_DFLT_NUM_RX_DESC = common dso_local global i32 0, align 4
@ICE_DFLT_NUM_TX_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Not setting number of Tx/Rx descriptors for VSI type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*)* @ice_vsi_set_num_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_set_num_desc(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %3 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %4 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %13 [
    i32 128, label %6
    i32 129, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @ICE_DFLT_NUM_RX_DESC, align 4
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ICE_DFLT_NUM_TX_DESC, align 4
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %13, %6
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
