; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_get_tc_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_get_tc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_sched_node = type { i64 }
%struct.ice_port_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.ice_sched_node** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ice_sched_node* @ice_sched_get_tc_node(%struct.ice_port_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ice_sched_node*, align 8
  %4 = alloca %struct.ice_port_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %8 = icmp ne %struct.ice_port_info* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %11 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %3, align 8
  br label %51

15:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %19 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %16
  %25 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %26 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %29, i64 %30
  %32 = load %struct.ice_sched_node*, %struct.ice_sched_node** %31, align 8
  %33 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %39 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %42, i64 %43
  %45 = load %struct.ice_sched_node*, %struct.ice_sched_node** %44, align 8
  store %struct.ice_sched_node* %45, %struct.ice_sched_node** %3, align 8
  br label %51

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %16

50:                                               ; preds = %16
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %3, align 8
  br label %51

51:                                               ; preds = %50, %37, %14
  %52 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  ret %struct.ice_sched_node* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
