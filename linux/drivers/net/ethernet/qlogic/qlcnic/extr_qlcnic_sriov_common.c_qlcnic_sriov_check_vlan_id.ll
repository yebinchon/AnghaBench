; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_check_vlan_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_check_vlan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i64)* @qlcnic_sriov_check_vlan_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_check_vlan_id(%struct.qlcnic_sriov* %0, %struct.qlcnic_vf_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_sriov*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %20 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_bh(i32* %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %40, %18
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %22

43:                                               ; preds = %38, %22
  %44 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
