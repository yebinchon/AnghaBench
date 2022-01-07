; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_tunn_set_pf_update_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_tunn_set_pf_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_tunnel_info }
%struct.qed_tunnel_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pf_update_tunnel_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_tunnel_info*, %struct.pf_update_tunnel_config*)* @qed_tunn_set_pf_update_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_tunn_set_pf_update_params(%struct.qed_hwfn* %0, %struct.qed_tunnel_info* %1, %struct.pf_update_tunnel_config* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_tunnel_info*, align 8
  %6 = alloca %struct.pf_update_tunnel_config*, align 8
  %7 = alloca %struct.qed_tunnel_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %5, align 8
  store %struct.pf_update_tunnel_config* %2, %struct.pf_update_tunnel_config** %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.qed_tunnel_info* %11, %struct.qed_tunnel_info** %7, align 8
  %12 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %13 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %14 = call i32 @qed_set_pf_update_tunn_mode(%struct.qed_tunnel_info* %12, %struct.qed_tunnel_info* %13, i32 0)
  %15 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %16 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %17 = call i32 @qed_set_tunn_cls_info(%struct.qed_tunnel_info* %15, %struct.qed_tunnel_info* %16)
  %18 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %19 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %20 = call i32 @qed_set_tunn_ports(%struct.qed_tunnel_info* %18, %struct.qed_tunnel_info* %19)
  %21 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %22 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %21, i32 0, i32 9
  %23 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %24 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %23, i32 0, i32 7
  %25 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %26 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %25, i32 0, i32 8
  %27 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %28 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %27, i32 0, i32 7
  %29 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %30 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %29, i32 0, i32 6
  %31 = call i32 @qed_set_ramrod_tunnel_param(i32* %22, i32* %24, i32* %26, i32* %28, i32* %30)
  %32 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %33 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %32, i32 0, i32 6
  %34 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %35 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %34, i32 0, i32 5
  %36 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %37 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %36, i32 0, i32 5
  %38 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %39 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %38, i32 0, i32 4
  %40 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %41 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %40, i32 0, i32 4
  %42 = call i32 @qed_set_ramrod_tunnel_param(i32* %33, i32* %35, i32* %37, i32* %39, i32* %41)
  %43 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %44 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %43, i32 0, i32 3
  %45 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %46 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %45, i32 0, i32 3
  %47 = call i32 @__qed_set_ramrod_tunnel_param(i32* %44, i32* %46)
  %48 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %49 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %48, i32 0, i32 2
  %50 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %51 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %50, i32 0, i32 2
  %52 = call i32 @__qed_set_ramrod_tunnel_param(i32* %49, i32* %51)
  %53 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %54 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %53, i32 0, i32 1
  %55 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %56 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %55, i32 0, i32 1
  %57 = call i32 @__qed_set_ramrod_tunnel_param(i32* %54, i32* %56)
  %58 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %59 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pf_update_tunnel_config*, %struct.pf_update_tunnel_config** %6, align 8
  %62 = getelementptr inbounds %struct.pf_update_tunnel_config, %struct.pf_update_tunnel_config* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
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
