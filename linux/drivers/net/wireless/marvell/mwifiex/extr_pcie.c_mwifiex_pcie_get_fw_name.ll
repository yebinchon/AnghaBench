; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_get_fw_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_get_fw_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCIE8766_DEFAULT_FW_NAME = common dso_local global i32 0, align 4
@PCIE8897_A0_FW_NAME = common dso_local global i32 0, align 4
@PCIE8897_B0_FW_NAME = common dso_local global i32 0, align 4
@PCIE8897_DEFAULT_FW_NAME = common dso_local global i32 0, align 4
@PCIE8997_A1 = common dso_local global i32 0, align 4
@CHIP_MAGIC_VALUE = common dso_local global i32 0, align 4
@CHIP_VER_PCIEUART = common dso_local global i32 0, align 4
@PCIEUART8997_FW_NAME_V4 = common dso_local global i32 0, align 4
@PCIEUSB8997_FW_NAME_V4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_pcie_get_fw_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_pcie_get_fw_name(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 1
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %6, align 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %11 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %85 [
    i32 130, label %15
    i32 129, label %21
    i32 128, label %48
  ]

15:                                               ; preds = %1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PCIE8766_DEFAULT_FW_NAME, align 4
  %20 = call i32 @strcpy(i32 %18, i32 %19)
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %22, i32 3160, i32 -2134900736)
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %25 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %24, i32 3160, i32* %3)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 65280
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %41 [
    i32 132, label %29
    i32 131, label %35
  ]

29:                                               ; preds = %21
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PCIE8897_A0_FW_NAME, align 4
  %34 = call i32 @strcpy(i32 %32, i32 %33)
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PCIE8897_B0_FW_NAME, align 4
  %40 = call i32 @strcpy(i32 %38, i32 %39)
  br label %47

41:                                               ; preds = %21
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PCIE8897_DEFAULT_FW_NAME, align 4
  %46 = call i32 @strcpy(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %35, %29
  br label %86

48:                                               ; preds = %1
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %50 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %49, i32 8, i32* %3)
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %52 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %51, i32 3280, i32* %4)
  %53 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %54 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %53, i32 3284, i32* %5)
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 7
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 255
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @PCIE8997_A1, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %48
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CHIP_MAGIC_VALUE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CHIP_VER_PCIEUART, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PCIEUART8997_FW_NAME_V4, align 4
  %77 = call i32 @strcpy(i32 %75, i32 %76)
  br label %84

78:                                               ; preds = %68, %64, %48
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PCIEUSB8997_FW_NAME_V4, align 4
  %83 = call i32 @strcpy(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %86

85:                                               ; preds = %1
  br label %86

86:                                               ; preds = %85, %84, %47, %15
  ret void
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
