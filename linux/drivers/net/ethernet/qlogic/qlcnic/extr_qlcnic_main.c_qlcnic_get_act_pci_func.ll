; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_get_act_pci_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_get_act_pci_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i64, i32, i32 }
%struct.qlcnic_pci_info = type { i32 }

@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_GBE_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_get_act_pci_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_act_pci_func(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlcnic_pci_info*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @QLCNIC_NIU_MAX_GBE_PORTS, align 4
  %22 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %26 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %27 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %24, %20
  store i32 0, i32* %2, align 4
  br label %54

29:                                               ; preds = %1
  %30 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %31 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %54

36:                                               ; preds = %29
  %37 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %38 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.qlcnic_pci_info* @kcalloc(i32 %39, i32 4, i32 %40)
  store %struct.qlcnic_pci_info* %41, %struct.qlcnic_pci_info** %5, align 8
  %42 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %43 = icmp ne %struct.qlcnic_pci_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %36
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %50 = call i32 @qlcnic_get_pci_info(%struct.qlcnic_adapter* %48, %struct.qlcnic_pci_info* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %52 = call i32 @kfree(%struct.qlcnic_pci_info* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %44, %35, %28
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.qlcnic_pci_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qlcnic_get_pci_info(%struct.qlcnic_adapter*, %struct.qlcnic_pci_info*) #1

declare dso_local i32 @kfree(%struct.qlcnic_pci_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
