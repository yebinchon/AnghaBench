; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_83xx_cfg_default_mac_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_83xx_cfg_default_mac_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { %struct.TYPE_3__*, i32, i64*, i64 }
%struct.TYPE_3__ = type { i64 }

@QLC_PVID_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, i32)* @qlcnic_83xx_cfg_default_mac_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_cfg_default_mac_vlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_sriov*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %13, align 8
  store %struct.qlcnic_sriov* %14, %struct.qlcnic_sriov** %7, align 8
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %7, align 8
  %26 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %40, %struct.qlcnic_vf_info* %41, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %23

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %52 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %55 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QLC_PVID_MODE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %50
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %63 = call i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %67 = call i64 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %75

70:                                               ; preds = %65, %61
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %72 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %71, %struct.qlcnic_vf_info* %72, i64 0, i32 %73)
  br label %75

75:                                               ; preds = %69, %70, %50
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
