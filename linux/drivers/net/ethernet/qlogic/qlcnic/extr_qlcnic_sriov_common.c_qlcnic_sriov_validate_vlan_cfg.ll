; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_validate_vlan_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_validate_vlan_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i64, i32, i32*, i64, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32 }

@QLC_GUEST_VLAN_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_sriov_validate_vlan_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_vlan_cfg(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca %struct.qlcnic_vf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %16, align 8
  store %struct.qlcnic_sriov* %17, %struct.qlcnic_sriov** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %21, align 8
  %23 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %22, i32 0, i32 4
  %24 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %23, align 8
  %25 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %24, i64 0
  store %struct.qlcnic_vf_info* %25, %struct.qlcnic_vf_info** %9, align 8
  %26 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %9, align 8
  %27 = call i32 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %29 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QLC_GUEST_VLAN_MODE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %106

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %36
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %41 = call i64 @qlcnic_83xx_vf_check(%struct.qlcnic_adapter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %106

49:                                               ; preds = %43, %39
  %50 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %51 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %9, align 8
  %52 = call i64 @qlcnic_sriov_validate_num_vlans(%struct.qlcnic_sriov* %50, %struct.qlcnic_vf_info* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %49
  %58 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %59 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %66 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %71 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %106

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %57
  br label %105

92:                                               ; preds = %36
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %97 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @qlcnic_sriov_check_vlan_id(%struct.qlcnic_sriov* %96, %struct.qlcnic_vf_info* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %92
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %91
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %101, %87, %54, %46, %33
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info*) #1

declare dso_local i64 @qlcnic_83xx_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_validate_num_vlans(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*) #1

declare dso_local i64 @qlcnic_sriov_check_vlan_id(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
