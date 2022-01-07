; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_calc_vsi_child_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_calc_vsi_child_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, i32, i32*)* @ice_sched_calc_vsi_child_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_sched_calc_vsi_child_nodes(%struct.ice_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %13 = call i64 @ice_sched_get_qgrp_layer(%struct.ice_hw* %12)
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %15 = call i64 @ice_sched_get_vsi_layer(%struct.ice_hw* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %40, %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DIV_ROUND_UP(i32 %22, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1, %34 ]
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %8, align 8
  br label %17

43:                                               ; preds = %17
  ret void
}

declare dso_local i64 @ice_sched_get_qgrp_layer(%struct.ice_hw*) #1

declare dso_local i64 @ice_sched_get_vsi_layer(%struct.ice_hw*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
