; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, i32, i64, i64 }

@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@QLCNIC_MBX_INTR_ENBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_sriov_pf_reset(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 0
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %3, align 8
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %12, align 8
  store %struct.qlcnic_sriov* %13, %struct.qlcnic_sriov** %4, align 8
  %14 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %41, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %22, i32 0, i32 1
  %24 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %24, i64 %26
  store %struct.qlcnic_vf_info* %27, %struct.qlcnic_vf_info** %5, align 8
  %28 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %33 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %32, i32 0, i32 1
  %34 = call i32 @cancel_work_sync(i32* %33)
  %35 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %36 = call i32 @__qlcnic_sriov_process_flr(%struct.qlcnic_vf_info* %35)
  %37 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %38 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %39 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %46 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @qlcnic_sriov_pf_reset_vport_handle(%struct.qlcnic_adapter* %45, i32 %48)
  %50 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %51 = load i32, i32* @QLCNIC_MBX_INTR_ENBL, align 4
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %53 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 %55, 8
  %57 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %50, i32 %51, i32 %56)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @__qlcnic_sriov_process_flr(%struct.qlcnic_vf_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_pf_reset_vport_handle(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCWRX(%struct.qlcnic_hardware_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
