; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_add_guest_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_add_guest_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MAC_DEL = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_add_guest_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_add_guest_vlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %14, align 8
  store %struct.qlcnic_sriov* %15, %struct.qlcnic_sriov** %8, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = call i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %23 = call i64 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %21, %3
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %10, align 4
  %35 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %27
  %40 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %41 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @qlcnic_sriov_add_vlan_id(%struct.qlcnic_sriov* %40, %struct.qlcnic_vf_info* %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %83

44:                                               ; preds = %27
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %46 = call i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %50 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %51 = load i32, i32* @QLCNIC_MAC_DEL, align 4
  %52 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %49, %struct.qlcnic_vf_info* %50, i32 0, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %83

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %44
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %60 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %63 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %59, %struct.qlcnic_vf_info* %60, i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %68 = call i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %72 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %73 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %74 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %71, %struct.qlcnic_vf_info* %72, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %83

77:                                               ; preds = %58
  %78 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %79 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @qlcnic_sriov_add_vlan_id(%struct.qlcnic_sriov* %78, %struct.qlcnic_vf_info* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %75, %55, %39, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_add_vlan_id(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

declare dso_local i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
