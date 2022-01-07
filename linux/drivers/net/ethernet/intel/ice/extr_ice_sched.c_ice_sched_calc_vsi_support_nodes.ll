; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_calc_vsi_support_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_calc_vsi_support_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32, i64*, i32 }
%struct.ice_sched_node = type { i64, %struct.ice_sched_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, %struct.ice_sched_node*, i32*)* @ice_sched_calc_vsi_support_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_sched_calc_vsi_support_nodes(%struct.ice_hw* %0, %struct.ice_sched_node* %1, i32* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_sched_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ice_sched_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_sched_node* %1, %struct.ice_sched_node** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %11 = call i32 @ice_sched_get_vsi_layer(%struct.ice_hw* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %74, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %13
  %20 = load %struct.ice_sched_node*, %struct.ice_sched_node** %5, align 8
  %21 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %19
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %73

35:                                               ; preds = %24
  %36 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ice_sched_node*, %struct.ice_sched_node** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.ice_sched_node* @ice_sched_get_first_node(i32 %38, %struct.ice_sched_node* %39, i32 %40)
  store %struct.ice_sched_node* %41, %struct.ice_sched_node** %7, align 8
  br label %42

42:                                               ; preds = %58, %35
  %43 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %44 = icmp ne %struct.ice_sched_node* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %47 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %62

58:                                               ; preds = %45
  %59 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %60 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %59, i32 0, i32 1
  %61 = load %struct.ice_sched_node*, %struct.ice_sched_node** %60, align 8
  store %struct.ice_sched_node* %61, %struct.ice_sched_node** %7, align 8
  br label %42

62:                                               ; preds = %57, %42
  %63 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %64 = icmp ne %struct.ice_sched_node* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %77

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %28
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  br label %13

77:                                               ; preds = %65, %13
  ret void
}

declare dso_local i32 @ice_sched_get_vsi_layer(%struct.ice_hw*) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_first_node(i32, %struct.ice_sched_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
