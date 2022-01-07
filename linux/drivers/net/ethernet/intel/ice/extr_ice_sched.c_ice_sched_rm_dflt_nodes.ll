; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_rm_dflt_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_rm_dflt_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_4__*, %struct.ice_sched_node* }
%struct.TYPE_4__ = type { i64 }
%struct.ice_sched_node = type { i64, %struct.ice_sched_node**, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ICE_AQC_ELEM_TYPE_TC = common dso_local global i64 0, align 8
@ICE_AQC_ELEM_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_port_info*)* @ice_sched_rm_dflt_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_sched_rm_dflt_nodes(%struct.ice_port_info* %0) #0 {
  %2 = alloca %struct.ice_port_info*, align 8
  %3 = alloca %struct.ice_sched_node*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %2, align 8
  %4 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %5 = call i32 @ice_rm_dflt_leaf_node(%struct.ice_port_info* %4)
  %6 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %7 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %6, i32 0, i32 1
  %8 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  store %struct.ice_sched_node* %8, %struct.ice_sched_node** %3, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %11 = icmp ne %struct.ice_sched_node* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %14 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %17 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %15, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %12
  %23 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %24 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ICE_AQC_ELEM_TYPE_TC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %32 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ICE_AQC_ELEM_TYPE_ROOT_PORT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %40 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %41 = call i32 @ice_free_sched_node(%struct.ice_port_info* %39, %struct.ice_sched_node* %40)
  br label %54

42:                                               ; preds = %30, %22, %12
  %43 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %44 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  %49 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %50 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %49, i32 0, i32 1
  %51 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %50, align 8
  %52 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %51, i64 0
  %53 = load %struct.ice_sched_node*, %struct.ice_sched_node** %52, align 8
  store %struct.ice_sched_node* %53, %struct.ice_sched_node** %3, align 8
  br label %9

54:                                               ; preds = %47, %38, %9
  ret void
}

declare dso_local i32 @ice_rm_dflt_leaf_node(%struct.ice_port_info*) #1

declare dso_local i32 @ice_free_sched_node(%struct.ice_port_info*, %struct.ice_sched_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
