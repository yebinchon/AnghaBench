; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vlan_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vlan_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_vf_info = type { i32, i32, %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid VLAN operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_vf_info*, i32, i32)* @qlcnic_sriov_vlan_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_vlan_operation(%struct.qlcnic_vf_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_sriov*, align 8
  store %struct.qlcnic_vf_info* %0, %struct.qlcnic_vf_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %9, i32 0, i32 2
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %7, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %15, align 8
  store %struct.qlcnic_sriov* %16, %struct.qlcnic_sriov** %8, align 8
  %17 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %37 [
    i32 129, label %27
    i32 128, label %32
  ]

27:                                               ; preds = %22
  %28 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %29 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @qlcnic_sriov_add_vlan_id(%struct.qlcnic_sriov* %28, %struct.qlcnic_vf_info* %29, i32 %30)
  br label %42

32:                                               ; preds = %22
  %33 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %34 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @qlcnic_sriov_del_vlan_id(%struct.qlcnic_sriov* %33, %struct.qlcnic_vf_info* %34, i32 %35)
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %32, %27
  %43 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %44 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %46

46:                                               ; preds = %42, %21
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qlcnic_sriov_add_vlan_id(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

declare dso_local i32 @qlcnic_sriov_del_vlan_id(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
