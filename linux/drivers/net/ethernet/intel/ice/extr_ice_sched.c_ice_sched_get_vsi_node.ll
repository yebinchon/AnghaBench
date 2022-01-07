; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_get_vsi_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_get_vsi_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sched_node = type { i64, %struct.ice_sched_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_sched_node* (%struct.ice_hw*, %struct.ice_sched_node*, i64)* @ice_sched_get_vsi_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_sched_node* @ice_sched_get_vsi_node(%struct.ice_hw* %0, %struct.ice_sched_node* %1, i64 %2) #0 {
  %4 = alloca %struct.ice_sched_node*, align 8
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_sched_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_sched_node*, align 8
  %9 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store %struct.ice_sched_node* %1, %struct.ice_sched_node** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %11 = call i32 @ice_sched_get_vsi_layer(%struct.ice_hw* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.ice_sched_node* @ice_sched_get_first_node(i32 %14, %struct.ice_sched_node* %15, i32 %16)
  store %struct.ice_sched_node* %17, %struct.ice_sched_node** %8, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %20 = icmp ne %struct.ice_sched_node* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %23 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  store %struct.ice_sched_node* %28, %struct.ice_sched_node** %4, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %31 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %30, i32 0, i32 1
  %32 = load %struct.ice_sched_node*, %struct.ice_sched_node** %31, align 8
  store %struct.ice_sched_node* %32, %struct.ice_sched_node** %8, align 8
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  store %struct.ice_sched_node* %34, %struct.ice_sched_node** %4, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  ret %struct.ice_sched_node* %36
}

declare dso_local i32 @ice_sched_get_vsi_layer(%struct.ice_hw*) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_first_node(i32, %struct.ice_sched_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
