; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_root_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_sched_node*, %struct.ice_hw* }
%struct.ice_sched_node = type { i32, i32 }
%struct.ice_hw = type { i32* }
%struct.ice_aqc_txsched_elem_data = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, %struct.ice_aqc_txsched_elem_data*)* @ice_sched_add_root_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_add_root_node(%struct.ice_port_info* %0, %struct.ice_aqc_txsched_elem_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_port_info*, align 8
  %5 = alloca %struct.ice_aqc_txsched_elem_data*, align 8
  %6 = alloca %struct.ice_sched_node*, align 8
  %7 = alloca %struct.ice_hw*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %4, align 8
  store %struct.ice_aqc_txsched_elem_data* %1, %struct.ice_aqc_txsched_elem_data** %5, align 8
  %8 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %9 = icmp ne %struct.ice_port_info* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %11, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %14 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %13, i32 0, i32 1
  %15 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  store %struct.ice_hw* %15, %struct.ice_hw** %7, align 8
  %16 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %17 = call i32 @ice_hw_to_dev(%struct.ice_hw* %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ice_sched_node* @devm_kzalloc(i32 %17, i32 8, i32 %18)
  store %struct.ice_sched_node* %19, %struct.ice_sched_node** %6, align 8
  %20 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %21 = icmp ne %struct.ice_sched_node* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %12
  %25 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %26 = call i32 @ice_hw_to_dev(%struct.ice_hw* %25)
  %27 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %28 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @devm_kcalloc(i32 %26, i32 %31, i32 8, i32 %32)
  %34 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %35 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %37 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %24
  %41 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %42 = call i32 @ice_hw_to_dev(%struct.ice_hw* %41)
  %43 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %44 = call i32 @devm_kfree(i32 %42, %struct.ice_sched_node* %43)
  %45 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %24
  %47 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %48 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %47, i32 0, i32 0
  %49 = load %struct.ice_aqc_txsched_elem_data*, %struct.ice_aqc_txsched_elem_data** %5, align 8
  %50 = call i32 @memcpy(i32* %48, %struct.ice_aqc_txsched_elem_data* %49, i32 4)
  %51 = load %struct.ice_sched_node*, %struct.ice_sched_node** %6, align 8
  %52 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %53 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %52, i32 0, i32 0
  store %struct.ice_sched_node* %51, %struct.ice_sched_node** %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %40, %22, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ice_sched_node* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_sched_node*) #1

declare dso_local i32 @memcpy(i32*, %struct.ice_aqc_txsched_elem_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
