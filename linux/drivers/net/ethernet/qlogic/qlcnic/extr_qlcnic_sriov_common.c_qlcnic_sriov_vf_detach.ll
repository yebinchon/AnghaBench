; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.net_device*, %struct.qlcnic_hardware_context* }
%struct.net_device = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i64, %struct.qlcnic_intrpt_config* }
%struct.qlcnic_intrpt_config = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_sriov_vf_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_vf_detach(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca %struct.qlcnic_intrpt_config*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %3, align 8
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %12, align 8
  store %struct.qlcnic_intrpt_config* %13, %struct.qlcnic_intrpt_config** %4, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netif_device_detach(%struct.net_device* %21)
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %24 = call i32 @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter* %23)
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %26 = call i32 @qlcnic_83xx_disable_mbx_intr(%struct.qlcnic_adapter* %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i64 @netif_running(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @qlcnic_down(%struct.qlcnic_adapter* %31, %struct.net_device* %32)
  br label %34

34:                                               ; preds = %30, %1
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %41, i64 %42
  %44 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %45, i64 %46
  %48 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %49, i64 %50
  %52 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %58 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  ret void
}

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_disable_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
