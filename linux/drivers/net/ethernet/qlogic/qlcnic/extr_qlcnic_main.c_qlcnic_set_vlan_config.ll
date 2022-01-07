; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_set_vlan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_set_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i64, i32 }
%struct.qlcnic_esw_func_cfg = type { i64, i64 }

@QLCNIC_TAGGING_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_set_vlan_config(%struct.qlcnic_adapter* %0, %struct.qlcnic_esw_func_cfg* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_esw_func_cfg*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_esw_func_cfg* %1, %struct.qlcnic_esw_func_cfg** %4, align 8
  %5 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %6 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @QLCNIC_TAGGING_ENABLED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @QLCNIC_TAGGING_ENABLED, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %16, %9
  %23 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %43

38:                                               ; preds = %22
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
