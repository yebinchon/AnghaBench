; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_reset_eswitch_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_reset_eswitch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_npar_info = type { i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_esw_func_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@QLCNIC_PORT_DEFAULTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_ADD_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_npar_info*, i32)* @qlcnic_reset_eswitch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_reset_eswitch_config(%struct.qlcnic_adapter* %0, %struct.qlcnic_npar_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_npar_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_esw_func_cfg, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_npar_info* %1, %struct.qlcnic_npar_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @QLCNIC_PORT_DEFAULTS, align 4
  %10 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 7
  store i32 %15, i32* %16, align 4
  %17 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %38 = call i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter* %37, %struct.qlcnic_esw_func_cfg* %8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %3
  %44 = load i32, i32* @QLCNIC_ADD_VLAN, align 4
  %45 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %47 = call i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter* %46, %struct.qlcnic_esw_func_cfg* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %40
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter*, %struct.qlcnic_esw_func_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
