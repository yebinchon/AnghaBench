; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_vport_update_sge_tpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_vport_update_sge_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.vport_update_ramrod_data = type { %struct.TYPE_2__, %struct.eth_vport_tpa_param }
%struct.TYPE_2__ = type { i64, i64 }
%struct.eth_vport_tpa_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_sge_tpa_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, %struct.qed_sge_tpa_params*)* @qed_sp_vport_update_sge_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_sp_vport_update_sge_tpa(%struct.qed_hwfn* %0, %struct.vport_update_ramrod_data* %1, %struct.qed_sge_tpa_params* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.vport_update_ramrod_data*, align 8
  %6 = alloca %struct.qed_sge_tpa_params*, align 8
  %7 = alloca %struct.eth_vport_tpa_param*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.vport_update_ramrod_data* %1, %struct.vport_update_ramrod_data** %5, align 8
  store %struct.qed_sge_tpa_params* %2, %struct.qed_sge_tpa_params** %6, align 8
  %8 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %9 = icmp ne %struct.qed_sge_tpa_params* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %12 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %15 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %18 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %22 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %25 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  %27 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %28 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %27, i32 0, i32 1
  store %struct.eth_vport_tpa_param* %28, %struct.eth_vport_tpa_param** %7, align 8
  %29 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %30 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %33 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %35 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %38 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %40 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %43 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %45 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %48 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %50 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %53 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %56 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %59 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %61 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %64 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %66 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %69 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %71 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %74 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %76 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %79 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %81 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %84 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %86 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %89 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.qed_sge_tpa_params*, %struct.qed_sge_tpa_params** %6, align 8
  %91 = getelementptr inbounds %struct.qed_sge_tpa_params, %struct.qed_sge_tpa_params* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %7, align 8
  %94 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %20, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
