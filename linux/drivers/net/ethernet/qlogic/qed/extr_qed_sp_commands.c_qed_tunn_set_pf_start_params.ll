; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_tunn_set_pf_start_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_tunn_set_pf_start_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_tunnel_info }
%struct.qed_tunnel_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pf_start_tunnel_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_tunnel_info*, %struct.pf_start_tunnel_config*)* @qed_tunn_set_pf_start_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_tunn_set_pf_start_params(%struct.qed_hwfn* %0, %struct.qed_tunnel_info* %1, %struct.pf_start_tunnel_config* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_tunnel_info*, align 8
  %6 = alloca %struct.pf_start_tunnel_config*, align 8
  %7 = alloca %struct.qed_tunnel_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %5, align 8
  store %struct.pf_start_tunnel_config* %2, %struct.pf_start_tunnel_config** %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.qed_tunnel_info* %11, %struct.qed_tunnel_info** %7, align 8
  %12 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %13 = icmp ne %struct.qed_tunnel_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %62

15:                                               ; preds = %3
  %16 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %17 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %18 = call i32 @qed_set_pf_update_tunn_mode(%struct.qed_tunnel_info* %16, %struct.qed_tunnel_info* %17, i32 1)
  %19 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %20 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %21 = call i32 @qed_set_tunn_cls_info(%struct.qed_tunnel_info* %19, %struct.qed_tunnel_info* %20)
  %22 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %23 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %24 = call i32 @qed_set_tunn_ports(%struct.qed_tunnel_info* %22, %struct.qed_tunnel_info* %23)
  %25 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %26 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %25, i32 0, i32 8
  %27 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %28 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %27, i32 0, i32 6
  %29 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %30 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %29, i32 0, i32 7
  %31 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %32 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %31, i32 0, i32 6
  %33 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %34 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %33, i32 0, i32 5
  %35 = call i32 @qed_set_ramrod_tunnel_param(i32* %26, i32* %28, i32* %30, i32* %32, i32* %34)
  %36 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %37 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %36, i32 0, i32 5
  %38 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %39 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %38, i32 0, i32 4
  %40 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %41 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %40, i32 0, i32 4
  %42 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %43 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %42, i32 0, i32 3
  %44 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %45 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %44, i32 0, i32 3
  %46 = call i32 @qed_set_ramrod_tunnel_param(i32* %37, i32* %39, i32* %41, i32* %43, i32* %45)
  %47 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %48 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %47, i32 0, i32 2
  %49 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %50 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %49, i32 0, i32 2
  %51 = call i32 @__qed_set_ramrod_tunnel_param(i32* %48, i32* %50)
  %52 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %53 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %52, i32 0, i32 1
  %54 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %55 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %54, i32 0, i32 1
  %56 = call i32 @__qed_set_ramrod_tunnel_param(i32* %53, i32* %55)
  %57 = load %struct.pf_start_tunnel_config*, %struct.pf_start_tunnel_config** %6, align 8
  %58 = getelementptr inbounds %struct.pf_start_tunnel_config, %struct.pf_start_tunnel_config* %57, i32 0, i32 0
  %59 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %60 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %59, i32 0, i32 0
  %61 = call i32 @__qed_set_ramrod_tunnel_param(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @qed_set_pf_update_tunn_mode(%struct.qed_tunnel_info*, %struct.qed_tunnel_info*, i32) #1

declare dso_local i32 @qed_set_tunn_cls_info(%struct.qed_tunnel_info*, %struct.qed_tunnel_info*) #1

declare dso_local i32 @qed_set_tunn_ports(%struct.qed_tunnel_info*, %struct.qed_tunnel_info*) #1

declare dso_local i32 @qed_set_ramrod_tunnel_param(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__qed_set_ramrod_tunnel_param(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
