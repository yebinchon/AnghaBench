; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_rm_dflt_leaf_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_rm_dflt_leaf_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32, %struct.ice_sched_node* }
%struct.ice_sched_node = type { i32, %struct.TYPE_3__, %struct.ice_sched_node**, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ICE_AQC_ELEM_TYPE_LEAF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_port_info*)* @ice_rm_dflt_leaf_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_rm_dflt_leaf_node(%struct.ice_port_info* %0) #0 {
  %2 = alloca %struct.ice_port_info*, align 8
  %3 = alloca %struct.ice_sched_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %2, align 8
  %6 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %7 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %6, i32 0, i32 1
  %8 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  store %struct.ice_sched_node* %8, %struct.ice_sched_node** %3, align 8
  br label %9

9:                                                ; preds = %18, %1
  %10 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %11 = icmp ne %struct.ice_sched_node* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %14 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %20 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %19, i32 0, i32 2
  %21 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %20, align 8
  %22 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %21, i64 0
  %23 = load %struct.ice_sched_node*, %struct.ice_sched_node** %22, align 8
  store %struct.ice_sched_node* %23, %struct.ice_sched_node** %3, align 8
  br label %9

24:                                               ; preds = %17, %9
  %25 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %26 = icmp ne %struct.ice_sched_node* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %29 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICE_AQC_ELEM_TYPE_LEAF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %37 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le32_to_cpu(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %42 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %45 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ice_sched_remove_elems(i32 %43, i32 %46, i32 1, i32* %4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %35
  %51 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %52 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  %53 = call i32 @ice_free_sched_node(%struct.ice_port_info* %51, %struct.ice_sched_node* %52)
  br label %54

54:                                               ; preds = %50, %35
  br label %55

55:                                               ; preds = %54, %27, %24
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ice_sched_remove_elems(i32, i32, i32, i32*) #1

declare dso_local i32 @ice_free_sched_node(%struct.ice_port_info*, %struct.ice_sched_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
