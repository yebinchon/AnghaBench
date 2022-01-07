; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_find_node_in_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_find_node_in_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sched_node = type { i64, i64, %struct.ice_sched_node** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_sched_node*, %struct.ice_sched_node*)* @ice_sched_find_node_in_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_find_node_in_subtree(%struct.ice_hw* %0, %struct.ice_sched_node* %1, %struct.ice_sched_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_sched_node*, align 8
  %7 = alloca %struct.ice_sched_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ice_sched_node*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store %struct.ice_sched_node* %1, %struct.ice_sched_node** %6, align 8
  store %struct.ice_sched_node* %2, %struct.ice_sched_node** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %44, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %13 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %18 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %17, i32 0, i32 2
  %19 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %19, i64 %20
  %22 = load %struct.ice_sched_node*, %struct.ice_sched_node** %21, align 8
  store %struct.ice_sched_node* %22, %struct.ice_sched_node** %9, align 8
  %23 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %24 = load %struct.ice_sched_node*, %struct.ice_sched_node** %9, align 8
  %25 = icmp eq %struct.ice_sched_node* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %48

27:                                               ; preds = %16
  %28 = load %struct.ice_sched_node*, %struct.ice_sched_node** %9, align 8
  %29 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %32 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %48

36:                                               ; preds = %27
  %37 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %38 = load %struct.ice_sched_node*, %struct.ice_sched_node** %9, align 8
  %39 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %40 = call i32 @ice_sched_find_node_in_subtree(%struct.ice_hw* %37, %struct.ice_sched_node* %38, %struct.ice_sched_node* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %10

47:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %42, %35, %26
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
