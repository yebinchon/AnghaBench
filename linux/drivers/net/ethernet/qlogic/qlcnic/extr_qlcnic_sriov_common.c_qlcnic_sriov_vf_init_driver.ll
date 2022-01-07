; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_init_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_init_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.TYPE_2__*, i32 }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_ADAPTER_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HAL Version: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_vf_init_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_vf_init_driver(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlcnic_info, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = call i32 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter* %10, %struct.qlcnic_info* %5, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %21, %struct.qlcnic_info* %5, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %16
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = call i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %76

38:                                               ; preds = %31
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = call i32 @qlcnic_sriov_vf_cfg_buff_desc(%struct.qlcnic_adapter* %39)
  %41 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 0
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %51, align 8
  %53 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %59 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %63 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %67 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %71 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %38, %35, %28, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_vf_cfg_buff_desc(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
