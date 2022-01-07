; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_stmmac_pci_find_phy_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_stmmac_pci_find_phy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dmi_system_id = type { %struct.stmmac_pci_dmi_data* }
%struct.stmmac_pci_dmi_data = type { i64, %struct.stmmac_pci_func_data* }
%struct.stmmac_pci_func_data = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.dmi_system_id*)* @stmmac_pci_find_phy_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_pci_find_phy_addr(%struct.pci_dev* %0, %struct.dmi_system_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.dmi_system_id*, align 8
  %6 = alloca %struct.stmmac_pci_func_data*, align 8
  %7 = alloca %struct.stmmac_pci_dmi_data*, align 8
  %8 = alloca %struct.dmi_system_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.dmi_system_id* %1, %struct.dmi_system_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PCI_FUNC(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %16 = call %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id* %15)
  store %struct.dmi_system_id* %16, %struct.dmi_system_id** %8, align 8
  %17 = load %struct.dmi_system_id*, %struct.dmi_system_id** %8, align 8
  %18 = icmp ne %struct.dmi_system_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.dmi_system_id*, %struct.dmi_system_id** %8, align 8
  %24 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %23, i32 0, i32 0
  %25 = load %struct.stmmac_pci_dmi_data*, %struct.stmmac_pci_dmi_data** %24, align 8
  store %struct.stmmac_pci_dmi_data* %25, %struct.stmmac_pci_dmi_data** %7, align 8
  %26 = load %struct.stmmac_pci_dmi_data*, %struct.stmmac_pci_dmi_data** %7, align 8
  %27 = getelementptr inbounds %struct.stmmac_pci_dmi_data, %struct.stmmac_pci_dmi_data* %26, i32 0, i32 1
  %28 = load %struct.stmmac_pci_func_data*, %struct.stmmac_pci_func_data** %27, align 8
  store %struct.stmmac_pci_func_data* %28, %struct.stmmac_pci_func_data** %6, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %46, %22
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.stmmac_pci_dmi_data*, %struct.stmmac_pci_dmi_data** %7, align 8
  %32 = getelementptr inbounds %struct.stmmac_pci_dmi_data, %struct.stmmac_pci_dmi_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.stmmac_pci_func_data*, %struct.stmmac_pci_func_data** %6, align 8
  %37 = getelementptr inbounds %struct.stmmac_pci_func_data, %struct.stmmac_pci_func_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.stmmac_pci_func_data*, %struct.stmmac_pci_func_data** %6, align 8
  %43 = getelementptr inbounds %struct.stmmac_pci_func_data, %struct.stmmac_pci_func_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  %49 = load %struct.stmmac_pci_func_data*, %struct.stmmac_pci_func_data** %6, align 8
  %50 = getelementptr inbounds %struct.stmmac_pci_func_data, %struct.stmmac_pci_func_data* %49, i32 1
  store %struct.stmmac_pci_func_data* %50, %struct.stmmac_pci_func_data** %6, align 8
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %41, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
