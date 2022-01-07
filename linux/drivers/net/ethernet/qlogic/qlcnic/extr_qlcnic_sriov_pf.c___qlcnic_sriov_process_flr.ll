; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c___qlcnic_sriov_process_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c___qlcnic_sriov_process_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_vf_info = type { i32*, i32, i32, i32, i32, i32, %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLC_BC_VF_SOFT_FLR = common dso_local global i32 0, align 4
@QLC_BC_VF_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_vf_info*)* @__qlcnic_sriov_process_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qlcnic_sriov_process_flr(%struct.qlcnic_vf_info* %0) #0 {
  %2 = alloca %struct.qlcnic_vf_info*, align 8
  %3 = alloca %struct.qlcnic_adapter*, align 8
  store %struct.qlcnic_vf_info* %0, %struct.qlcnic_vf_info** %2, align 8
  %4 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %4, i32 0, i32 6
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_adapter* %6, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %7, i32 0, i32 5
  %9 = call i32 @qlcnic_sriov_cleanup_list(i32* %8)
  %10 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %10, i32 0, i32 4
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %14 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %13, i32 0, i32 3
  %15 = call i32 @qlcnic_sriov_cleanup_list(i32* %14)
  %16 = load i32, i32* @QLC_BC_VF_SOFT_FLR, align 4
  %17 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %18 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %24 = call i32 @qlcnic_sriov_del_tx_ctx(%struct.qlcnic_adapter* %22, %struct.qlcnic_vf_info* %23)
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %27 = call i32 @qlcnic_sriov_del_rx_ctx(%struct.qlcnic_adapter* %25, %struct.qlcnic_vf_info* %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %31 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %29, i32 0, i32 %32)
  %34 = load i32, i32* @QLC_BC_VF_FLR, align 4
  %35 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %36 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @QLC_BC_VF_SOFT_FLR, align 4
  %39 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %40 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %28
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %50 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %51 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @qlcnic_sriov_add_act_list_irqsave(i32 %48, %struct.qlcnic_vf_info* %49, i32* %52)
  %54 = load i32, i32* @QLC_BC_VF_SOFT_FLR, align 4
  %55 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %56 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %55, i32 0, i32 1
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %2, align 8
  %59 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %43, %28
  ret void
}

declare dso_local i32 @qlcnic_sriov_cleanup_list(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_del_tx_ctx(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_del_rx_ctx(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_add_act_list_irqsave(i32, %struct.qlcnic_vf_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
