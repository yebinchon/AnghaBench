; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mac.c_igb_get_bus_info_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mac.c_igb_get_bus_info_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_bus_info }
%struct.e1000_bus_info = type { i32, i32, i8*, i32 }

@e1000_bus_type_pci_express = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@e1000_bus_width_unknown = common dso_local global i32 0, align 4
@e1000_bus_speed_unknown = common dso_local global i8* null, align 8
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@e1000_bus_speed_2500 = common dso_local global i8* null, align 8
@e1000_bus_speed_5000 = common dso_local global i8* null, align 8
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_NLW_SHIFT = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_MASK = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_get_bus_info_pcie(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_bus_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_bus_info* %8, %struct.e1000_bus_info** %3, align 8
  %9 = load i32, i32* @e1000_bus_type_pci_express, align 4
  %10 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %14 = call i64 @igb_read_pcie_cap_reg(%struct.e1000_hw* %12, i32 %13, i32* %6)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @e1000_bus_width_unknown, align 4
  %19 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @e1000_bus_speed_unknown, align 8
  %22 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  br label %48

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %24
  %29 = load i8*, i8** @e1000_bus_speed_2500, align 8
  %30 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  br label %40

32:                                               ; preds = %24
  %33 = load i8*, i8** @e1000_bus_speed_5000, align 8
  %34 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %40

36:                                               ; preds = %24
  %37 = load i8*, i8** @e1000_bus_speed_unknown, align 8
  %38 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %32, %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PCI_EXP_LNKSTA_NLW_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %40, %17
  %49 = load i32, i32* @E1000_STATUS, align 4
  %50 = call i32 @rd32(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @E1000_STATUS_FUNC_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @E1000_STATUS_FUNC_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret i64 0
}

declare dso_local i64 @igb_read_pcie_cap_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
